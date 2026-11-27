#!/usr/bin/env bash
set -euo pipefail

APK="${RUNNER_TEMP:?RUNNER_TEMP no está definido}/CodigoANK-vault-ci.apk"
PKG="com.ank.codigoank"
SDK_ROOT="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-/usr/local/lib/android/sdk}}"

if [[ ! -f "$APK" ]]; then
  echo "No se encontró la APK temporal: $APK"
  exit 1
fi

AAPT="$(find "$SDK_ROOT/build-tools" -type f -name aapt -print | sort -V | tail -n 1)"
if [[ -z "$AAPT" || ! -x "$AAPT" ]]; then
  echo "No se encontró aapt en el SDK: $SDK_ROOT"
  printf 'ANDROID_HOME=%s\nANDROID_SDK_ROOT=%s\n' "${ANDROID_HOME:-}" "${ANDROID_SDK_ROOT:-}"
  exit 1
fi

DETECTED_PACKAGE="$("$AAPT" dump badging "$APK" | sed -n "s/^package: name='\([^']*\)'.*/\1/p" | head -n 1)"
if [[ "$DETECTED_PACKAGE" != "$PKG" ]]; then
  echo "Application ID inesperado: $DETECTED_PACKAGE"
  exit 1
fi

echo "APK verificada: $PKG"
timeout 90s adb wait-for-device
timeout 120s adb install -r "$APK"
timeout 30s adb shell pm path "$PKG"
adb logcat -c

launch_app() {
  timeout 60s adb shell monkey -p "$PKG" 1
}

wait_marker() {
  local expected="$1"
  local attempt
  for attempt in $(seq 1 90); do
    if adb logcat -d -t 5000 | grep -F "ANK_VAULT_CI:$expected" >/dev/null; then
      echo "Android WebView reportó $expected"
      return 0
    fi
    if adb logcat -d -t 5000 | grep -F "ANK_VAULT_CI:FAIL_" >/dev/null; then
      adb logcat -d -t 5000 | grep -E "ANK_VAULT_CI:|FATAL EXCEPTION|AndroidRuntime" | tail -n 120 || true
      return 1
    fi
    sleep 2
  done
  adb logcat -d -t 5000 | grep -E "ANK_VAULT_CI:|FATAL EXCEPTION|AndroidRuntime" | tail -n 120 || true
  adb shell dumpsys activity activities | grep -E "ResumedActivity|mResumedActivity" | tail -n 10 || true
  echo "No se recibió marcador $expected antes del límite"
  return 1
}

launch_app
wait_marker STAGE1_OK
timeout 30s adb shell am force-stop "$PKG"
launch_app
wait_marker STAGE2_OK

echo "PASS: securePut, secureGet, persistencia tras force-stop, secureRemove y lectura vacía en ApiVault real."

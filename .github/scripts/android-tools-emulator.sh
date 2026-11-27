#!/usr/bin/env bash
set -euo pipefail

APK="$RUNNER_TEMP/CodigoANK-tools-ci.apk"
PKG="com.ank.codigoank"
SDK_ROOT="$ANDROID_HOME"

test -s "$APK"
AAPT="$(find "$SDK_ROOT/build-tools" -type f -name aapt -print | sort -V | tail -n 1)"
test -x "$AAPT"
DETECTED_PACKAGE="$("$AAPT" dump badging "$APK" | grep -o "package: name='[^']*'" | cut -d"'" -f2)"
test "$DETECTED_PACKAGE" = "$PKG"

timeout 90s adb wait-for-device
timeout 120s adb install -r "$APK"
adb logcat -c
timeout 60s adb shell monkey -p "$PKG" 1

wait_marker() {
  local expected="$1"
  local attempt
  for attempt in $(seq 1 120); do
    if adb logcat -d -t 8000 | grep -F "ANK_TOOLS_CI:$expected" >/dev/null; then
      adb logcat -d -t 8000 | grep -F "ANK_TOOLS_CI:$expected" | tail -n 5
      return 0
    fi
    if adb logcat -d -t 8000 | grep -F "ANK_TOOLS_CI:FAIL" >/dev/null; then
      adb logcat -d -t 8000 | grep -E "ANK_TOOLS_CI:|FATAL EXCEPTION|AndroidRuntime" | tail -n 160 || true
      return 1
    fi
    sleep 2
  done
  adb logcat -d -t 8000 | grep -E "ANK_TOOLS_CI:|FATAL EXCEPTION|AndroidRuntime" | tail -n 160 || true
  echo "No se recibió marcador $expected antes del límite."
  return 1
}

wait_marker PASS
echo "PASS: ejecutores Cordova, backup/restore y rollback tras escritura parcial."

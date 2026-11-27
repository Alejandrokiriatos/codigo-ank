#!/usr/bin/env python3
from pathlib import Path

root = Path("fuente-completa/decoded/assets/www")
panel = root / "ank/ai.js"
index = root / "index.html"

source = panel.read_text(encoding="utf-8")
marker = """  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', iniciar);
  else iniciar();
})();"""
if source.count(marker) != 1:
    raise SystemExit("No se encontró exactamente una posición para el harness interno de herramientas.")

hook = r"""
  if (window.__ANK_AI_CI_TEST__ === true) {
    window.__ANK_AI_CI_TOOLS__ = {
      waitReady: function (timeoutMs) {
        return new Promise(function (resolve, reject) {
          var started = Date.now();
          var timer = setInterval(function () {
            if (st.prefix && window.system && typeof window.system.writeText === 'function' &&
                (window.resolveLocalFileSystemURL || window.resolveLocalFileSystemURI)) {
              clearInterval(timer);
              resolve(st.prefix);
              return;
            }
            if (Date.now() - started > (Number(timeoutMs) || 45000)) {
              clearInterval(timer);
              reject(new Error('Cordova file tools did not become ready'));
            }
          }, 100);
        });
      },
      setupProject: function (name) {
        return this.waitReady(45000).then(function () {
          st.project = window.ANKAIEngine.normalizarRutaProyecto(name, false);
          var root = st.prefix + '/public/proyectos/' + st.project;
          return conSistema('mkdirs', root).then(function () {
            return { project: st.project, root: root };
          });
        });
      },
      execute: function (call, context) {
        return ejecutarHerramientaProyecto(call, context || {});
      },
      backup: function (call) {
        return backupAntesDeHerramienta(call).then(function (snapshot) {
          return { created: !!(snapshot && snapshot.id), id: snapshot && snapshot.id ? snapshot.id : '' };
        });
      },
      readState: function (relative, maxBytes) {
        var target = rutaLocalHerramienta(relative, false);
        return leerEstadoArchivoHerramienta(target.absolute, maxBytes || 262144);
      },
      failWriteOnce: function (relative) {
        var target = rutaLocalHerramienta(relative, false);
        var sys = window.system;
        var original = sys.writeText;
        var used = false;
        if (typeof original !== 'function') throw new Error('System.writeText is unavailable');
        sys.writeText = function (path, content, success, error) {
          if (used || path !== target.absolute) return original.apply(sys, arguments);
          used = true;
          sys.writeText = original;
          original.call(sys, path, 'ANK_CI_PARTIAL_WRITE', function () {
            if (typeof error === 'function') error({ message: 'ANK_CI_FORCED_WRITE_FAILURE' });
          }, function (nativeError) {
            if (typeof error === 'function') error(nativeError);
          });
        };
        return true;
      }
    };
    document.dispatchEvent(new Event('ank-ai-ci-tools-ready'));
  }
"""
source = source.replace(marker, hook + "\n" + marker)
panel.write_text(source, encoding="utf-8")

html = index.read_text(encoding="utf-8")
if html.count("</body>") != 1:
    raise SystemExit("No se encontró un único cierre body para el harness.")
harness = r"""
<script>
(function () {
  "use strict";
  window.__ANK_AI_CI_TEST__ = true;
  var finished = false;
  function report(code, detail) {
    if (finished) return;
    finished = true;
    console.log("ANK_TOOLS_CI:" + code + (detail ? ":" + String(detail).slice(0, 180) : ""));
    document.documentElement.setAttribute("data-ank-tools-ci", code);
  }
  function fail(error) {
    report("FAIL", error && error.message ? error.message : error);
  }
  function ensure(value, message) {
    if (!value) throw new Error(message);
  }
  window.addEventListener("ank-ai-ci-tools-ready", function () {
    (async function () {
      var api = window.__ANK_AI_CI_TOOLS__;
      ensure(api, "CI tool bridge missing");
      await api.waitReady(45000);
      var project = "ank-ci-tools-" + Date.now().toString(36);
      await api.setupProject(project);
      var original = "ANK_CI_ORIGINAL_VALUE\nANK_CI_SEARCH_MARKER";
      var write = await api.execute({
        name: "project.write_file",
        arguments: { path: "probe.txt", content: original }
      });
      ensure(write && write.written, "New file write failed");

      var listing = await api.execute({
        name: "project.list_files",
        arguments: { path: ".", maxDepth: 3 }
      });
      ensure(listing.files.some(function (item) { return item.path === "probe.txt" && item.type === "file"; }),
        "Directory listing did not return probe.txt");

      var read = await api.execute({
        name: "project.read_file",
        arguments: { path: "probe.txt", maxBytes: 10000 }
      });
      ensure(read.content === original && !!read.digest, "File read or digest mismatch");

      var search = await api.execute({
        name: "project.search_files",
        arguments: { query: "ANK_CI_SEARCH_MARKER", path: ".", maxResults: 10 }
      });
      ensure(search.matches.some(function (match) { return match.path === "probe.txt"; }),
        "Text search did not find the fixture");

      var snapshot = await api.execute({
        name: "project.create_backup",
        arguments: { path: "probe.txt" }
      });
      ensure(!!snapshot.backupId, "Backup tool did not return an ID");

      var updateBackup = await api.backup({
        tool: "project.write_file",
        arguments: { path: "probe.txt" }
      });
      ensure(updateBackup.created && updateBackup.id, "Pre-write backup failed");
      await api.execute({
        name: "project.write_file",
        arguments: { path: "probe.txt", content: "ANK_CI_UPDATED_VALUE", expectedDigest: read.digest }
      }, { backupId: updateBackup.id });
      var changed = await api.execute({
        name: "project.read_file",
        arguments: { path: "probe.txt", maxBytes: 10000 }
      });
      ensure(changed.content === "ANK_CI_UPDATED_VALUE", "Updated value was not persisted");

      var restoreBackup = await api.backup({
        tool: "project.restore_backup",
        arguments: { backupId: snapshot.backupId }
      });
      ensure(restoreBackup.created && restoreBackup.id, "Pre-restore backup failed");
      await api.execute({
        name: "project.restore_backup",
        arguments: { backupId: snapshot.backupId }
      }, { backupId: restoreBackup.id });
      var restored = await api.execute({
        name: "project.read_file",
        arguments: { path: "probe.txt", maxBytes: 10000 }
      });
      ensure(restored.content === original, "Snapshot restore did not recover original content");

      var failureBackup = await api.backup({
        tool: "project.write_file",
        arguments: { path: "probe.txt" }
      });
      api.failWriteOnce("probe.txt");
      var sawWriteFailure = false;
      try {
        await api.execute({
          name: "project.write_file",
          arguments: { path: "probe.txt", content: "SHOULD_NOT_REMAIN", expectedDigest: restored.digest }
        }, { backupId: failureBackup.id });
      } catch (error) {
        sawWriteFailure = /restauró automáticamente/i.test(String(error && error.message || error));
      }
      ensure(sawWriteFailure, "Partial write failure did not report automatic restoration");
      var rollbackRead = await api.execute({
        name: "project.read_file",
        arguments: { path: "probe.txt", maxBytes: 10000 }
      });
      ensure(rollbackRead.content === original, "Automatic rollback did not restore the original content");

      await api.execute({
        name: "project.write_file",
        arguments: { path: "empty.txt", content: "" }
      });
      var emptyRead = await api.execute({
        name: "project.read_file",
        arguments: { path: "empty.txt", maxBytes: 10000 }
      });
      ensure(emptyRead.content === "", "Empty file could not be read");
      var deleteBackup = await api.backup({
        tool: "project.delete_file",
        arguments: { path: "empty.txt" }
      });
      await api.execute({
        name: "project.delete_file",
        arguments: { path: "empty.txt", expectedDigest: emptyRead.digest }
      }, { backupId: deleteBackup.id });
      var emptyState = await api.readState("empty.txt");
      ensure(!emptyState.exists, "Delete did not remove the empty file");

      var secretFixture = '{"api_key":"ANK_CI_SECRET_SHOULD_NOT_ECHO"}';
      await api.execute({
        name: "project.write_file",
        arguments: { path: "secret-fixture.json", content: secretFixture }
      });
      var safeRead = await api.execute({
        name: "project.read_file",
        arguments: { path: "secret-fixture.json", maxBytes: 10000 }
      });
      ensure(!safeRead.content.includes("ANK_CI_SECRET_SHOULD_NOT_ECHO") &&
        safeRead.content.includes("[CLAVE OCULTA]"), "Secret redaction did not protect read output");

      var traversalRejected = false;
      try {
        await api.execute({
          name: "project.read_file",
          arguments: { path: "../outside-ank-ci.txt" }
        });
      } catch (_) {
        traversalRejected = true;
      }
      ensure(traversalRejected, "Path traversal was not rejected");

      report("PASS", "list/read/search/write/backup/restore/delete/empty/redaction/traversal/rollback");
    })().catch(fail);
  }, { once: true });
})();
</script>
"""
index.write_text(html.replace("</body>", harness + "\n</body>"), encoding="utf-8")
print("Temporary APK harness injected; no diagnostic API is added to tracked runtime assets.")

import "dart:html";

import "package:github/browser.dart";
import "package:github/markdown.dart" as markdown;

void init(String script, {void onReady()}) {
  var stopwatch = new Stopwatch();

  if (onReady != null) {
    document.onReadyStateChange.listen((event) {
      if (document.readyState == ReadyState.COMPLETE) {
        stopwatch.stop();
        print(
            "Document Finished Loading in ${stopwatch.elapsedMilliseconds}ms");
        onReady();
      }
    });
  }

  document.querySelector("#view-source").onClick.listen((_) {
    var popup = window.open("view_source.html", "View Source");
    String code;

    var fetched = false;
    var ready = false;

    void sendCode() {
      popup
          .postMessage({"command": "code", "code": code}, window.location.href);
    }

    window.addEventListener("message", (event) {
      if (event.data['command'] == "ready") {
        ready = true;
        if (fetched) {
          sendCode();
        }
      }
    });

    HttpRequest.getString(script).then((c) {
      code = c;
      fetched = true;
      if (ready) {
        sendCode();
      }
    });
  });
}

Map<String, String> queryString =
    Uri.parse(window.location.href).queryParameters;

GitHub _createGitHub() {
  initGitHub();
  return new GitHub(
      auth: queryString["token"] != null
          ? new Authentication.withToken(queryString["token"])
          : new Authentication.anonymous());
}

GitHub github = _createGitHub();

import "dart:async";
import "dart:html";

import "package:github/browser.dart";

/// Wires up a listener to a button with an id of view-source,
/// if it exists, to show the script source
/// If you don't care about showing the source, or don't have a
/// view source button, then you don't need to call this method
Future<void> initViewSourceButton(String script) async {
  // query the DOM for the view source button, handle clicks
  document.querySelector("#view-source")?.onClick?.listen((_) {
    var popup = window.open("view_source.html?script=$script", "View Source");
    String code;

    var fetched = false;
    var ready = false;

    void sendCode() {
      popup
          .postMessage({"command": "code", "code": code}, window.location.href);
    }

    window.addEventListener("message", (event) {
      if (event is MessageEvent) {
        if (event.data['command'] == "ready") {
          ready = true;
          if (fetched) {
            sendCode();
          }
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

/// Gets the github token from the "token" query string param,
/// falling back to getting it from session storage.
/// If it is not in either, it will be null
String token = queryString["token"] ?? window.sessionStorage['token'];

GitHub _createGitHub() {
  return new GitHub(
      auth: token != null
          ? new Authentication.withToken(token)
          : new Authentication.anonymous());
}

GitHub github = _createGitHub();

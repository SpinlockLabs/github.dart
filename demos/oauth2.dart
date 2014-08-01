import "dart:html";

import "package:github/browser.dart";
import "common.dart";

void main() {
  var url = window.location.href;
  var flow = new OAuth2Flow(
      "ff718b16cbfc71defcba",
      "a0c004e014feed76bdd659fcef0445e8f632c236",
      redirectUri: url,
      scopes: [
        "user:email"
      ]
  );
  
  var params = {};
  
  if (!url.contains("?")) {
    window.location.href = flow.createAuthorizeUrl();
  } else {
    params = Uri.splitQueryString(url.substring(url.indexOf("?") + 1));
  }
  
  initGitHub();
  
  init("oauth2.dart", onReady: () {
    flow.exchange(params['code']).then((response) {
      loadUsername(response.token);
    });
  });
}

void loadUsername(String token) {
  var github = new GitHub(auth: new Authentication.withToken(token));
  github.currentUser().then((user) {
    querySelector("#username").setInnerHtml("Hello, ${user.name}");
  });
}
import "dart:html";
import "dart:js";

import "package:github/browser.dart";
import "common.dart";

GitHub github;
DivElement $chart;

void main() {
  initGitHub();
  init("languages.dart", onReady: () {
    $chart = querySelector("#chart");
    loadRepository();
  });
}

void loadRepository() {
  var user = "dart-lang";
  var reponame = "bleeding_edge";
  var token = "5fdec2b77527eae85f188b7b2bfeeda170f26883";
  var url = window.location.href;

  if (url.contains("?")) {
    var params = Uri.splitQueryString(url.substring(url.indexOf('?') + 1));
    if (params.containsKey("user")) {
      user = params["user"];
    }

    if (params.containsKey("token")) {
      token = params["token"];
    }

    if (params.containsKey("repo")) {
      reponame = params["repo"];
    }
  }

  github = new GitHub(auth: new Authentication.withToken(token));

  github.languages(new RepositorySlug(user, reponame)).then((breakdown) {
    document.getElementById("name").setInnerHtml("${user}/${reponame}");
    context.callMethod("drawChart", [new JsArray.from(breakdown.toList().map((it) => new JsArray.from(it)))]);
  });
}

import "dart:html";

import "package:github/browser.dart";
import "common.dart";

GitHub github;
DivElement $stars;

void main() {
  initGitHub();
  init("stars.dart", onReady: () {
    $stars = querySelector("#stars");
    loadStars();
  });
}

void loadStars() {
  var user = "DirectMyFile";
  var repo = "github.dart";
  var token = "5fdec2b77527eae85f188b7b2bfeeda170f26883";

  var params = queryString;
  
  if (params.containsKey("user")) {
    user = params["user"];
  }

  if (params.containsKey("repo")) {
    repo = params["repo"];
  }

  if (params.containsKey("token")) {
    token = params["token"];
  }

  github = new GitHub(auth: new Authentication.withToken(token));

  querySelector("#title").appendText(" for ${user}/${repo}");

  github.activity.listStargazers(new RepositorySlug(user, repo)).listen((stargazer) {
    var h = new DivElement();
    h.classes.add("box");
    h.classes.add("user");
    h.style.textAlign = "center";
    h.append(new ImageElement(src: stargazer.avatarUrl, width: 64, height: 64)..classes.add("avatar"));
    h.append(new AnchorElement(href: stargazer.htmlUrl)..append(new ParagraphElement()..text = stargazer.login));
    $stars.append(h);
  }).onDone(() {
    querySelector("#total").appendText(querySelectorAll(".user").length.toString() + " stars");
  });
}

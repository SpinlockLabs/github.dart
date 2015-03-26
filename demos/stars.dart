import "dart:html";

import "package:github/browser.dart";
import "common.dart";

DivElement $stars;

void main() {
  init("stars.dart", onReady: () {
    $stars = querySelector("#stars");
    loadStars();
  });
}

void loadStars() {
  var user = "DirectMyFile";
  var repo = "github.dart";

  if (queryString.containsKey("user")) {
    user = queryString["user"];
  }

  if (queryString.containsKey("repo")) {
    repo = queryString["repo"];
  }

  querySelector("#title").appendText(" for ${user}/${repo}");

  github.activity
      .listStargazers(new RepositorySlug(user, repo))
      .listen((stargazer) {
    var h = new DivElement();
    h.classes.add("box");
    h.classes.add("user");
    h.style.textAlign = "center";
    h.append(new ImageElement(src: stargazer.avatarUrl, width: 64, height: 64)
      ..classes.add("avatar"));
    h.append(new AnchorElement(href: stargazer.htmlUrl)
      ..append(new ParagraphElement()..text = stargazer.login));
    $stars.append(h);
  }).onDone(() {
    querySelector("#total").appendText(
        querySelectorAll(".user").length.toString() + " stars");
  });
}

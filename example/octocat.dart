import "dart:html";

import "dart:math" show Random;

import "package:github/browser.dart";

import "common.dart";

GitHub github;
DivElement $octocat;

Random random = new Random();

void main() {
  initGitHub();
  init("octocat.dart", onReady: () {
    github = new GitHub();
    $octocat = querySelector("#octocat");
    loadCat();
  });
}

void loadCat() {
  github.misc.listOctodex(cors: true).toList().then((cats) {
    print("${cats.length} octocats");
    var index = random.nextInt(cats.length);
    var cat = cats[index];
    print("Selected Octocat at ${index} (${cat.name})");
    $octocat.appendHtml("""
    <h2>${cat.name}</h2>
    <a class="center" href="${cat.url}"><img src="${cat.image}"></img></a>
    """);
  });
}

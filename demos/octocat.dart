import "dart:html";

import "dart:math" show Random;

import "package:github/browser.dart";

import "common.dart";

DivElement $octocat;

Random random = new Random();

void main() {
  init("octocat.dart", onReady: () {
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

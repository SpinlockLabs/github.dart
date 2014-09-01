import "dart:html";

import "package:github/browser.dart";

import "common.dart";

GitHub github;
DivElement $zen;

void main() {
  init("readme.dart", onReady: () {
    github = createGitHubClient();
    $zen = querySelector("#zen");
    loadZen();
  });
}

void loadZen() {
  github.zen().then((zen) => $zen.appendText(zen));
}

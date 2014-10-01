import "dart:html";

import "package:github/browser.dart";

import "common.dart";

GitHub github;
DivElement $zen;

void main() {
  init("zen.dart", onReady: () {
    github = createGitHubClient();
    $zen = querySelector("#zen");
    loadZen();
  });
}

void loadZen() {
  github.misc.zen().then((zen) => $zen.appendText(zen));
}

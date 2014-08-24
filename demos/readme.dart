import "dart:html";

import "package:github/browser.dart";

import "common.dart";

GitHub github;
DivElement $readme;

void main() {
  initGitHub();
  init("readme.dart", onReady: () {
    github = new GitHub();
    $readme = querySelector("#readme");
    loadReadme();
  });
}

void loadReadme() {
  github.readme(new RepositorySlug("DirectMyFile", "github.dart"))
    .then((file) => file.renderMarkdown())
    .then((html) => $readme.appendHtml(html));
}

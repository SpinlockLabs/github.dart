import "dart:html";

import "package:github/browser.dart";

import "common.dart";

DivElement $readme;

void main() {
  init("readme.dart", onReady: () {
    $readme = querySelector("#readme");
    loadReadme();
  });
}

void loadReadme() {
  github.repositories
      .getReadme(new RepositorySlug("DirectMyFile", "github.dart"))
      .then((file) => github.misc.renderMarkdown(file.content))
      .then((html) =>
          $readme.appendHtml(html, validator: NodeTreeSanitizer.trusted));
}

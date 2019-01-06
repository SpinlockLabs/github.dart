import "dart:html";

import "package:github/browser.dart";

import "common.dart";

DivElement readmeDiv;

Future<void> main() async {
  await initViewSourceButton("readme.dart");
  readmeDiv = querySelector("#readme");
  loadReadme();
}

void loadReadme() {
  github.repositories
      .getReadme(new RepositorySlug("DirectMyFile", "github.dart"))
      .then((file) => github.misc.renderMarkdown(file.content))
      .then((html) =>
          readmeDiv.appendHtml(html, treeSanitizer: NodeTreeSanitizer.trusted));
}

import "dart:html";

import "package:github/browser.dart";

import "common.dart";

GitHub github;
DivElement $releases;

void main() {
  initGitHub();
  init("releases.dart", onReady: () {
    github = new GitHub();
    $releases = querySelector("#releases");
    loadReleases();
  });
}

void loadReleases() {
  github.repositories
      .listReleases(new RepositorySlug("twbs", "bootstrap"))
      .toList()
      .then((releases) {
    for (var release in releases) {
      $releases.appendHtml("""
      <div class="repo box" id="release-${release.id}">
        <h1>${release.name}</h1>
      </div>
      """);
      var rel = $releases.querySelector("#release-${release.id}");
      void append(String key, value) {
        if (value == null) return;
        rel.appendHtml("<br/><b>${key}</b>: ${value}");
      }
      append("Tag", '<a href=${release.htmlUrl}>${release.tagName}</a>');
      append("Download",
          '<a href="${release.tarballUrl}">TAR</a> | <a href="${release.zipballUrl}">ZIP</a>');
    }
  });
}

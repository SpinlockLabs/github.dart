import 'dart:html';

import 'package:github/github.dart';

import 'common.dart';

DivElement releasesDiv;

Future<void> main() async {
  await initViewSourceButton('releases.dart');
  releasesDiv = querySelector('#releases');
  loadReleases();
}

void loadReleases() {
  github.repositories
      .listReleases(RepositorySlug('Workiva', 'wdesk'))
      .take(10)
      .toList()
      .then((releases) {
    for (final release in releases) {
      releasesDiv.appendHtml('''
      <div class="repo box" id="release-${release.id}">
        <h1>${release.name}</h1>
      </div>
      ''', treeSanitizer: NodeTreeSanitizer.trusted);
      final rel = releasesDiv.querySelector('#release-${release.id}');
      void append(String key, String value) {
        if (value == null) {
          return;
        }
        rel.appendHtml('<br/><b>$key</b>: $value',
            treeSanitizer: NodeTreeSanitizer.trusted);
      }

      append('Tag', '<a href=${release.htmlUrl}>${release.tagName}</a>');
      append('Download',
          '<a href="${release.tarballUrl}">TAR</a> | <a href="${release.zipballUrl}">ZIP</a>');
    }
  });
}

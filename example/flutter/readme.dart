import 'dart:html';

import 'common.dart';

Future<void> main() async {
  await initViewSourceButton('readme.dart');
  var readmeDiv = querySelector('#readme')!;
  var repo = RepositorySlug('SpinlockLabs', 'github.dart');
  final readme = await github.repositories.getReadme(repo);
  final html = await github.misc.renderMarkdown(readme.text);
  readmeDiv.appendHtml(html, treeSanitizer: NodeTreeSanitizer.trusted);
}

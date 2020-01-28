import 'dart:html';

import 'package:github/github.dart';
import 'common.dart';

DivElement tableDiv;

LanguageBreakdown breakdown;

Future<void> main() async {
  await initViewSourceButton('languages.dart');
  tableDiv = querySelector('#table');
  await loadRepository();
}

Future<void> loadRepository() async {
  var user = 'dart-lang';
  var reponame = 'sdk';

  final params = queryString;

  if (params.containsKey('user')) {
    user = params['user'];
  }

  if (params.containsKey('repo')) {
    reponame = params['repo'];
  }

  document.getElementById('name').setInnerHtml('$user/$reponame');

  final repo = RepositorySlug(user, reponame);
  breakdown = await github.repositories.listLanguages(repo);
  reloadTable();
}

bool isReloadingTable = false;

void reloadTable({int accuracy = 4}) {
  if (isReloadingTable) {
    return;
  }

  isReloadingTable = true;
  final md = generateMarkdown(accuracy);
  github.misc.renderMarkdown(md).then((html) {
    tableDiv.setInnerHtml(html, treeSanitizer: NodeTreeSanitizer.trusted);
    isReloadingTable = false;
  });
}

int totalBytes(LanguageBreakdown breakdown) {
  return breakdown.info.values.reduce((a, b) => a + b);
}

String generateMarkdown(int accuracy) {
  final total = totalBytes(breakdown);
  final data = breakdown.toList();

  var md = '|Name|Bytes|Percentage|\n';
  md += '|-----|-----|-----|\n';
  data.sort((a, b) => b[1].compareTo(a[1]));

  data.forEach((info) {
    final String name = info[0];
    final int bytes = info[1];
    final num percentage = (bytes / total) * 100;
    md += '|$name|$bytes|${percentage.toStringAsFixed(accuracy)}|\n';
  });
  return md;
}

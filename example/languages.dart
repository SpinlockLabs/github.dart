import 'dart:html';

import 'package:github/github.dart';
import 'common.dart';

DivElement? tableDiv;

late LanguageBreakdown breakdown;

Future<void> main() async {
  await initViewSourceButton('languages.dart');
  tableDiv = querySelector('#table') as DivElement?;
  await loadRepository();
}

Future<void> loadRepository() async {
  final params = queryString;
  var user = params['user'] ?? 'dart-lang';
  var reponame = params['repo'] ?? 'sdk';

  document.getElementById('name')!.text = '$user/$reponame';

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
    // ignore: unsafe_html
    tableDiv!.setInnerHtml(html, treeSanitizer: NodeTreeSanitizer.trusted);
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
    final String? name = info[0];
    final int bytes = info[1];
    final num percentage = (bytes / total) * 100;
    md += '|$name|$bytes|${percentage.toStringAsFixed(accuracy)}|\n';
  });
  return md;
}

import 'dart:html';
import 'common.dart';

Future<void> main() async {
  await initViewSourceButton('search.dart');

  final searchBtn = querySelector('#submit')!;
  searchBtn.onClick.listen(search);
}

Future<void> search(_) async {
  final resultsStream = github.search.code(
    val('query')!,
    language: val('language'),
    filename: val('filename'),
    user: val('user'),
    repo: val('repo'),
    org: val('org'),
    extension: val('ext'),
    fork: val('fork'),
    path: val('path'),
    size: val('size'),
    inFile: isChecked('infile')!,
    inPath: isChecked('inpath')!,
    perPage: int.tryParse(val('perpage')!),
    pages: int.tryParse(val('pages')!),
  );
  final resultsDiv = querySelector('#results') as DivElement;
  resultsDiv.innerHtml = '';

  var count = 0;
  await for (final results in resultsStream) {
    count += results.items!.length;
    querySelector('#nresults')!.text =
        '${results.totalCount} result${results.totalCount == 1 ? "" : "s"} (showing $count)';

    for (final item in results.items!) {
      final url = item.htmlUrl;
      final path = item.path;
      resultsDiv.append(DivElement()
        ..append(AnchorElement(href: url.toString())
          ..text = path
          ..target = '_blank'));
    }
  }
}

String? val(String id) => (querySelector('#$id') as InputElement).value;
bool? isChecked(String id) =>
    (querySelector('#$id') as CheckboxInputElement).checked;

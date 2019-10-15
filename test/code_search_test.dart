import 'dart:io';
import 'package:github/server.dart';

Future<void> main() async {
  print('Searching ...');
  final GitHub github = GitHub();

  final Stream<CodeSearchResults> resultsStream = github.search.code(
    'github',
    repo: 'DirectMyFile/github.dart',
    perPage: 5,
    pages: 1,
  );
  final results = await resultsStream.first;
  print('${results.totalCount} results');
  int k = 1;
  for (final i in results.items) {
    print('${k++} ${i.path}');
  }
  exit(0);
}

import 'dart:io';
import 'package:github/github.dart';

Future<void> main() async {
  print('Searching ...');
  final github = GitHub();

  final resultsStream = github.search.code(
    'github',
    repo: 'SpinlockLabs/github.dart',
    perPage: 5,
    pages: 1,
  );
  final results = await resultsStream.first;
  print('${results.totalCount} results');
  var k = 1;
  for (final i in results.items) {
    print('${k++} ${i.path}');
  }
  exit(0);
}

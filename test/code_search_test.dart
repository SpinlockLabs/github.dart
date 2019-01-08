import 'dart:io';
import 'package:github/server.dart';

Future<void> main() async {
  print('Searching ...');
  GitHub github = new GitHub();

  CodeSearchResults results = await github.search
      .code('github', repo: 'DirectMyFile/github.dart', perPage: 5, pages: 3);

  print('${results.totalCount} results');
  int k = 1;
  for (var i in results.items) {
    print('${k++} ${i.path}');
  }
  exit(0);
}

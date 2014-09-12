library test_helper;

import 'package:unittest/unittest.dart';

import 'package:github/server.dart';

void expectSlug(RepositorySlug slug, String user, String repo) {
  expect(slug.fullName, equals("${user}/${repo}"));
}

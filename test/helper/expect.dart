import 'package:github/src/common/model/repos.dart';
import 'package:test/test.dart';

void expectSlug(RepositorySlug slug, String user, String repo) {
  expect(slug.fullName, equals('$user/$repo'));
}

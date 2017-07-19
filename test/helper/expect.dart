part of github.test.helper;

void expectSlug(RepositorySlug slug, String user, String repo) {
  expect(slug.fullName, equals("$user/$repo"));
}

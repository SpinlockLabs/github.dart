part of github.tests.helper;

void expectSlug(RepositorySlug slug, String user, String repo) {
  expect(slug.fullName, equals("${user}/${repo}"));
}
part of github.tests.helper;

GitHub createMockGitHub() {
  initGitHub();
  return new GitHub(client: httpClient);
}
import "package:github/server.dart";

void main() {
  final github = createGitHubClient();

  github.repositories.listPublicRepositories(limit: 50).listen((repo) {
    print("-> ${repo.fullName}");
  }).onDone(() => github.dispose());
}

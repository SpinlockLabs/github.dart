import "package:github/server.dart";

void main() {
  var github = createGitHubClient();

  github.repositories.listPublicRepositories(limit: 10).listen((repo) {
    print("-> ${repo.fullName}");
  }).onDone(() => github.dispose());
}

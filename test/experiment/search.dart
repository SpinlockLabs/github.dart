import "package:github/server.dart";

void main() {
  final github = createGitHubClient();

  github.search.repositories("github").listen((repo) {
    print(
        "${repo.fullName}: ${repo.description.isNotEmpty ? repo.description : "No Description"}");
  }).onDone(() => github.dispose());
}

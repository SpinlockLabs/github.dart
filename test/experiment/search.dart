import "package:github/server.dart";

void main() {
  var github = createGitHubClient();

  github.search.repositories("github").listen((repo) {
    print(
        "${repo.fullName}: ${repo.description.isNotEmpty ? repo.description : "No Description"}");
  }).onDone(() => github.dispose());
}

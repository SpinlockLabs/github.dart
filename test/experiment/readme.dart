import "package:github/server.dart";

void main() {
  var github = createGitHubClient();

  github.repositories
      .getReadme(RepositorySlug("DirectMyFile", "github.dart"))
      .then((file) => github.misc.renderMarkdown(file.text))
      .then((html) => print(html))
      .then((_) => github.dispose());
}

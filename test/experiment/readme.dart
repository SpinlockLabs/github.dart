import "package:github/server.dart";

void main() {
  final github = createGitHubClient();

  github.repositories
      .getReadme(const RepositorySlug("DirectMyFile", "github.dart"))
      .then((file) => github.misc.renderMarkdown(file.text))
      .then((html) => print(html))
      .then((_) => github.dispose());
}

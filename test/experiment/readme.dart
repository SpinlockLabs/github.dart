import "package:github/github.dart";

void main() {
  final github = GitHub();

  github.repositories
      .getReadme(const RepositorySlug("SpinlockLabs", "github.dart"))
      .then((file) => github.misc.renderMarkdown(file.text))
      .then((html) => print(html))
      .then((_) => github.dispose());
}

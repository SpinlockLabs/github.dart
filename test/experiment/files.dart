import "package:github/server.dart";

void main() {
  final github = GitHub();

  github.repositories
      .getContents(
        const RepositorySlug("DirectMyFile", "github.dart"),
        "pubspec.yaml",
      )
      .then((contents) => contents.file)
      .then((file) => print(file.text))
      .then((_) => github.dispose());
}

import "package:github/server.dart";

void main() {
  var github = GitHub();

  github.repositories
      .getContents(
          RepositorySlug("DirectMyFile", "github.dart"), "pubspec.yaml")
      .then((contents) => contents.file)
      .then((file) => print(file.text))
      .then((_) => github.dispose());
}

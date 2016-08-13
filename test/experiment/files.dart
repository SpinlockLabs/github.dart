import "package:github/server.dart";

void main() {
  var github = new GitHub();

  github.repositories
      .getContents(
          new RepositorySlug("DirectMyFile", "github.dart"), "pubspec.yaml")
      .then((contents) => contents.file)
      .then((file) => print(file.text))
      .then((_) => github.dispose());
}

import "package:github/server.dart";

void main() {
  initGitHub();

  var github = new GitHub(
      auth: new Authentication.withToken(
          "5fdec2b77527eae85f188b7b2bfeeda170f26883"));

  github.repositories
      .getContents(
          new RepositorySlug("DirectMyFile", "github.dart"), "pubspec.yaml")
      .then((contents) => contents.file)
      .then((file) => print(file.text))
      .then((_) => github.dispose());
}

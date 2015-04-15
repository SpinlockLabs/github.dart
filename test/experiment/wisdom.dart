import "package:github/server.dart";

void main() {
  var github = createGitHubClient();

  github.misc.getWisdom().then((value) {
    print(value);
  }).then((_) => github.dispose());
}

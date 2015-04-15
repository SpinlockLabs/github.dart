import "package:github/server.dart";

void main() {
  var github = createGitHubClient();

  github.explore.listShowcases().listen((info) {
    print("- ${info.title}");
  }).onDone(() => github.dispose());
}

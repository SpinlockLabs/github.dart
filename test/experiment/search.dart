import "package:github/server.dart";

void main() async {
  var github = createGitHubClient();

  try {
    for (var i = 0; i < 10; i++) {
      // keep executing until we reach the rate limiter
      final stream = github.search.repositories("github");
      final all = await stream.toList();
      print(all.length);
    }
  } catch (e) {
    print(e);
  }
}

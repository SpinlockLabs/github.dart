import "package:github/server.dart";

void main() {
  var github = createGitHubClient();

  github.blog.listPosts().listen((post) {
    print(post.title);
  }).onDone(() => github.dispose());
}

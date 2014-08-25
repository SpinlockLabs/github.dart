import "package:github/server.dart";

void main() {
  initGitHub();
  
  var github = new GitHub(auth: new Authentication.withToken("5fdec2b77527eae85f188b7b2bfeeda170f26883"));

  github.blogPosts().listen((post) {
    print(post.title);
  });
}
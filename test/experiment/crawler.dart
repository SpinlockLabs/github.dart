import "package:github/server.dart";

void main() {
  initGitHub();

  var github = new GitHub(
      auth: new Authentication.anonymous());

  var crawler = new RepositoryCrawler(
      github, new RepositorySlug.full("DirectMyFile/github.dart"));

  crawler.crawl().listen((file) {
    print(file.path);
  });
}

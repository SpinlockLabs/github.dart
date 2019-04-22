import "package:github/server.dart";

void main() {
  var github = GitHub(auth: Authentication.anonymous());

  var crawler = RepositoryCrawler(
      github, RepositorySlug.full("DirectMyFile/github.dart"));

  crawler.crawl().listen((file) {
    print(file.path);
  });
}

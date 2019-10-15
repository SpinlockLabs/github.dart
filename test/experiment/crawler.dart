import "package:github/server.dart";

void main() {
  final github = GitHub(auth: Authentication.anonymous());

  final crawler = RepositoryCrawler(
    github,
    RepositorySlug.full("DirectMyFile/github.dart"),
  );

  crawler.crawl().listen((file) {
    print(file.path);
  });
}

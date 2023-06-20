import 'package:github/github.dart';

void main() {
  final github = GitHub(auth: const Authentication.anonymous());

  final crawler = RepositoryCrawler(
    github,
    RepositorySlug.full('SpinlockLabs/github.dart'),
  );

  crawler.crawl().listen((file) {
    print(file.path);
  });
}

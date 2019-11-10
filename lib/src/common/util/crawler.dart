import 'dart:async';
import 'package:github/src/common.dart';

// Crawls a Repository to Fetch All Files
class RepositoryCrawler {
  final GitHub github;
  final RepositorySlug slug;

  RepositoryCrawler(this.github, this.slug);

  Stream<GitHubFile> crawl() async* {
    Stream<GitHubFile> scan(String path) async* {
      final contents = await github.repositories.getContents(slug, path);

      for (final content in contents.tree) {
        if (content.type == 'dir') {
          yield* scan(content.path);
        } else {
          yield content;
        }
      }
    }

    yield* scan('/');
  }
}

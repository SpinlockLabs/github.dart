part of github.common;

// Crawls a Repository to Fetch All Files
class RepositoryCrawler {
  final GitHub github;
  final RepositorySlug slug;

  RepositoryCrawler(this.github, this.slug);

  Stream<GitHubFile> crawl() async* {
    Stream<GitHubFile> scan(String path) async* {
      var contents = await github.repositories.getContents(slug, path);

      for (var content in contents.tree) {
        if (content.type == 'dir') {
          yield* scan(content.path);
        } else {
          yield content;
        }
      }
    }

    yield* scan("/");
  }
}

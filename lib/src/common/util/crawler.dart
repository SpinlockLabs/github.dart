part of github.common;

/**
 * Crawls a Repository to Fetch All Files
 */
class RepositoryCrawler {
  final GitHub github;
  final RepositorySlug slug;

  RepositoryCrawler(this.github, this.slug);

  Stream<GitHubFile> crawl() {
    var controller = new StreamController<GitHubFile>();

    var group = new FutureGroup();

    void scan(String path) {
      group.add(github.repositories.getContents(slug, path).then((contents) {
        contents.tree.where((it) => it.type != "dir").forEach(controller.add);

        contents.tree.where((it) {
          return it.type == "dir";
        }).forEach((file) {
          scan(file.path);
        });
      }));
    }

    group.future.then((_) {
      return controller.close();
    });

    scan("/");

    return controller.stream;
  }
}

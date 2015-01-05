part of github.common;

/// The [BlogService] provides methods to retrieve blog posts from GitHub.
class BlogService extends Service {
  BlogService(GitHub github) : super(github);

  /// Returns a stream of blog posts for the specified [url].
  Stream<BlogPost> listPosts([String url = "https://github.com/blog.atom"]) {
    var controller = new StreamController();
    _github.client.request(new http.Request(url)).then((response) {
      var document = xml.parse(response.body);

      var entries = document.rootElement.findElements("entry");

      for (var entry in entries) {
        controller.add(BlogPost.fromXML(entry));
      }

      controller.close();
    });

    return controller.stream;
  }
}

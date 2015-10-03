part of github.common;

/// Model class for a blog post.
class BlogPost {
  DateTime publishedAt;
  DateTime updatedAt;

  String title;
  String url;
  String category;
  String content;
  String author;

  static BlogPost fromXML(xml.XmlElement node) {
    var children = node.children;

    xml.XmlElement query(String tagName) => children
        .firstWhere((it) => it is xml.XmlElement && it.name.local == tagName);

    var title = query("title").text;
    var content = query("content").text;
    var link = query("link").getAttribute("href");
    var category = query("category").text;
    var author = query("author").children[0].text;

    var post = new BlogPost();

    post.author = author;
    post.title = title;
    post.content = content;
    post.category = category;
    post.url = link;

    return post;
  }
}

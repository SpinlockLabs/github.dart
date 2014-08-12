part of github.client;

/**
 * The File Model
 */
class File {
  final GitHub github;

  @ApiName("type")
  String type;

  @ApiName("encoding")
  String encoding;

  @ApiName("size")
  int size;

  @ApiName("name")
  String name;

  @ApiName("path")
  String path;

  @ApiName("content")
  String content;

  @ApiName("sha")
  String sha;

  @ApiName("url")
  String url;

  @ApiName("git_url")
  String gitUrl;

  @ApiName("html_url")
  String htmlUrl;

  @ApiName("_links")
  FileLinks links;


  File(this.github);

  static File fromJSON(GitHub github, input) {
    if (input == null) return null;
    var file = new File(github);
    file.type = input['type'];
    file.encoding = input['encoding'];
    file.size = input['size'];
    file.name = input['name'];
    file.path = input['path'];
    file.content = input['content'];
    file.sha = input['sha'];
    file.url = input['url'];
    file.gitUrl = input['git_url'];
    file.htmlUrl = input['html_url'];
    file.links = FileLinks.fromJSON(input['_links']);
    return file;
  }
}

class FileLinks {
  @ApiName("git")
  String git;

  @ApiName("self")
  String self;

  @ApiName("html")
  String html;

  static FileLinks fromJSON(input) {
    if (input == null) return null;
    var fileLinks = new FileLinks();
    fileLinks.git = input['git'];
    fileLinks.self = input['self'];
    fileLinks.html = input['html'];
    return fileLinks;
  }

}
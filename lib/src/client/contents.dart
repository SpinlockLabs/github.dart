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

  @ApiName("html_url")
  String url;

  @ApiName("git_url")
  String gitUrl;

  @ApiName("_links")
  FileLinks links;


  File(this.github);

  static File fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new File(github)
        ..type = input['type']
        ..encoding = input['encoding']
        ..size = input['size']
        ..name = input['name']
        ..path = input['path']
        ..content = input['content']
        ..sha = input['sha']
        ..gitUrl = input['git_url']
        ..url = input['html_url']
        ..links = FileLinks.fromJSON(input['_links']);
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

part of github.common;

/**
 * The File Model
 */
class File {
  final GitHub github;

  /**
   * Type of File
   */
  @ApiName("type")
  String type;

  /**
   * File Encoding
   */
  @ApiName("encoding")
  String encoding;

  /**
   * File Size
   */
  @ApiName("size")
  int size;

  /**
   * File Name
   */
  @ApiName("name")
  String name;

  /**
   * File Path
   */
  @ApiName("path")
  String path;

  /**
   * File Content
   */
  @ApiName("content")
  String content;

  /**
   * SHA
   */
  @ApiName("sha")
  String sha;

  /**
   * Url to file
   */
  @ApiName("html_url")
  String url;

  /**
   * Git Url
   */
  @ApiName("git_url")
  String gitUrl;

  /**
   * Links
   */
  @ApiName("_links")
  Links links;

  /**
   * Text Content
   */
  String get text => new String.fromCharCodes(CryptoUtils.base64StringToBytes(content));

  /**
   * Source Repository
   */
  RepositorySlug sourceRepository;
  
  Map<String, dynamic> json;
  
  File(this.github);

  static File fromJSON(GitHub github, input, [RepositorySlug slug]) {
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
        ..links = Links.fromJSON(input['_links'])
        ..sourceRepository = slug
        ..json = input;
  }
  
  /**
   * Renders this file as markdown.
   */
  Future<String> renderMarkdown() {
    return github.request("GET", json['url'], headers: { "Accept": "application/vnd.github.v3.html" }).then((response) {
      return response.body;
    });
  }
}

/**
 * File Links
 */
class Links {
  /**
   * Git Link
   */
  @ApiName("git")
  String git;

  /**
   * Self Link
   */
  @ApiName("self")
  String self;

  /**
   * HTML Link
   */
  @ApiName("html")
  String html;

  static Links fromJSON(input) {
    if (input == null) return null;
    var links = new Links();
    links.git = input['git'];
    links.self = input['self'];
    links.html = input['html'];
    return links;
  }
}

class RepositoryContents {
  bool isFile;
  bool isDirectory;
  
  File file;
  List<File> tree;
}
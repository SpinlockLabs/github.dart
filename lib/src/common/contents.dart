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

/**
 * File Links
 */
class FileLinks {
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

  static FileLinks fromJSON(input) {
    if (input == null) return null;
    var fileLinks = new FileLinks();
    fileLinks.git = input['git'];
    fileLinks.self = input['self'];
    fileLinks.html = input['html'];
    return fileLinks;
  }
}

part of github.common;

/**
 * The File Model
 */
class File {
  final GitHub github;

  /**
   * Type of File
   */
  String type;

  /**
   * File Encoding
   */
  String encoding;

  /**
   * File Size
   */
  int size;

  /**
   * File Name
   */
  String name;

  /**
   * File Path
   */
  String path;

  /**
   * File Content
   */
  String content;

  /**
   * SHA
   */
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

class CreateFile {
  final String path;
  final String message;
  final String content;
  
  String branch;
  CommitterInformation committer;
  
  CreateFile(this.path, this.content, this.message);
  
  String toJSON() {
    var map = {};
    putValue("path", path, map);
    putValue("message", message, map);
    putValue("content", content, map);
    putValue("branch", branch, map);
    putValue("committer", committer != null ? committer.toMap() : null, map);
    return JSON.encode(map);
  }
}

class CommitterInformation {
  final String name;
  final String email;
  
  CommitterInformation(this.name, this.email);
  
  Map<String, String> toMap() => { "name": name, "email": email };
}

class ContentCreation {
  final GitHub github;
  final Commit commit;
  final File content;
  
  ContentCreation(this.github, this.commit, this.content);
  
  static ContentCreation fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new ContentCreation(github, Commit.fromJSON(github, input['commit']), File.fromJSON(github, input['content']));
  }
}

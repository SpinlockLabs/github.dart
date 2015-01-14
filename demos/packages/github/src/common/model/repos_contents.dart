part of github.common;

/// Model class for a file on GitHub.
class GitHubFile {

  /// Type of File
  String type;

  /// File Encoding
  String encoding;

  /// File Size
  int size;

  /// File Name
  String name;

  /// File Path
  String path;

  /// File Content
  String content;

  /// SHA
  String sha;

  /// Url to file
  @ApiName("html_url")
  String htmlUrl;

  /// Git Url
  @ApiName("git_url")
  String gitUrl;

  /// Links
  @ApiName("_links")
  Links links;

  /// Text Content
  String get text =>
      new String.fromCharCodes(CryptoUtils.base64StringToBytes(content));

  /// Source Repository
  RepositorySlug sourceRepository;

  static GitHubFile fromJSON(input, [RepositorySlug slug]) {
    if (input == null) return null;

    return new GitHubFile()
      ..type = input['type']
      ..encoding = input['encoding']
      ..size = input['size']
      ..name = input['name']
      ..path = input['path']
      ..content = input['content']
      ..sha = input['sha']
      ..gitUrl = input['git_url']
      ..htmlUrl = input['html_url']
      ..links = Links.fromJSON(input['_links'])
      ..sourceRepository = slug;
  }
}

/// File links.
class Links {

  /// Git Link
  @ApiName("git")
  String git;

  /// Self Link
  @ApiName("self")
  String self;

  /// HTML Link
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

/// Model class for a file or directory.
class RepositoryContents {
  GitHubFile file;
  List<GitHubFile> tree;

  bool get isFile => file != null;
  bool get isDirectory => tree != null;
}

/// Model class for a new file to be created.
class CreateFile {
  final String path;
  final String message;
  final String content;

  String branch;
  CommitUser committer;

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

/// Model class for a committer of a commit.
class CommitUser {
  final String name;
  final String email;

  CommitUser(this.name, this.email);

  Map<String, dynamic> toMap() {
    var map = {};

    putValue('name', name, map);
    putValue('email', email, map);

    return map;
  }
}

/// Model class for the response of a content creation.
class ContentCreation {
  final RepositoryCommit commit;
  final GitHubFile content;

  ContentCreation(this.commit, this.content);

  static ContentCreation fromJSON(input) {
    if (input == null) return null;

    return new ContentCreation(RepositoryCommit.fromJSON(input['commit']),
        GitHubFile.fromJSON(input['content']));
  }
}

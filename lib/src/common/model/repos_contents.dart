part of github.common;

/// Model class for a file on GitHub.
class GitHubFile {
  /// Type of File
  final String type;

  /// File Encoding
  final String encoding;

  /// File Size
  final int size;

  /// File Name
  final String name;

  /// File Path
  final String path;

  /// File Content
  final String content;

  /// SHA
  final String sha;

  /// Url to file
  @JsonKey(name: "html_url")
  final String htmlUrl;

  /// Git Url
  @JsonKey(name: "git_url")
  final String gitUrl;

  /// Links
  @JsonKey(name: "_links")
  final Links links;

  /// Text Content
  String get text {
    if (_text == null) {
      _text = utf8.decode(base64Decode(content));
    }
    return _text;
  }

  String _text;

  /// Source Repository
  final RepositorySlug sourceRepository;

  GitHubFile._({
    @required this.type,
    @required this.encoding,
    @required this.size,
    @required this.name,
    @required this.path,
    @required this.content,
    @required this.sha,
    @required this.gitUrl,
    @required this.htmlUrl,
    @required this.links,
    @required this.sourceRepository,
  });

  factory GitHubFile.fromJSON(Map<String, dynamic> input,
      [RepositorySlug slug]) {
    if (input == null) return null;

    return GitHubFile._(
      type: input['type'],
      encoding: input['encoding'],
      size: input['size'],
      name: input['name'],
      path: input['path'],
      content: input['content'] == null
          ? null
          : LineSplitter.split(input['content']).join(),
      sha: input['sha'],
      gitUrl: input['git_url'],
      htmlUrl: input['html_url'],
      links: Links.fromJson(input['_links'] as Map<String, dynamic>),
      sourceRepository: slug,
    );
  }
}

@JsonSerializable()
class Links {
  final Uri self;
  final Uri git;
  final Uri html;

  Links({this.git, this.self, this.html});

  factory Links.fromJson(Map<String, dynamic> input) {
    if (input == null) return null;

    return _$LinksFromJson(input);
  }

  Map<String, dynamic> toJson() => _$LinksToJson(this);
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
    final map = <String, dynamic>{};
    putValue("path", path, map);
    putValue("message", message, map);
    putValue("content", content, map);
    putValue("branch", branch, map);
    putValue("committer", committer != null ? committer.toMap() : null, map);
    return jsonEncode(map);
  }
}

/// Model class for a committer of a commit.
class CommitUser {
  final String name;
  final String email;

  CommitUser(this.name, this.email);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};

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

  static ContentCreation fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return ContentCreation(
        RepositoryCommit.fromJSON(input['commit'] as Map<String, dynamic>),
        GitHubFile.fromJSON(input['content'] as Map<String, dynamic>));
  }
}

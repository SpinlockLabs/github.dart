part of github.common;

/// Model class for gists.
@immutable
class Gist {
  final String id;
  final String description;
  final bool public;
  final User owner;
  final User user;
  final List<GistFile> files;

  @JsonKey(name: "html_url")
  final String htmlUrl;

  @JsonKey(name: "comments")
  final int commentsCount;

  @JsonKey(name: "git_pull_url")
  final String gitPullUrl;

  @JsonKey(name: "git_push_url")
  final String gitPushUrl;

  @JsonKey(name: "created_at")
  final DateTime createdAt;

  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  const Gist._({
    @required this.commentsCount,
    @required this.createdAt,
    @required this.description,
    @required this.files,
    @required this.gitPullUrl,
    @required this.gitPushUrl,
    @required this.htmlUrl,
    @required this.id,
    @required this.owner,
    @required this.public,
    @required this.updatedAt,
    @required this.user,
  });

  factory Gist.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    final List<GistFile> files = input['files'] != null ? [] : null;
    if (files != null) {
      for (final key in input['files'].keys) {
        final map = copyOf(input['files'][key]) as Map<String, dynamic>;
        map['name'] = key;
        files.add(GistFile.fromJson(map));
      }
    }

    return Gist._(
      id: input['id'],
      description: input['description'],
      public: input['public'],
      owner: User.fromJson(input['owner'] as Map<String, dynamic>),
      user: User.fromJson(input['user'] as Map<String, dynamic>),
      htmlUrl: input['html_url'],
      commentsCount: input['comments'],
      gitPullUrl: input['git_pull_url'],
      gitPushUrl: input['git_push_url'],
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
      files: files,
    );
  }
}

/// Model class for a gist file.
@immutable
class GistFile {
  final String name;
  final int size;

  @JsonKey(name: "raw_url")
  final String rawUrl;
  final String type;
  final String language;
  final bool truncated;
  final String content;

  const GistFile._({
    @required this.content,
    @required this.language,
    @required this.name,
    @required this.rawUrl,
    @required this.size,
    @required this.truncated,
    @required this.type,
  });

  factory GistFile.fromJson(Map<String, dynamic> input) {
    if (input == null) return null;

    return GistFile._(
      name: input['name'],
      size: input['size'],
      rawUrl: input['raw_url'],
      type: input['type'],
      language: input['language'],
      truncated: input['truncated'],
      content: input['content'],
    );
  }
}

/// Model class for a gist fork.
@immutable
class GistFork {
  final User user;
  final int id;

  @JsonKey(name: "created_at")
  final DateTime createdAt;

  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  const GistFork._({
    @required this.createdAt,
    @required this.id,
    @required this.updatedAt,
    @required this.user,
  });

  factory GistFork.fromJson(Map<String, dynamic> input) {
    if (input == null) return null;

    return GistFork._(
      user: User.fromJson(input['user'] as Map<String, dynamic>),
      id: input['id'],
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
    );
  }
}

/// Model class for a gits history entry.
@immutable
class GistHistoryEntry {
  final String version;

  final User user;

  @JsonKey(name: "change_status/deletions")
  final int deletions;

  @JsonKey(name: "change_status/additions")
  final int additions;

  @JsonKey(name: "change_status/total")
  final int totalChanges;

  @JsonKey(name: "committed_at")
  final DateTime committedAt;

  const GistHistoryEntry._({
    @required this.additions,
    @required this.committedAt,
    @required this.deletions,
    @required this.totalChanges,
    @required this.user,
    @required this.version,
  });

  factory GistHistoryEntry.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return GistHistoryEntry._(
      version: input['version'],
      user: User.fromJson(input['user'] as Map<String, dynamic>),
      deletions: input['change_status']['deletions'],
      additions: input['change_status']['additions'],
      totalChanges: input['change_status']['total'],
      committedAt: parseDateTime(input['committed_at']),
    );
  }
}

/// Model class for gist comments.
@immutable
class GistComment {
  final int id;
  final User user;

  @JsonKey(name: "created_at")
  final DateTime createdAt;

  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  final String body;

  const GistComment._({
    @required this.body,
    @required this.createdAt,
    @required this.id,
    @required this.updatedAt,
    @required this.user,
  });

  factory GistComment.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return GistComment._(
      id: input['id'],
      user: User.fromJson(input['user'] as Map<String, dynamic>),
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
      body: input['body'],
    );
  }
}

/// Model class for a new gist comment to be created.
@immutable
class CreateGistComment {
  final String body;

  const CreateGistComment(this.body);

  String toJSON() {
    final map = <String, dynamic>{'body': body};
    return jsonEncode(map);
  }
}

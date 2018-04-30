part of github.common;

/// Model class for gists.
class Gist {
  String id;
  String description;
  bool public;
  User owner;
  User user;
  List<GistFile> files;

  @ApiName("html_url")
  String htmlUrl;

  @ApiName("comments")
  int commentsCount;

  @ApiName("git_pull_url")
  String gitPullUrl;

  @ApiName("git_push_url")
  String gitPushUrl;

  @ApiName("created_at")
  DateTime createdAt;

  @ApiName("updated_at")
  DateTime updatedAt;

  static Gist fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    var gist = new Gist()
      ..id = input['id']
      ..description = input['description']
      ..public = input['public']
      ..owner = User.fromJSON(input['owner'] as Map<String, dynamic>)
      ..user = User.fromJSON(input['user'] as Map<String, dynamic>);

    if (input['files'] != null) {
      gist.files = [];

      for (var key in input['files'].keys) {
        var map = copyOf(input['files'][key]) as Map<String, dynamic>;
        map['name'] = key;
        gist.files.add(GistFile.fromJSON(map));
      }
    }

    gist
      ..htmlUrl = input['html_url']
      ..commentsCount = input['comments']
      ..gitPullUrl = input['git_pull_url']
      ..gitPushUrl = input['git_push_url']
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at']);

    return gist;
  }
}

/// Model class for a gist file.
class GistFile {
  String name;
  int size;

  @ApiName("raw_url")
  String rawUrl;
  String type;
  String language;
  bool truncated;
  String content;

  static GistFile fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GistFile()
      ..name = input['name']
      ..size = input['size']
      ..rawUrl = input['raw_url']
      ..type = input['type']
      ..language = input['language']
      ..truncated = input['truncated']
      ..content = input['content'];
  }
}

/// Model class for a gist fork.
class GistFork {
  User user;
  int id;

  @ApiName("created_at")
  DateTime createdAt;

  @ApiName("updated_at")
  DateTime updatedAt;

  static GistFork fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GistFork()
      ..user = User.fromJSON(input['user'] as Map<String, dynamic>)
      ..id = input['id']
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at']);
  }
}

/// Model class for a gits history entry.
class GistHistoryEntry {
  String version;

  User user;

  @ApiName("change_status/deletions")
  int deletions;

  @ApiName("change_status/additions")
  int additions;

  @ApiName("change_status/total")
  int totalChanges;

  @ApiName("committed_at")
  DateTime committedAt;

  static GistHistoryEntry fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GistHistoryEntry()
      ..version = input['version']
      ..user = User.fromJSON(input['user'] as Map<String, dynamic>)
      ..deletions = input['change_status']['deletions']
      ..additions = input['change_status']['additions']
      ..totalChanges = input['change_status']['total']
      ..committedAt = parseDateTime(input['committed_at']);
  }
}

/// Model class for gist comments.
class GistComment {
  int id;
  User user;

  @ApiName("created_at")
  DateTime createdAt;

  @ApiName("updated_at")
  DateTime updatedAt;

  String body;

  static GistComment fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new GistComment()
      ..id = input['id']
      ..user = User.fromJSON(input['user'] as Map<String, dynamic>)
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..body = input['body'];
  }
}

/// Model class for a new gist comment to be created.
class CreateGistComment {
  final String body;

  CreateGistComment(this.body);

  String toJSON() {
    var map = <String, dynamic>{};
    map['body'] = body;
    return JSON.encode(map);
  }
}

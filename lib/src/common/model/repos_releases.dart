part of github.common;

/// Model class for a release.
class Release {
  /// Url to this Release
  @ApiName("html_url")
  String htmlUrl;

  /// Tarball of the Repository Tree at the commit of this release.
  @ApiName("tarball_url")
  String tarballUrl;

  /// ZIP of the Repository Tree at the commit of this release.
  @ApiName("zipball_url")
  String zipballUrl;

  /// Release ID
  int id;

  /// Release Tag Name
  @ApiName("tag_name")
  String tagName;

  /// Target Commit
  @ApiName("target_commitish")
  String targetCommitsh;

  /// Release Name
  String name;

  /// Release Notes
  String body;

  /// Release Description
  String description;

  /// If the release is a draft.
  bool draft;

  /// If the release is a pre release.
  bool prerelease;

  /// The time this release was created at.
  @ApiName("created_at")
  DateTime createdAt;

  /// The time this release was published at.
  @ApiName("published_at")
  DateTime publishedAt;

  /// The author of this release.
  User author;

  /// Release Assets
  List<ReleaseAsset> assets;

  static Release fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new Release()
      ..htmlUrl = input['html_url']
      ..tarballUrl = input['tarball_url']
      ..zipballUrl = input['zipball_url']
      ..id = input['id']
      ..tagName = input['tag_name']
      ..targetCommitsh = input['target_commitish']
      ..body = input['body']
      ..description = input['description']
      ..draft = input['draft']
      ..prerelease = input['prelease']
      ..author = input['author']
      ..assets = new List.from(input['assets']
          .map((Map<String, dynamic> it) => ReleaseAsset.fromJSON(it)))
      ..name = input['name']
      ..createdAt = parseDateTime(input['created_at'])
      ..publishedAt = parseDateTime(input['published_at']);
  }
}

/// Model class for a release asset.
class ReleaseAsset {
  /// Url to download the asset.
  @ApiName("browser_download_url")
  String browserDownloadUrl;

  /// Asset ID
  int id;

  /// Asset Name
  String name;

  /// Asset Label
  String label;

  /// Asset State
  String state;

  /// Asset Content Type
  @ApiName("content_type")
  String contentType;

  /// Size of Asset
  int size;

  /// Number of Downloads
  @ApiName("download_count")
  int downloadCount;

  /// Time the asset was created at
  @ApiName("created_at")
  DateTime createdAt;

  /// Time the asset was last updated
  @ApiName("updated_at")
  DateTime updatedAt;

  static ReleaseAsset fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new ReleaseAsset()
      ..browserDownloadUrl = input['browser_download_url']
      ..name = input['name']
      ..id = input['id']
      ..label = input['label']
      ..state = input['state']
      ..contentType = input['content_type']
      ..size = input['size']
      ..downloadCount = input['download_count']
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at']);
  }
}

/// Model class for a new release to be created.
class CreateRelease {
  /// Tag Name to Base off of
  final String tagName;

  /// Commit to Target
  String targetCommitish;

  /// Release Name
  String name;

  /// Release Body
  String body;

  /// If the release is a draft
  bool draft;

  /// If the release should actually be released.
  bool release;

  CreateRelease(this.tagName);

  String toJSON() {
    var map = <String, dynamic>{};
    putValue("tag_name", tagName, map);
    putValue("name", name, map);
    putValue("body", body, map);
    putValue("draft", draft, map);
    putValue("release", release, map);
    return JSON.encode(map);
  }
}

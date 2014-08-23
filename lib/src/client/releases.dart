part of github.client;

class Release {
  final GitHub github;

  /**
   * Url to this Release
   */
  @ApiName("html_url")
  String url;

  /**
   * Tarball of the Repository Tree at the commit of this release.
   */
  @ApiName("tarball_url")
  String tarballUrl;

  /**
   * ZIP of the Repository Tree at the commit of this release.
   */
  @ApiName("zipball_url")
  String zipballUrl;

  /**
   * Release ID
   */
  int id;

  /**
   * Release Tag Name
   */
  @ApiName("tag_name")
  String tagName;

  /**
   * Target Commit
   */
  @ApiName("target_commitish")
  String targetCommitsh;

  /**
   * Release Name
   */
  String name;
  
  /**
   * Release Notes
   */
  String body;
  
  /**
   * Release Description
   */
  String description;
  
  /**
   * If the release is a draft.
   */
  bool draft;
  
  /**
   * If the release is a pre release.
   */
  bool prerelease;

  /**
   * The time this release was created at.
   */
  @ApiName("created_at")
  DateTime createdAt;

  /**
   * The time this release was published at.
   */
  @ApiName("published_at")
  DateTime publishedAt;

  /**
   * The author of this release.
   */
  User author;

  /**
   * Release Assets
   */
  List<ReleaseAsset> assets;

  Release(this.github);

  static Release fromJSON(GitHub github, input) {
    return new Release(github)
        ..url = input['html_url']
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
        ..assets = new List.from(input['assets'].map((it) => ReleaseAsset.fromJSON(github, it)))
        ..name = input['name']
        ..createdAt = parseDateTime(input['created_at'])
        ..publishedAt = parseDateTime(input['published_at']);
  }
}

class ReleaseAsset {
  final GitHub github;

  /**
   * Url to download the asset.
   */
  @ApiName("browser_download_url")
  String url;

  /**
   * Asset ID
   */
  int id;
  
  /**
   * Assert Name
   */
  String name;
  
  /**
   * Assert Label
   */
  String label;
  
  /**
   * Assert State
   */
  String state;

  /**
   * Assert Content Type
   */
  @ApiName("content_type")
  String contentType;

  /**
   * Size of Asset
   */
  int size;

  /**
   * Number of Downloads
   */
  @ApiName("download_count")
  int downloadCount;

  /**
   * Time the assert was created at
   */
  @ApiName("created_at")
  DateTime createdAt;

  /**
   * Time the asset was last updated
   */
  @ApiName("updated_at")
  DateTime updatedAt;

  ReleaseAsset(this.github);

  static ReleaseAsset fromJSON(GitHub github, input) {
    return new ReleaseAsset(github)
        ..url = input['browser_download_url']
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

/**
 * A Request to Create a Release
 */
class CreateReleaseRequest {
  /**
   * Tag Name to Base off of
   */
  final String tagName;
  
  /**
   * Commit to Target
   */
  String targetCommitish;
  
  /**
   * Release Name
   */
  String name;
  
  /**
   * Release Body
   */
  String body;
  
  /**
   * If the release is a draft
   */
  bool draft;
  
  /**
   * If the release should actually be released.
   */
  bool release;

  CreateReleaseRequest(this.tagName);

  String toJSON() {
    var map = {};
    putValue("tag_name", tagName, map);
    putValue("name", name, map);
    putValue("body", body, map);
    putValue("draft", draft, map);
    putValue("release", release, map);
    return JSON.encode(map);
  }
}

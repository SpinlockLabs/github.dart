part of github.client;

class Release {
  final GitHub github;

  @ApiName("html_url")
  String url;

  @ApiName("tarball_url")
  String tarballUrl;

  @ApiName("zipball_url")
  String zipballUrl;

  int id;

  @ApiName("tag_name")
  String tagName;

  @ApiName("target_commitish")
  String targetCommitsh;

  String name;
  String body;
  String description;
  bool draft;
  bool prerelease;

  @ApiName("created_at")
  DateTime createdAt;

  @ApiName("published_at")
  DateTime publishedAt;

  User author;

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
        ..createdAt = parse_date(input['created_at'])
        ..publishedAt = parse_date(input['published_at']);
  }
}

class ReleaseAsset {
  final GitHub github;

  @ApiName("browser_download_url")
  String url;

  int id;
  String name;
  String label;
  String state;

  @ApiName("content_type")
  String contentType;

  int size;

  @ApiName("download_count")
  int downloadCount;

  @ApiName("created_at")
  DateTime createdAt;

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
        ..createdAt = parse_date(input['created_at'])
        ..updatedAt = parse_date(input['updated_at']);
  }
}

class CreateReleaseRequest {
  final String tagName;
  String targetCommitish;
  String name;
  String body;
  bool draft;
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

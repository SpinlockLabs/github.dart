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
    var rel = new Release(github);
    rel.url = input['html_url'];
    rel.tarballUrl = input['tarball_url'];
    rel.zipballUrl = input['zipball_url'];
    rel.id = input['id'];
    rel.tagName = input['tag_name'];
    rel.targetCommitsh = input['target_commitish'];
    rel.body = input['body'];
    rel.description = input['description'];
    rel.draft = input['draft'];
    rel.prerelease = input['prerelease'];
    rel.author = User.fromJSON(github, input['author']);
    rel.assets = new List.from(input['assets'].map((it) => ReleaseAsset.fromJSON(github, it)));
    rel.name = input['name'];
    rel.createdAt = parse_date(input['created_at']);
    rel.publishedAt = parse_date(input['published_at']);
    return rel;
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
    var asset = new ReleaseAsset(github);
    asset.url = input['browser_download_url'];
    asset.name = input['name'];
    asset.id = input['id'];
    asset.label = input['label'];
    asset.state = input['state'];
    asset.contentType = input['content_type'];
    asset.size = input['size'];
    asset.downloadCount = input['download_count'];
    asset.createdAt = parse_date(input['created_at']);
    asset.updatedAt = parse_date(input['updated_at']);
    return asset;
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
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repos_releases.g.dart';

/// Model class for a release.
@JsonSerializable()
class Release {
  @JsonKey(ignore: true)
  Map json;

  /// Url to this Release
  @JsonKey(name: "html_url")
  String htmlUrl;

  /// Tarball of the Repository Tree at the commit of this release.
  @JsonKey(name: "tarball_url")
  String tarballUrl;

  /// ZIP of the Repository Tree at the commit of this release.
  @JsonKey(name: "zipball_url")
  String zipballUrl;

  /// Release ID
  int id;

  /// Release Tag Name
  @JsonKey(name: "tag_name")
  String tagName;

  /// Target Commit
  @JsonKey(name: "target_commitish")
  String targetCommitsh;

  /// Release Name
  String name;

  /// Release Notes
  String body;

  /// Release Description
  String description;

  /// If the release is a draft.
  bool draft;

  /// If the release is a pre-release.
  bool prerelease;

  /// The time this release was created at.
  @JsonKey(name: "created_at")
  DateTime createdAt;

  /// The time this release was published at.
  @JsonKey(name: "published_at")
  DateTime publishedAt;

  /// The author of this release.
  @JsonKey(toJson: _authorToJson)
  User author;

  /// Release Assets
  @JsonKey(toJson: _assetsToJson)
  List<ReleaseAsset> assets;

  static Release fromJson(Map<String, dynamic> input) {
    if (input == null) return null;

    return _$ReleaseFromJson(input)..json = input;
  }

  static List<Map<String, dynamic>> _assetsToJson(List<ReleaseAsset> value) =>
      value.map((asset) => asset.toJson()).toList();

  static Map<String, dynamic> _authorToJson(User value) => value.toJson();

  Map<String, dynamic> toJson() {
    return _$ReleaseToJson(this);
  }
}

/// Model class for a release asset.
@JsonSerializable()
class ReleaseAsset {
  @JsonKey(ignore: true)
  Map json;

  /// Url to download the asset.
  @JsonKey(name: "browser_download_url")
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
  @JsonKey(name: "content_type")
  String contentType;

  /// Size of Asset
  int size;

  /// Number of Downloads
  @JsonKey(name: "download_count")
  int downloadCount;

  /// Time the asset was created at
  @JsonKey(name: "created_at")
  DateTime createdAt;

  /// Time the asset was last updated
  @JsonKey(name: "updated_at")
  DateTime updatedAt;

  static ReleaseAsset fromJson(Map<String, dynamic> input) {
    if (input == null) return null;

    return _$ReleaseAssetFromJson(input)..json = input;
  }

  Map<String, dynamic> toJson() {
    return _$ReleaseAssetToJson(this);
  }
}

/// Model class for a new release to be created.
@JsonSerializable()
class CreateRelease {
  Map<String, dynamic> json;

  /// Tag Name to Base off of
  @JsonKey(name: 'tag_name')
  final String tagName;

  /// Commit to Target
  @JsonKey(name: 'target_commitish')
  String targetCommitish;

  /// Release Name
  String name;

  /// Release Body
  String body;

  /// If the release is a draft
  bool draft;

  /// If the release should actually be released.
  bool prerelease;

  CreateRelease(this.tagName);

  static CreateRelease fromJson(Map<String, dynamic> input) {
    if (input == null) return null;

    return _$CreateReleaseFromJson(input)..json = input;
  }

  Map<String, dynamic> toJson() {
    return _$CreateReleaseToJson(this);
  }
}

import 'dart:typed_data';

import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repos_releases.g.dart';

/// Model class for a release.
@JsonSerializable()
class Release {
  Release({
    this.id,
    this.url,
    this.htmlUrl,
    this.tarballUrl,
    this.uploadUrl,
    this.nodeId,
    this.tagName,
    this.targetCommitish,
    this.name,
    this.body,
    this.description,
    this.isDraft,
    this.isPrerelease,
    this.createdAt,
    this.publishedAt,
    this.author,
    this.assets,
  });

  /// Url to this Release
  String? url;

  /// Url to this Release
  String? htmlUrl;

  /// Tarball of the Repository Tree at the commit of this release.
  String? tarballUrl;

  /// ZIP of the Repository Tree at the commit of this release.
  String? zipballUrl;

  /// The endpoint for uploading release assets.
  /// This key is a hypermedia resource. https://developer.github.com/v3/#hypermedia
  String? uploadUrl;

  String? assetsUrl;

  /// Release ID
  int? id;

  String? nodeId;

  /// Release Tag Name
  String? tagName;

  /// Target Commit
  String? targetCommitish;

  /// Release Name
  String? name;

  /// Release Notes
  String? body;

  /// Release Description
  String? description;

  /// If the release is a draft.
  @JsonKey(name: 'draft')
  bool? isDraft;

  /// If the release is a pre-release.
  @JsonKey(name: 'prerelease')
  bool? isPrerelease;

  /// The time this release was created at.
  DateTime? createdAt;

  /// The time this release was published at.
  DateTime? publishedAt;

  /// The author of this release.
  User? author;

  /// Release Assets
  List<ReleaseAsset>? assets;

  List? errors;

  factory Release.fromJson(Map<String, dynamic> input) =>
      _$ReleaseFromJson(input);
  Map<String, dynamic> toJson() => _$ReleaseToJson(this);

  String getUploadUrlFor(String name, [String? label]) =>
      "${uploadUrl!.substring(0, uploadUrl!.indexOf('{'))}?name=$name${label != null ? ",$label" : ""}";

  bool get hasErrors => errors == null ? false : errors!.isNotEmpty;
}

/// Model class for a release asset.
@JsonSerializable()
class ReleaseAsset {
  ReleaseAsset({
    this.id,
    this.name,
    this.label,
    this.state,
    this.contentType,
    this.size,
    this.downloadCount,
    this.browserDownloadUrl,
    this.createdAt,
    this.updatedAt,
  });

  /// Url to download the asset.
  String? browserDownloadUrl;

  /// Asset ID
  int? id;

  /// Asset Name
  String? name;

  /// Asset Label
  String? label;

  /// Asset State
  String? state;

  /// Asset Content Type
  String? contentType;

  /// Size of Asset
  int? size;

  /// Number of Downloads
  int? downloadCount;

  /// Time the asset was created at
  DateTime? createdAt;

  /// Time the asset was last updated
  DateTime? updatedAt;

  factory ReleaseAsset.fromJson(Map<String, dynamic> input) =>
      _$ReleaseAssetFromJson(input);
  Map<String, dynamic> toJson() => _$ReleaseAssetToJson(this);
}

/// Model class for a new release to be created.
@JsonSerializable()
class CreateRelease {
  /// Tag Name to Base off of
  final String? tagName;

  /// Commit to Target
  String? targetCommitish;

  /// Release Name
  String? name;

  /// Release Body
  String? body;

  /// If the release is a draft
  @JsonKey(name: 'draft')
  bool? isDraft;

  /// true to identify the release as a prerelease.
  /// false to identify the release as a full release. Default: false
  @JsonKey(name: 'prerelease')
  bool? isPrerelease;

  String? discussionCategoryName;

  bool generateReleaseNotes = false;

  CreateRelease(this.tagName);

  CreateRelease.from(
      {required this.tagName,
      required this.name,
      required this.targetCommitish,
      required this.isDraft,
      required this.isPrerelease,
      this.body,
      this.discussionCategoryName,
      this.generateReleaseNotes = false});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateRelease &&
          runtimeType == other.runtimeType &&
          tagName == other.tagName &&
          targetCommitish == other.targetCommitish &&
          name == other.name &&
          body == other.body &&
          isDraft == other.isDraft &&
          isPrerelease == other.isPrerelease &&
          generateReleaseNotes == other.generateReleaseNotes &&
          discussionCategoryName == other.discussionCategoryName;

  @override
  int get hashCode =>
      tagName.hashCode ^
      targetCommitish.hashCode ^
      name.hashCode ^
      body.hashCode ^
      isDraft.hashCode ^
      isPrerelease.hashCode ^
      discussionCategoryName.hashCode ^
      generateReleaseNotes.hashCode;

  factory CreateRelease.fromJson(Map<String, dynamic> input) =>
      _$CreateReleaseFromJson(input);
  Map<String, dynamic> toJson() => _$CreateReleaseToJson(this);
}

class CreateReleaseAsset {
  CreateReleaseAsset({
    required this.name,
    required this.contentType,
    required this.assetData,
    this.label,
  });

  /// The file name of the asset.
  String name;

  /// An alternate short description of the asset. Used in place of the filename.
  String? label;

  /// The media type of the asset.
  ///
  /// For a list of media types,
  /// see [Media Types](https://www.iana.org/assignments/media-types/media-types.xhtml).
  /// For example: application/zip
  String contentType;

  /// The raw binary data for the asset being uploaded.
  ///
  /// GitHub expects the asset data in its raw binary form, rather than JSON.
  Uint8List assetData;
}

/// Holds release notes information
@JsonSerializable()
class ReleaseNotes {
  ReleaseNotes(this.name, this.body);
  String name;
  String body;

  factory ReleaseNotes.fromJson(Map<String, dynamic> input) =>
      _$ReleaseNotesFromJson(input);
  Map<String, dynamic> toJson() => _$ReleaseNotesToJson(this);
}

@JsonSerializable()
class CreateReleaseNotes {
  CreateReleaseNotes(this.owner, this.repo, this.tagName,
      {this.targetCommitish, this.previousTagName, this.configurationFilePath});

  String owner;
  String repo;
  String tagName;
  String? targetCommitish;
  String? previousTagName;
  String? configurationFilePath;

  factory CreateReleaseNotes.fromJson(Map<String, dynamic> input) =>
      _$CreateReleaseNotesFromJson(input);
  Map<String, dynamic> toJson() => _$CreateReleaseNotesToJson(this);
}

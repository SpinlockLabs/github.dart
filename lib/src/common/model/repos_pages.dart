import 'package:json_annotation/json_annotation.dart';

part 'repos_pages.g.dart';

/// GitHub Pages Information
@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryPages {
  RepositoryPages({
    this.cname,
    this.status,
    this.hasCustom404,
  });

  String cname;
  String status;
  @JsonKey(name: 'custom_404')
  bool hasCustom404;

  factory RepositoryPages.fromJson(Map<String, dynamic> input) =>
      _$RepositoryPagesFromJson(input);
  Map<String, dynamic> toJson() => _$RepositoryPagesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PageBuild {
  PageBuild({
    this.url,
    this.status,
    this.error,
    this.pusher,
    this.commit,
    this.duration,
    this.createdAt,
    this.updatedAt,
  });
  String url;
  String status;
  PageBuildError error;
  PageBuildPusher pusher;
  String commit;
  int duration;
  DateTime createdAt;
  DateTime updatedAt;

  factory PageBuild.fromJson(Map<String, dynamic> input) =>
      _$PageBuildFromJson(input);
  Map<String, dynamic> toJson() => _$PageBuildToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PageBuildPusher {
  PageBuildPusher({
    this.login,
    this.id,
    this.apiUrl,
    this.htmlUrl,
    this.type,
    this.siteAdmin,
  });
  int id;
  String login;
  @JsonKey(name: 'url')
  String apiUrl;
  String htmlUrl;
  String type;
  bool siteAdmin;

  factory PageBuildPusher.fromJson(Map<String, dynamic> input) =>
      _$PageBuildPusherFromJson(input);
  Map<String, dynamic> toJson() => _$PageBuildPusherToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PageBuildError {
  PageBuildError({this.message});
  String message;

  factory PageBuildError.fromJson(Map<String, dynamic> input) =>
      _$PageBuildErrorFromJson(input);
  Map<String, dynamic> toJson() => _$PageBuildErrorToJson(this);
}

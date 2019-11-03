import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repos_statuses.g.dart';

/// Model class for the combined status of a repository.
@JsonSerializable(fieldRename: FieldRename.snake)
class CombinedRepositoryStatus {
  CombinedRepositoryStatus({
    this.state,
    this.sha,
    this.totalCount,
    this.statuses,
    this.repository,
  });
  String state;
  String sha;
  int totalCount;
  List<RepositoryStatus> statuses;
  Repository repository;

  factory CombinedRepositoryStatus.fromJson(Map<String, dynamic> input) =>
      _$CombinedRepositoryStatusFromJson(input);
  Map<String, dynamic> toJson() => _$CombinedRepositoryStatusToJson(this);
}

/// Model class for the status of a repository at a particular reference.
@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryStatus {
  RepositoryStatus({
    this.createdAt,
    this.updatedAt,
    this.state,
    this.targetUrl,
    this.description,
    this.context,
  });
  DateTime createdAt;
  DateTime updatedAt;
  String state;
  String targetUrl;
  String description;
  String context;

  factory RepositoryStatus.fromJson(Map<String, dynamic> input) =>
      _$RepositoryStatusFromJson(input);
  Map<String, dynamic> toJson() => _$RepositoryStatusToJson(this);
}

/// Model class for a new repository status to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreateStatus {
  CreateStatus(this.state, {this.targetUrl, this.description, this.context});

  final String state;
  String description;
  String context;
  @JsonKey(name: 'target_url')
  String targetUrl;

  factory CreateStatus.fromJson(Map<String, dynamic> input) =>
      _$CreateStatusFromJson(input);
  Map<String, dynamic> toJson() => _$CreateStatusToJson(this);
}

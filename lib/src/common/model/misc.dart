import 'package:json_annotation/json_annotation.dart';

part 'misc.g.dart';

/// Model class for a Gitignore Template.
@JsonSerializable()
class GitignoreTemplate {
  GitignoreTemplate({this.name, this.source});

  /// Template Name
  final String? name;

  /// Template Source
  final String? source;

  factory GitignoreTemplate.fromJson(Map<String, dynamic> input) =>
      _$GitignoreTemplateFromJson(input);
  Map<String, dynamic> toJson() => _$GitignoreTemplateToJson(this);
}

/// Model class for GitHub Rate Limit Information.
@JsonSerializable()
class RateLimit {
  /// Maximum number of requests
  final int? limit;

  /// Remaining number of requests
  final int? remaining;

  /// Time when the limit expires
  final DateTime? resets;

  RateLimit(this.limit, this.remaining, this.resets);

  factory RateLimit.fromHeaders(Map<String, String> headers) {
    final limit = int.parse(headers['x-ratelimit-limit']!);
    final remaining = int.parse(headers['x-ratelimit-remaining']!);
    final resets = DateTime.fromMillisecondsSinceEpoch(
        int.parse(headers['x-ratelimit-reset']!) * 1000);
    return RateLimit(limit, remaining, resets);
  }

  /// Construct [RateLimit] from JSON response of /rate_limit.
  ///
  /// API docs: https://developer.github.com/v3/rate_limit/
  factory RateLimit.fromRateLimitResponse(Map<String, dynamic> response) {
    final rateJson = response['resources'] == null
        ? null
        : response['resources'] as Map<String, dynamic>;
    final limit = rateJson?['core']['limit'] as int?;
    final remaining = rateJson?['core']['remaining'] as int?;
    final resets = rateJson?['core']['reset'] == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(rateJson?['core']['reset']);
    return RateLimit(limit, remaining, resets);
  }

  factory RateLimit.fromJson(Map<String, dynamic> input) =>
      _$RateLimitFromJson(input);
  Map<String, dynamic> toJson() => _$RateLimitToJson(this);
}

/// Model class for the GitHub api status.
@JsonSerializable()
class APIStatus {
  APIStatus({
    this.status,
    this.lastUpdatedAt,
    this.createdOn,
    this.message,
  });
  final String? status;

  @JsonKey(name: 'last_updated')
  final DateTime? lastUpdatedAt;

  @JsonKey(name: 'created_on')
  final DateTime? createdOn;

  @JsonKey(name: 'body')
  final String? message;

  factory APIStatus.fromJson(Map<String, dynamic> input) =>
      _$APIStatusFromJson(input);
  Map<String, dynamic> toJson() => _$APIStatusToJson(this);
}

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
    final rateJson = response['rate'] == null
        ? null
        : response['rate'] as Map<String, dynamic>;
    final limit = rateJson?['limit'] as int?;
    final remaining = rateJson?['remaining'] as int?;
    final resets = rateJson?['reset'] == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(rateJson?['reset']);
    return RateLimit(limit, remaining, resets);
  }

  factory RateLimit.fromJson(Map<String, dynamic> input) =>
      _$RateLimitFromJson(input);
  Map<String, dynamic> toJson() => _$RateLimitToJson(this);
}

/// Model class for the GitHub API status.
@JsonSerializable()
class APIStatus {
  APIStatus({
    this.page,
    this.status,
  });

  /// Details about where to find more information.
  final APIStatusPage? page;

  /// An overview of the current status.
  final APIStatusMessage? status;

  factory APIStatus.fromJson(Map<String, dynamic> input) =>
      _$APIStatusFromJson(input);
  Map<String, dynamic> toJson() => _$APIStatusToJson(this);
}

@JsonSerializable()
class APIStatusPage {
  const APIStatusPage({
    this.id,
    this.name,
    this.url,
    this.updatedAt,
  });

  /// Unique identifier for the current status.
  final String? id;

  final String? name;

  /// Where to get more detailed information.
  final String? url;

  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  factory APIStatusPage.fromJson(Map<String, dynamic> input) =>
      _$APIStatusPageFromJson(input);
  Map<String, dynamic> toJson() => _$APIStatusPageToJson(this);
}

/// Overview class of the GitHub API status.
@JsonSerializable()
class APIStatusMessage {
  const APIStatusMessage({
    this.description,
    this.indicator,
  });

  /// A human description of the blended component status.
  final String? description;

  /// An indicator - one of none, minor, major, or critical.
  final String? indicator;

  factory APIStatusMessage.fromJson(Map<String, dynamic> input) =>
      _$APIStatusMessageFromJson(input);
  Map<String, dynamic> toJson() => _$APIStatusMessageToJson(this);
}

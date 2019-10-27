import 'package:github/src/util.dart';
import "package:json_annotation/json_annotation.dart";

/// Model class for a Gitignore Template.
class GitignoreTemplate {
  /// Template Name
  String name;

  /// Template Source
  String source;

  static GitignoreTemplate fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return GitignoreTemplate()
      ..name = input['name']
      ..source = input['source'];
  }
}

/// Model class for GitHub Rate Limit Information.
class RateLimit {
  /// Maximum number of requests
  final int limit;

  /// Remaining number of requests
  final int remaining;

  /// Time when the limit expires
  final DateTime resets;

  RateLimit(this.limit, this.remaining, this.resets);

  static RateLimit fromHeaders(Map<String, String> headers) {
    final limit = int.parse(headers['x-ratelimit-limit']);
    final remaining = int.parse(headers['x-ratelimit-remaining']);
    final resets = DateTime.fromMillisecondsSinceEpoch(
        int.parse(headers['x-ratelimit-reset']) * 1000);
    return RateLimit(limit, remaining, resets);
  }
}

/// Model class for the GitHub api status.
class APIStatus {
  String status;

  @JsonKey(name: "last_updated")
  DateTime lastUpdatedAt;

  @JsonKey(name: "created_on")
  DateTime createdOn;

  @JsonKey(name: "body")
  String message;

  static APIStatus fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return APIStatus()
      ..status = input['status']
      ..message = input['body']
      ..lastUpdatedAt = parseDateTime(input['last_updated'])
      ..createdOn = parseDateTime(input['created_on']);
  }
}

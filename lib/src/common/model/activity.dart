import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'activity.g.dart';

/// Model class for an event.
@immutable
@JsonSerializable(createToJson: false)
class Event {
  const Event({
    @required this.id,
    @required this.type,
    @required this.repo,
    @required this.actor,
    @required this.org,
    @required this.payload,
    @required this.createdAt,
  });
  final String id;
  final String type;
  final Repository repo;
  final User actor;
  final Organization org;
  final Map<String, dynamic> payload;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  factory Event.fromJson(Map<String, dynamic> input) => _$EventFromJson(input);
}

/// Model class for a repository subscription.
@immutable
@JsonSerializable(createToJson: false)
class RepositorySubscription {
  const RepositorySubscription({
    @required this.subscribed,
    @required this.ignored,
    @required this.reason,
    @required this.createdAt,
  });
  final bool subscribed;
  final bool ignored;
  final String reason;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  factory RepositorySubscription.fromJson(Map<String, dynamic> input) =>
      _$RepositorySubscriptionFromJson(input);
}

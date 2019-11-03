import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activity.g.dart';

/// Model class for an event.
@JsonSerializable()
class Event {
  Event({
    this.id,
    this.type,
    this.repo,
    this.actor,
    this.org,
    this.payload,
    this.createdAt,
  });
  String id;
  String type;
  Repository repo;
  User actor;
  Organization org;
  Map<String, dynamic> payload;

  @JsonKey(name: 'created_at')
  DateTime createdAt;

  factory Event.fromJson(Map<String, dynamic> input) => _$EventFromJson(input);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}

/// Model class for a repository subscription.
@JsonSerializable()
class RepositorySubscription {
  RepositorySubscription({
    this.subscribed,
    this.ignored,
    this.reason,
    this.createdAt,
  });
  bool subscribed;
  bool ignored;
  String reason;

  @JsonKey(name: 'created_at')
  DateTime createdAt;

  factory RepositorySubscription.fromJson(Map<String, dynamic> input) =>
      _$RepositorySubscriptionFromJson(input);
  Map<String, dynamic> toJson() => _$RepositorySubscriptionToJson(this);
}

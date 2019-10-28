import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activity.g.dart';

/// Model class for an event.
@JsonSerializable(createToJson: false)
class Event {
  Event();
  String id;
  String type;
  Repository repo;
  User actor;
  Organization org;
  Map<String, dynamic> payload;

  @JsonKey(name: 'created_at')
  DateTime createdAt;

  factory Event.fromJson(Map<String, dynamic> input) {
    return _$EventFromJson(input);
  }
}

/// Model class for a repository subscription.
@JsonSerializable(createToJson: false)
class RepositorySubscription {
  RepositorySubscription();
  bool subscribed;
  bool ignored;
  String reason;

  @JsonKey(name: 'created_at')
  DateTime createdAt;

  factory RepositorySubscription.fromJson(Map<String, dynamic> input) {
    return _$RepositorySubscriptionFromJson(input);
  }
}

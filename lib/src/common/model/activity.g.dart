// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) {
  return Event(
    id: json['id'] as String,
    type: json['type'] as String,
    repo: json['repo'] == null
        ? null
        : Repository.fromJson(json['repo'] as Map<String, dynamic>),
    actor: json['actor'] == null
        ? null
        : User.fromJson(json['actor'] as Map<String, dynamic>),
    org: json['org'] == null
        ? null
        : Organization.fromJson(json['org'] as Map<String, dynamic>),
    payload: json['payload'] as Map<String, dynamic>,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

RepositorySubscription _$RepositorySubscriptionFromJson(
    Map<String, dynamic> json) {
  return RepositorySubscription(
    subscribed: json['subscribed'] as bool,
    ignored: json['ignored'] as bool,
    reason: json['reason'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

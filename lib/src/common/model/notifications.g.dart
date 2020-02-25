// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return Notification(
    id: json['id'] as String,
    repository: json['repository'] == null
        ? null
        : Repository.fromJson(json['repository'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : NotificationSubject.fromJson(json['subject'] as Map<String, dynamic>),
    reason: json['reason'] as String,
    unread: json['unread'] as bool,
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    lastReadAt: json['last_read_at'] == null
        ? null
        : DateTime.parse(json['last_read_at'] as String),
    url: json['url'] as String,
    subscriptionUrl: json['subscription_url'] as String,
  );
}

NotificationSubject _$NotificationSubjectFromJson(Map<String, dynamic> json) {
  return NotificationSubject(
    title: json['title'] as String,
    type: json['type'] as String,
    url: json['url'] as String,
    latestCommentUrl: json['latest_comment_url'] as String,
  );
}

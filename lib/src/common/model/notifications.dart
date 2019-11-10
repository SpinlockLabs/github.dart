import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notifications.g.dart';

/// Model class for notifications.
@JsonSerializable(createToJson: false)
class Notification {
  Notification({
    this.id,
    this.repository,
    this.subject,
    this.reason,
    this.unread,
    this.updatedAt,
    this.lastReadAt,
  });
  final String id;
  final Repository repository;
  final NotificationSubject subject;
  final String reason;
  final bool unread;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @JsonKey(name: 'last_read_at')
  final DateTime lastReadAt;

  factory Notification.fromJson(Map<String, dynamic> input) =>
      _$NotificationFromJson(input);
}

/// Model class for a notification subject.
@JsonSerializable(createToJson: false)
class NotificationSubject {
  NotificationSubject({this.title, this.type});
  final String title;
  final String type;

  factory NotificationSubject.fromJson(Map<String, dynamic> input) =>
      _$NotificationSubjectFromJson(input);
}

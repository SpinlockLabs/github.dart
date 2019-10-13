part of github.common;

/// Model class for notifications.
@immutable
class Notification {
  final String id;
  final Repository repository;
  final NotificationSubject subject;
  final String reason;
  final bool unread;

  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  @JsonKey(name: "last_read_at")
  final DateTime lastReadAt;

  const Notification._({
    @required this.id,
    @required this.repository,
    @required this.subject,
    @required this.reason,
    @required this.unread,
    @required this.updatedAt,
    @required this.lastReadAt,
  });

  factory Notification.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return Notification._(
      id: input['id'],
      repository:
          Repository.fromJSON(input['repository'] as Map<String, dynamic>),
      subject: NotificationSubject.fromJSON(
          input['subject'] as Map<String, dynamic>),
      reason: input['reason'],
      unread: input['unread'],
      updatedAt: parseDateTime(input['updated_at']),
      lastReadAt: parseDateTime(input['last_read_at']),
    );
  }
}

/// Model class for a notification subject.
@immutable
class NotificationSubject {
  final String title;
  final String type;

  const NotificationSubject._({
    @required this.title,
    @required this.type,
  });

  factory NotificationSubject.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return NotificationSubject._(
      title: input['title'],
      type: input['type'],
    );
  }
}

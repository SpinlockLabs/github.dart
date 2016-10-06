part of github.common;

/// Model class for notifications.
class Notification {
  String id;
  Repository repository;
  NotificationSubject subject;
  String reason;
  bool unread;

  @ApiName("updated_at")
  DateTime updatedAt;

  @ApiName("last_read_at")
  DateTime lastReadAt;

  static Notification fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new Notification()
      ..id = input['id']
      ..repository =
          Repository.fromJSON(input['repository'] as Map<String, dynamic>)
      ..subject =
          NotificationSubject.fromJSON(input['subject'] as Map<String, dynamic>)
      ..reason = input['reason']
      ..unread = input['unread']
      ..updatedAt = parseDateTime(input['updated_at'])
      ..lastReadAt = parseDateTime(input['last_read_at']);
  }
}

/// Model class for a notification subject.
class NotificationSubject {
  String title;
  String type;

  static NotificationSubject fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new NotificationSubject()
      ..title = input['title']
      ..type = input['type'];
  }
}

part of github.common;

class Notification {
  final GitHub github;

  String id;
  Repository repository;
  NotificationSubject subject;
  String reason;
  bool unread;

  @ApiName("updated_at")
  DateTime updatedAt;

  @ApiName("last_read_at")
  DateTime lastReadAt;

  Notification(this.github);

  static Notification fromJSON(GitHub github, input) {
    if (input == null) return null;

    return new Notification(github)
        ..id = input['id']
        ..repository = Repository.fromJSON(github, input['repository'])
        ..subject = NotificationSubject.fromJSON(github, input['subject'])
        ..reason = input['reason']
        ..unread = input['unread']
        ..updatedAt = parseDateTime(input['updated_at'])
        ..lastReadAt = parseDateTime(input['last_read_at']);
  }
  
  /**
   * Marks this notification as read.
   */
  Future<bool> markAsRead({DateTime at}) {
    var data = {};
    
    if (at != null) data["last_read_at"] = at.toIso8601String();
    
    return github.request("PUT", "/notifications/thread/${id}", body: JSON.encode(data)).then((response) {
      return response.statusCode == 205;
    });
  }
}

class NotificationSubject {
  final GitHub github;

  String title;
  String type;

  NotificationSubject(this.github);

  static NotificationSubject fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new NotificationSubject(github)
        ..title = input['title']
        ..type = input['type'];
  }
}

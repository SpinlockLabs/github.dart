part of github.common;

/// Model class for an authorization.
class Authorization {
  int id;

  List<String> scopes;
  String token;
  AuthorizationApplication app;
  String note;
  String noteUrl;
  DateTime createdAt;
  DateTime updatedAt;
  User user;

  Map<String, dynamic> json;

  static Authorization fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new Authorization()
      ..id = input['id']
      ..scopes = input['scopes'] as List<String>
      ..token = input['token']
      ..app = AuthorizationApplication
          .fromJSON(input['app'] as Map<String, dynamic>)
      ..note = input['note']
      ..noteUrl = input['note_url']
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..json = input
      ..user = User.fromJSON(input['user'] as Map<String, dynamic>);
  }
}

/// Model class for an application of an [Authorization].
class AuthorizationApplication {
  String url;
  String name;

  @ApiName("client_id")
  String clientID;

  AuthorizationApplication();

  static AuthorizationApplication fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new AuthorizationApplication()
      ..url = input['url']
      ..name = input['name']
      ..clientID = input['client_id'];
  }
}

class CreateAuthorization {
  final String note;

  List<String> scopes;
  String noteUrl;
  String clientID;
  String clientSecret;

  CreateAuthorization(this.note);

  String toJSON() {
    var map = <String, dynamic>{};
    putValue("note", note, map);
    putValue("note_url", noteUrl, map);
    putValue("client_id", clientID, map);
    putValue("client_secret", clientSecret, map);
    return JSON.encode(map);
  }
}

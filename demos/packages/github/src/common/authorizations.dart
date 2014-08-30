part of github.common;

class Authorization {
  final GitHub github;

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

  Authorization(this.github);

  static Authorization fromJSON(GitHub github, input) {
    if (input == null) return null;

    return new Authorization(github)
        ..id = input['id']
        ..scopes = input['scopes']
        ..token = input['token']
        ..app = AuthorizationApplication.fromJSON(github, input['app'])
        ..note = input['note']
        ..noteUrl = input['note_url']
        ..createdAt = parseDateTime(input['created_at'])
        ..updatedAt = parseDateTime(input['updated_at'])
        ..json = input
        ..user = User.fromJSON(github, input['user']);
  }
}

class AuthorizationApplication {
  final GitHub github;

  String url;
  String name;

  @ApiName("client_id")
  String clientID;

  AuthorizationApplication(this.github);

  static AuthorizationApplication fromJSON(GitHub github, input) {
    if (input == null) return null;

    return new AuthorizationApplication(github)
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
    var map = {};
    putValue("note", note, map);
    putValue("note_url", noteUrl, map);
    putValue("client_id", clientID, map);
    putValue("client_secret", clientSecret, map);
    return JSON.encode(map);
  }
}
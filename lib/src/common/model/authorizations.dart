part of github.common;

/// Model class for an authorization.
@immutable
class Authorization {
  final int id;

  final List<String> scopes;
  final String token;
  final AuthorizationApplication app;
  final String note;
  final String noteUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  final User user;

  final Map<String, dynamic> json;

  const Authorization._({
    @required this.app,
    @required this.createdAt,
    @required this.id,
    @required this.json,
    @required this.note,
    @required this.noteUrl,
    @required this.scopes,
    @required this.token,
    @required this.updatedAt,
    @required this.user,
  });

  factory Authorization.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return Authorization._(
      id: input['id'],
      scopes: input['scopes'] as List<String>,
      token: input['token'],
      app: AuthorizationApplication.fromJSON(
          input['app'] as Map<String, dynamic>),
      note: input['note'],
      noteUrl: input['note_url'],
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
      json: input,
      user: User.fromJson(input['user'] as Map<String, dynamic>),
    );
  }
}

/// Model class for an application of an [Authorization].
@immutable
class AuthorizationApplication {
  final String url;
  final String name;

  @JsonKey(name: "client_id")
  final String clientID;

  @deprecated
  const AuthorizationApplication()
      : url = null,
        name = null,
        clientID = null;

  const AuthorizationApplication._({
    @required this.url,
    @required this.name,
    @required this.clientID,
  });

  factory AuthorizationApplication.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return AuthorizationApplication._(
      url: input['url'],
      name: input['name'],
      clientID: input['client_id'],
    );
  }
}

@immutable
class CreateAuthorization {
  final String note;

  final List<String> scopes;
  final String noteUrl;
  final String clientID;
  final String clientSecret;

  const CreateAuthorization({
    @required this.note,
    @required this.noteUrl,
    @required this.clientID,
    @required this.clientSecret,
    @required this.scopes,
  });

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("note", note, map);
    putValue("note_url", noteUrl, map);
    putValue("client_id", clientID, map);
    putValue("client_secret", clientSecret, map);
    return jsonEncode(map);
  }
}

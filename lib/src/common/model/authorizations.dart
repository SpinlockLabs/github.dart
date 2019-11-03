import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'authorizations.g.dart';

/// Model class for an authorization.
@JsonSerializable(fieldRename: FieldRename.snake)
class Authorization {
  Authorization(
      {this.id,
      this.scopes,
      this.token,
      this.app,
      this.note,
      this.noteUrl,
      this.createdAt,
      this.updatedAt,
      this.user});

  int id;
  List<String> scopes;
  String token;
  AuthorizationApplication app;
  String note;
  String noteUrl;
  DateTime createdAt;
  DateTime updatedAt;
  User user;

  factory Authorization.fromJson(Map<String, dynamic> input) =>
      _$AuthorizationFromJson(input);
  Map<String, dynamic> toJson() => _$AuthorizationToJson(this);
}

/// Model class for an application of an [Authorization].
@JsonSerializable(fieldRename: FieldRename.snake)
class AuthorizationApplication {
  AuthorizationApplication({this.url, this.name, this.clientId});

  String url;
  String name;
  String clientId;

  factory AuthorizationApplication.fromJson(Map<String, dynamic> input) =>
      _$AuthorizationApplicationFromJson(input);
  Map<String, dynamic> toJson() => _$AuthorizationApplicationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateAuthorization {
  CreateAuthorization(this.note,
      {this.scopes, this.noteUrl, this.clientId, this.clientSecret});

  String note;
  List<String> scopes;
  String noteUrl;
  String clientId;
  String clientSecret;

  factory CreateAuthorization.fromJson(Map<String, dynamic> input) =>
      _$CreateAuthorizationFromJson(input);
  Map<String, dynamic> toJson() => _$CreateAuthorizationToJson(this);
}

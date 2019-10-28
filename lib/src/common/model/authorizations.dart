import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'authorizations.g.dart';

/// Model class for an authorization.
@immutable
@JsonSerializable(createToJson: false)
class Authorization {
  const Authorization(
      {@required this.id,
      @required this.scopes,
      @required this.token,
      @required this.app,
      @required this.note,
      @required this.noteUrl,
      @required this.createdAt,
      @required this.updatedAt,
      @required this.user});

  final int id;
  final List<String> scopes;
  final String token;
  final AuthorizationApplication app;
  final String note;
  @JsonKey(name: 'note_url')
  final String noteUrl;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final User user;

  factory Authorization.fromJson(Map<String, dynamic> input) =>
      _$AuthorizationFromJson(input);
}

/// Model class for an application of an [Authorization].
@immutable
@JsonSerializable(createToJson: false)
class AuthorizationApplication {
  const AuthorizationApplication({this.url, this.name, this.clientID});

  final String url;
  final String name;

  @JsonKey(name: 'client_id')
  final String clientID;

  factory AuthorizationApplication.fromJson(Map<String, dynamic> input) =>
      _$AuthorizationApplicationFromJson(input);
}

@JsonSerializable()
class CreateAuthorization {
  final String note;

  List<String> scopes;
  String noteUrl;
  String clientID;
  String clientSecret;

  CreateAuthorization(this.note);

  factory CreateAuthorization.fromJson(Map<String, dynamic> json) =>
      _$CreateAuthorizationFromJson(json);
  Map<String, dynamic> toJson() => _$CreateAuthorizationToJson(this);

  String toJSON() {
    return jsonEncode(toJson());
  }
}

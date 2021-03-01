// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorizations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Authorization _$AuthorizationFromJson(Map<String, dynamic> json) {
  return Authorization(
    id: json['id'] as int?,
    scopes:
        (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    token: json['token'] as String?,
    app: json['app'] == null
        ? null
        : AuthorizationApplication.fromJson(
            json['app'] as Map<String, dynamic>),
    note: json['note'] as String?,
    noteUrl: json['noteUrl'] as String?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AuthorizationToJson(Authorization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scopes': instance.scopes,
      'token': instance.token,
      'app': instance.app,
      'note': instance.note,
      'noteUrl': instance.noteUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

AuthorizationApplication _$AuthorizationApplicationFromJson(
    Map<String, dynamic> json) {
  return AuthorizationApplication(
    url: json['url'] as String?,
    name: json['name'] as String?,
    clientId: json['clientId'] as String?,
  );
}

Map<String, dynamic> _$AuthorizationApplicationToJson(
        AuthorizationApplication instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'clientId': instance.clientId,
    };

CreateAuthorization _$CreateAuthorizationFromJson(Map<String, dynamic> json) {
  return CreateAuthorization(
    json['note'] as String?,
    scopes:
        (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    noteUrl: json['noteUrl'] as String?,
    clientId: json['clientId'] as String?,
    clientSecret: json['clientSecret'] as String?,
  );
}

Map<String, dynamic> _$CreateAuthorizationToJson(
        CreateAuthorization instance) =>
    <String, dynamic>{
      'note': instance.note,
      'scopes': instance.scopes,
      'noteUrl': instance.noteUrl,
      'clientId': instance.clientId,
      'clientSecret': instance.clientSecret,
    };

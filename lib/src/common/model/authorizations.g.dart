// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorizations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Authorization _$AuthorizationFromJson(Map<String, dynamic> json) {
  return Authorization(
    id: json['id'] as int,
    scopes: (json['scopes'] as List)?.map((e) => e as String)?.toList(),
    token: json['token'] as String,
    app: json['app'] == null
        ? null
        : AuthorizationApplication.fromJson(
            json['app'] as Map<String, dynamic>),
    note: json['note'] as String,
    noteUrl: json['note_url'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
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
      'note_url': instance.noteUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

AuthorizationApplication _$AuthorizationApplicationFromJson(
    Map<String, dynamic> json) {
  return AuthorizationApplication(
    url: json['url'] as String,
    name: json['name'] as String,
    clientId: json['client_id'] as String,
  );
}

Map<String, dynamic> _$AuthorizationApplicationToJson(
        AuthorizationApplication instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'client_id': instance.clientId,
    };

CreateAuthorization _$CreateAuthorizationFromJson(Map<String, dynamic> json) {
  return CreateAuthorization(
    json['note'] as String,
    scopes: (json['scopes'] as List)?.map((e) => e as String)?.toList(),
    noteUrl: json['note_url'] as String,
    clientId: json['client_id'] as String,
    clientSecret: json['client_secret'] as String,
  );
}

Map<String, dynamic> _$CreateAuthorizationToJson(
        CreateAuthorization instance) =>
    <String, dynamic>{
      'note': instance.note,
      'scopes': instance.scopes,
      'note_url': instance.noteUrl,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };

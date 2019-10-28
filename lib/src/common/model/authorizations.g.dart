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

AuthorizationApplication _$AuthorizationApplicationFromJson(
    Map<String, dynamic> json) {
  return AuthorizationApplication(
    url: json['url'] as String,
    name: json['name'] as String,
    clientID: json['client_id'] as String,
  );
}

CreateAuthorization _$CreateAuthorizationFromJson(Map<String, dynamic> json) {
  return CreateAuthorization(
    json['note'] as String,
  )
    ..scopes = (json['scopes'] as List)?.map((e) => e as String)?.toList()
    ..noteUrl = json['noteUrl'] as String
    ..clientID = json['clientID'] as String
    ..clientSecret = json['clientSecret'] as String;
}

Map<String, dynamic> _$CreateAuthorizationToJson(
        CreateAuthorization instance) =>
    <String, dynamic>{
      'note': instance.note,
      'scopes': instance.scopes,
      'noteUrl': instance.noteUrl,
      'clientID': instance.clientID,
      'clientSecret': instance.clientSecret,
    };

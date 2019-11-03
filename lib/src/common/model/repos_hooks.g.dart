// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_hooks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hook _$HookFromJson(Map<String, dynamic> json) {
  return Hook(
    id: json['id'] as int,
    name: json['name'] as String,
  )
    ..events = (json['events'] as List)?.map((e) => e as String)?.toList()
    ..active = json['active'] as bool
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String)
    ..repoName = json['repo_name'] as String
    ..config = json['config'] == null
        ? null
        : HookConfig.fromJson(json['config'] as Map<String, dynamic>);
}

Map<String, dynamic> _$HookToJson(Hook instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'events': instance.events,
      'active': instance.active,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'repo_name': instance.repoName,
      'config': instance.config,
    };

HookConfig _$HookConfigFromJson(Map<String, dynamic> json) {
  return HookConfig(
    url: json['url'] as String,
    contentType: json['content_type'] as String,
    secret: json['secret'] as String,
    insecureSsl: json['insecure_ssl'] as String,
  );
}

Map<String, dynamic> _$HookConfigToJson(HookConfig instance) =>
    <String, dynamic>{
      'url': instance.url,
      'content_type': instance.contentType,
      'secret': instance.secret,
      'insecure_ssl': instance.insecureSsl,
    };

CreateHook _$CreateHookFromJson(Map<String, dynamic> json) {
  return CreateHook(
    json['name'] as String,
    json['config'] == null
        ? null
        : HookConfig.fromJson(json['config'] as Map<String, dynamic>),
    events: (json['events'] as List)?.map((e) => e as String)?.toList(),
    active: json['active'] as bool,
  );
}

Map<String, dynamic> _$CreateHookToJson(CreateHook instance) =>
    <String, dynamic>{
      'name': instance.name,
      'config': instance.config,
      'events': instance.events,
      'active': instance.active,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_hooks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hook _$HookFromJson(Map<String, dynamic> json) {
  return Hook(
    id: json['id'] as int?,
    name: json['name'] as String?,
  )
    ..events =
        (json['events'] as List<dynamic>?)?.map((e) => e as String).toList()
    ..active = json['active'] as bool?
    ..createdAt = json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String)
    ..updatedAt = json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String)
    ..repoName = json['repoName'] as String?
    ..config = json['config'] == null
        ? null
        : HookConfig.fromJson(json['config'] as Map<String, dynamic>);
}

Map<String, dynamic> _$HookToJson(Hook instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'events': instance.events,
      'active': instance.active,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'repoName': instance.repoName,
      'config': instance.config,
    };

HookConfig _$HookConfigFromJson(Map<String, dynamic> json) {
  return HookConfig(
    url: json['url'] as String?,
    contentType: json['contentType'] as String?,
    secret: json['secret'] as String?,
    insecureSsl: json['insecureSsl'] as String?,
  );
}

Map<String, dynamic> _$HookConfigToJson(HookConfig instance) =>
    <String, dynamic>{
      'url': instance.url,
      'contentType': instance.contentType,
      'secret': instance.secret,
      'insecureSsl': instance.insecureSsl,
    };

CreateHook _$CreateHookFromJson(Map<String, dynamic> json) {
  return CreateHook(
    json['name'] as String?,
    json['config'] == null
        ? null
        : HookConfig.fromJson(json['config'] as Map<String, dynamic>),
    events:
        (json['events'] as List<dynamic>?)?.map((e) => e as String).toList(),
    active: json['active'] as bool?,
  );
}

Map<String, dynamic> _$CreateHookToJson(CreateHook instance) =>
    <String, dynamic>{
      'name': instance.name,
      'config': instance.config,
      'events': instance.events,
      'active': instance.active,
    };

import 'package:json_annotation/json_annotation.dart';

part 'repos_hooks.g.dart';

/// Model class for a repository hook.
@JsonSerializable(fieldRename: FieldRename.snake)
class Hook {
  Hook({
    this.id,
    this.name,
  });

  int id;
  String name;

  /// Events to Subscribe to
  List<String> events;

  /// Content Type
  String get contentType => config.contentType;

  /// If the hook is active
  bool active;

  /// The time the hook was created
  DateTime createdAt;

  /// The last time the hook was updated
  DateTime updatedAt;

  /// The Repository Name
  String repoName;

  HookConfig config;

  factory Hook.fromJson(Map<String, dynamic> input) => _$HookFromJson(input);
  Map<String, dynamic> toJson() => _$HookToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class HookConfig {
  HookConfig({
    this.url,
    this.contentType,
    this.secret,
    this.insecureSsl,
  });
  String url;
  String contentType;
  String secret;
  String insecureSsl;
  factory HookConfig.fromJson(Map<String, dynamic> input) =>
      _$HookConfigFromJson(input);
  Map<String, dynamic> toJson() => _$HookConfigToJson(this);
}

/// Model class for a new hook to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreateHook {
  /// Hook Name
  final String name;

  /// Hook Configuration
  final HookConfig config;

  /// Events to Subscribe to
  final List<String> events;

  /// If the Hook should be active.
  final bool active;

  CreateHook(this.name, this.config,
      {this.events = const ['push'], this.active = true});

  factory CreateHook.fromJson(Map<String, dynamic> input) =>
      _$CreateHookFromJson(input);
  Map<String, dynamic> toJson() => _$CreateHookToJson(this);
}

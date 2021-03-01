//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/hook_response.dart';
import 'package:github/model/hook_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hook.g.dart';

abstract class Hook implements Built<Hook, HookBuilder> {

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    /// Unique identifier of the webhook.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The name of a valid service, use 'web' for a webhook.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Determines whether the hook is actually triggered on pushes.
    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    /// Determines what events the hook is triggered for. Default: ['push'].
    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<String> get events;

    @nullable
    @BuiltValueField(wireName: r'config')
    HookConfig get config;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'test_url')
    String get testUrl;

    @nullable
    @BuiltValueField(wireName: r'ping_url')
    String get pingUrl;

    @nullable
    @BuiltValueField(wireName: r'last_response')
    HookResponse get lastResponse;

    // Boilerplate code needed to wire-up generated code
    Hook._();

    static void _initializeBuilder(HookBuilder b) => b;

    factory Hook([void updates(HookBuilder b)]) = _$Hook;
    static Serializer<Hook> get serializer => _$hookSerializer;
}


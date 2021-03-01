//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/org_hook_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'org_hook.g.dart';

abstract class OrgHook implements Built<OrgHook, OrgHookBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'ping_url')
    String get pingUrl;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<String> get events;

    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    @nullable
    @BuiltValueField(wireName: r'config')
    OrgHookConfig get config;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    // Boilerplate code needed to wire-up generated code
    OrgHook._();

    static void _initializeBuilder(OrgHookBuilder b) => b;

    factory OrgHook([void updates(OrgHookBuilder b)]) = _$OrgHook;
    static Serializer<OrgHook> get serializer => _$orgHookSerializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'org_hook_config.g.dart';

abstract class OrgHookConfig implements Built<OrgHookConfig, OrgHookConfigBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'insecure_ssl')
    String get insecureSsl;

    @nullable
    @BuiltValueField(wireName: r'content_type')
    String get contentType;

    @nullable
    @BuiltValueField(wireName: r'secret')
    String get secret;

    // Boilerplate code needed to wire-up generated code
    OrgHookConfig._();

    static void _initializeBuilder(OrgHookConfigBuilder b) => b;

    factory OrgHookConfig([void updates(OrgHookConfigBuilder b)]) = _$OrgHookConfig;
    static Serializer<OrgHookConfig> get serializer => _$orgHookConfigSerializer;
}


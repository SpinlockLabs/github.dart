//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deploy_key.g.dart';

abstract class DeployKey implements Built<DeployKey, DeployKeyBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'verified')
    bool get verified;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'read_only')
    bool get readOnly;

    // Boilerplate code needed to wire-up generated code
    DeployKey._();

    static void _initializeBuilder(DeployKeyBuilder b) => b;

    factory DeployKey([void updates(DeployKeyBuilder b)]) = _$DeployKey;
    static Serializer<DeployKey> get serializer => _$deployKeySerializer;
}


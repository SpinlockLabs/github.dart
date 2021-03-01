//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license.g.dart';

abstract class License implements Built<License, LicenseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'spdx_id')
    String get spdxId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'implementation')
    String get implementation;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    BuiltList<String> get permissions;

    @nullable
    @BuiltValueField(wireName: r'conditions')
    BuiltList<String> get conditions;

    @nullable
    @BuiltValueField(wireName: r'limitations')
    BuiltList<String> get limitations;

    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'featured')
    bool get featured;

    // Boilerplate code needed to wire-up generated code
    License._();

    static void _initializeBuilder(LicenseBuilder b) => b;

    factory License([void updates(LicenseBuilder b)]) = _$License;
    static Serializer<License> get serializer => _$licenseSerializer;
}


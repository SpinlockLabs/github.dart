//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_simple.g.dart';

abstract class LicenseSimple implements Built<LicenseSimple, LicenseSimpleBuilder> {

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'spdx_id')
    String get spdxId;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    // Boilerplate code needed to wire-up generated code
    LicenseSimple._();

    static void _initializeBuilder(LicenseSimpleBuilder b) => b;

    factory LicenseSimple([void updates(LicenseSimpleBuilder b)]) = _$LicenseSimple;
    static Serializer<LicenseSimple> get serializer => _$licenseSimpleSerializer;
}


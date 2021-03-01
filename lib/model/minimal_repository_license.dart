//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'minimal_repository_license.g.dart';

abstract class MinimalRepositoryLicense implements Built<MinimalRepositoryLicense, MinimalRepositoryLicenseBuilder> {

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

    // Boilerplate code needed to wire-up generated code
    MinimalRepositoryLicense._();

    static void _initializeBuilder(MinimalRepositoryLicenseBuilder b) => b;

    factory MinimalRepositoryLicense([void updates(MinimalRepositoryLicenseBuilder b)]) = _$MinimalRepositoryLicense;
    static Serializer<MinimalRepositoryLicense> get serializer => _$minimalRepositoryLicenseSerializer;
}


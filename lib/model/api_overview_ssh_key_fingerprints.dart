//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_overview_ssh_key_fingerprints.g.dart';

abstract class ApiOverviewSshKeyFingerprints implements Built<ApiOverviewSshKeyFingerprints, ApiOverviewSshKeyFingerprintsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'SHA256_RSA')
    String get sHA256RSA;

    @nullable
    @BuiltValueField(wireName: r'SHA256_DSA')
    String get sHA256DSA;

    // Boilerplate code needed to wire-up generated code
    ApiOverviewSshKeyFingerprints._();

    static void _initializeBuilder(ApiOverviewSshKeyFingerprintsBuilder b) => b;

    factory ApiOverviewSshKeyFingerprints([void updates(ApiOverviewSshKeyFingerprintsBuilder b)]) = _$ApiOverviewSshKeyFingerprints;
    static Serializer<ApiOverviewSshKeyFingerprints> get serializer => _$apiOverviewSshKeyFingerprintsSerializer;
}


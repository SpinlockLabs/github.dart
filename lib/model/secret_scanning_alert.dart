//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/secret_scanning_alert_resolution.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/secret_scanning_alert_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'secret_scanning_alert.g.dart';

abstract class SecretScanningAlert implements Built<SecretScanningAlert, SecretScanningAlertBuilder> {

    /// The security alert number.
    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    /// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    /// The REST API URL of the alert resource.
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// The GitHub URL of the alert resource.
    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'state')
    SecretScanningAlertState get state;
    // enum stateEnum {  open,  resolved,  };

    @nullable
    @BuiltValueField(wireName: r'resolution')
    SecretScanningAlertResolution get resolution;

    /// The time that the alert was resolved in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    @nullable
    @BuiltValueField(wireName: r'resolved_at')
    DateTime get resolvedAt;

    @nullable
    @BuiltValueField(wireName: r'resolved_by')
    SimpleUser get resolvedBy;

    /// The type of secret that secret scanning detected.
    @nullable
    @BuiltValueField(wireName: r'secret_type')
    String get secretType;

    /// The secret that was detected.
    @nullable
    @BuiltValueField(wireName: r'secret')
    String get secret;

    // Boilerplate code needed to wire-up generated code
    SecretScanningAlert._();

    static void _initializeBuilder(SecretScanningAlertBuilder b) => b;

    factory SecretScanningAlert([void updates(SecretScanningAlertBuilder b)]) = _$SecretScanningAlert;
    static Serializer<SecretScanningAlert> get serializer => _$secretScanningAlertSerializer;
}


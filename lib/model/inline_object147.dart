//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/secret_scanning_alert_resolution.dart';
import 'package:github/model/secret_scanning_alert_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object147.g.dart';

abstract class InlineObject147 implements Built<InlineObject147, InlineObject147Builder> {

    @nullable
    @BuiltValueField(wireName: r'state')
    SecretScanningAlertState get state;
    // enum stateEnum {  open,  resolved,  };

    @nullable
    @BuiltValueField(wireName: r'resolution')
    SecretScanningAlertResolution get resolution;

    // Boilerplate code needed to wire-up generated code
    InlineObject147._();

    static void _initializeBuilder(InlineObject147Builder b) => b;

    factory InlineObject147([void updates(InlineObject147Builder b)]) = _$InlineObject147;
    static Serializer<InlineObject147> get serializer => _$inlineObject147Serializer;
}


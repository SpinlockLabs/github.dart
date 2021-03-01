//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert_instance_message.g.dart';

abstract class CodeScanningAlertInstanceMessage implements Built<CodeScanningAlertInstanceMessage, CodeScanningAlertInstanceMessageBuilder> {

    @nullable
    @BuiltValueField(wireName: r'text')
    String get text;

    // Boilerplate code needed to wire-up generated code
    CodeScanningAlertInstanceMessage._();

    static void _initializeBuilder(CodeScanningAlertInstanceMessageBuilder b) => b;

    factory CodeScanningAlertInstanceMessage([void updates(CodeScanningAlertInstanceMessageBuilder b)]) = _$CodeScanningAlertInstanceMessage;
    static Serializer<CodeScanningAlertInstanceMessage> get serializer => _$codeScanningAlertInstanceMessageSerializer;
}


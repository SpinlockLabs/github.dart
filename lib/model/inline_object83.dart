//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/code_scanning_alert_dismissed_reason.dart';
import 'package:github/model/code_scanning_alert_set_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object83.g.dart';

abstract class InlineObject83 implements Built<InlineObject83, InlineObject83Builder> {

    @nullable
    @BuiltValueField(wireName: r'state')
    CodeScanningAlertSetState get state;
    // enum stateEnum {  open,  dismissed,  };

    @nullable
    @BuiltValueField(wireName: r'dismissed_reason')
    CodeScanningAlertDismissedReason get dismissedReason;

    // Boilerplate code needed to wire-up generated code
    InlineObject83._();

    static void _initializeBuilder(InlineObject83Builder b) => b;

    factory InlineObject83([void updates(InlineObject83Builder b)]) = _$InlineObject83;
    static Serializer<InlineObject83> get serializer => _$inlineObject83Serializer;
}


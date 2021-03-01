//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert_dismissed_reason_one_of.g.dart';

class CodeScanningAlertDismissedReasonOneOf extends EnumClass {

  @BuiltValueEnumConst(wireName: r'false positive')
  static const CodeScanningAlertDismissedReasonOneOf falsePositive = _$falsePositive;
  @BuiltValueEnumConst(wireName: r'won't fix')
  static const CodeScanningAlertDismissedReasonOneOf wonQuoteTFix = _$wonQuoteTFix;
  @BuiltValueEnumConst(wireName: r'used in tests')
  static const CodeScanningAlertDismissedReasonOneOf usedInTests = _$usedInTests;

  static Serializer<CodeScanningAlertDismissedReasonOneOf> get serializer => _$codeScanningAlertDismissedReasonOneOfSerializer;

  const CodeScanningAlertDismissedReasonOneOf._(String name): super(name);

  static BuiltSet<CodeScanningAlertDismissedReasonOneOf> get values => _$values;
  static CodeScanningAlertDismissedReasonOneOf valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CodeScanningAlertDismissedReasonOneOfMixin = Object with _$CodeScanningAlertDismissedReasonOneOfMixin;


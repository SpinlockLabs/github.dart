//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert_state.g.dart';

class CodeScanningAlertState extends EnumClass {

  /// State of a code scanning alert.
  @BuiltValueEnumConst(wireName: r'open')
  static const CodeScanningAlertState open = _$open;
  /// State of a code scanning alert.
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const CodeScanningAlertState dismissed = _$dismissed;
  /// State of a code scanning alert.
  @BuiltValueEnumConst(wireName: r'fixed')
  static const CodeScanningAlertState fixed = _$fixed;

  static Serializer<CodeScanningAlertState> get serializer => _$codeScanningAlertStateSerializer;

  const CodeScanningAlertState._(String name): super(name);

  static BuiltSet<CodeScanningAlertState> get values => _$values;
  static CodeScanningAlertState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CodeScanningAlertStateMixin = Object with _$CodeScanningAlertStateMixin;


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert_set_state.g.dart';

class CodeScanningAlertSetState extends EnumClass {

  /// Sets the state of the code scanning alert. Can be one of `open` or `dismissed`. You must provide `dismissed_reason` when you set the state to `dismissed`.
  @BuiltValueEnumConst(wireName: r'open')
  static const CodeScanningAlertSetState open = _$open;
  /// Sets the state of the code scanning alert. Can be one of `open` or `dismissed`. You must provide `dismissed_reason` when you set the state to `dismissed`.
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const CodeScanningAlertSetState dismissed = _$dismissed;

  static Serializer<CodeScanningAlertSetState> get serializer => _$codeScanningAlertSetStateSerializer;

  const CodeScanningAlertSetState._(String name): super(name);

  static BuiltSet<CodeScanningAlertSetState> get values => _$values;
  static CodeScanningAlertSetState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CodeScanningAlertSetStateMixin = Object with _$CodeScanningAlertSetStateMixin;


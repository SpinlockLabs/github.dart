// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_dismissed_reason_one_of1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CodeScanningAlertDismissedReasonOneOf1 _$null_ =
    const CodeScanningAlertDismissedReasonOneOf1._('null_');

CodeScanningAlertDismissedReasonOneOf1 _$valueOf(String name) {
  switch (name) {
    case 'null_':
      return _$null_;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CodeScanningAlertDismissedReasonOneOf1> _$values =
    new BuiltSet<CodeScanningAlertDismissedReasonOneOf1>(const <
        CodeScanningAlertDismissedReasonOneOf1>[
  _$null_,
]);

class _$CodeScanningAlertDismissedReasonOneOf1Meta {
  const _$CodeScanningAlertDismissedReasonOneOf1Meta();
  CodeScanningAlertDismissedReasonOneOf1 get null_ => _$null_;
  CodeScanningAlertDismissedReasonOneOf1 valueOf(String name) =>
      _$valueOf(name);
  BuiltSet<CodeScanningAlertDismissedReasonOneOf1> get values => _$values;
}

abstract class _$CodeScanningAlertDismissedReasonOneOf1Mixin {
  // ignore: non_constant_identifier_names
  _$CodeScanningAlertDismissedReasonOneOf1Meta
      get CodeScanningAlertDismissedReasonOneOf1 =>
          const _$CodeScanningAlertDismissedReasonOneOf1Meta();
}

Serializer<CodeScanningAlertDismissedReasonOneOf1>
    _$codeScanningAlertDismissedReasonOneOf1Serializer =
    new _$CodeScanningAlertDismissedReasonOneOf1Serializer();

class _$CodeScanningAlertDismissedReasonOneOf1Serializer
    implements PrimitiveSerializer<CodeScanningAlertDismissedReasonOneOf1> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'null_': 'null',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'null': 'null_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CodeScanningAlertDismissedReasonOneOf1
  ];
  @override
  final String wireName = 'CodeScanningAlertDismissedReasonOneOf1';

  @override
  Object serialize(Serializers serializers,
          CodeScanningAlertDismissedReasonOneOf1 object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CodeScanningAlertDismissedReasonOneOf1 deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CodeScanningAlertDismissedReasonOneOf1.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

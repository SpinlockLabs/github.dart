// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_dismissed_reason_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CodeScanningAlertDismissedReasonOneOf _$falsePositive =
    const CodeScanningAlertDismissedReasonOneOf._('falsePositive');
const CodeScanningAlertDismissedReasonOneOf _$usedInTests =
    const CodeScanningAlertDismissedReasonOneOf._('usedInTests');

CodeScanningAlertDismissedReasonOneOf _$valueOf(String name) {
  switch (name) {
    case 'falsePositive':
      return _$falsePositive;
    case 'usedInTests':
      return _$usedInTests;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CodeScanningAlertDismissedReasonOneOf> _$values =
    new BuiltSet<CodeScanningAlertDismissedReasonOneOf>(const <
        CodeScanningAlertDismissedReasonOneOf>[
  _$falsePositive,
  _$usedInTests,
]);

class _$CodeScanningAlertDismissedReasonOneOfMeta {
  const _$CodeScanningAlertDismissedReasonOneOfMeta();
  CodeScanningAlertDismissedReasonOneOf get falsePositive => _$falsePositive;
  CodeScanningAlertDismissedReasonOneOf get usedInTests => _$usedInTests;
  CodeScanningAlertDismissedReasonOneOf valueOf(String name) => _$valueOf(name);
  BuiltSet<CodeScanningAlertDismissedReasonOneOf> get values => _$values;
}

abstract class _$CodeScanningAlertDismissedReasonOneOfMixin {
  // ignore: non_constant_identifier_names
  _$CodeScanningAlertDismissedReasonOneOfMeta
      get CodeScanningAlertDismissedReasonOneOf =>
          const _$CodeScanningAlertDismissedReasonOneOfMeta();
}

Serializer<CodeScanningAlertDismissedReasonOneOf>
    _$codeScanningAlertDismissedReasonOneOfSerializer =
    new _$CodeScanningAlertDismissedReasonOneOfSerializer();

class _$CodeScanningAlertDismissedReasonOneOfSerializer
    implements PrimitiveSerializer<CodeScanningAlertDismissedReasonOneOf> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'falsePositive': 'false positive',
    'usedInTests': 'used in tests',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'false positive': 'falsePositive',
    'used in tests': 'usedInTests',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CodeScanningAlertDismissedReasonOneOf
  ];
  @override
  final String wireName = 'CodeScanningAlertDismissedReasonOneOf';

  @override
  Object serialize(
          Serializers serializers, CodeScanningAlertDismissedReasonOneOf object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CodeScanningAlertDismissedReasonOneOf deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CodeScanningAlertDismissedReasonOneOf.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

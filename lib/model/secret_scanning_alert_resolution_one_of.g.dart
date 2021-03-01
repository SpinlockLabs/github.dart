// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'secret_scanning_alert_resolution_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SecretScanningAlertResolutionOneOf _$falsePositive =
    const SecretScanningAlertResolutionOneOf._('falsePositive');
const SecretScanningAlertResolutionOneOf _$wontFix =
    const SecretScanningAlertResolutionOneOf._('wontFix');
const SecretScanningAlertResolutionOneOf _$revoked =
    const SecretScanningAlertResolutionOneOf._('revoked');
const SecretScanningAlertResolutionOneOf _$usedInTests =
    const SecretScanningAlertResolutionOneOf._('usedInTests');

SecretScanningAlertResolutionOneOf _$valueOf(String name) {
  switch (name) {
    case 'falsePositive':
      return _$falsePositive;
    case 'wontFix':
      return _$wontFix;
    case 'revoked':
      return _$revoked;
    case 'usedInTests':
      return _$usedInTests;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SecretScanningAlertResolutionOneOf> _$values =
    new BuiltSet<SecretScanningAlertResolutionOneOf>(const <
        SecretScanningAlertResolutionOneOf>[
  _$falsePositive,
  _$wontFix,
  _$revoked,
  _$usedInTests,
]);

class _$SecretScanningAlertResolutionOneOfMeta {
  const _$SecretScanningAlertResolutionOneOfMeta();
  SecretScanningAlertResolutionOneOf get falsePositive => _$falsePositive;
  SecretScanningAlertResolutionOneOf get wontFix => _$wontFix;
  SecretScanningAlertResolutionOneOf get revoked => _$revoked;
  SecretScanningAlertResolutionOneOf get usedInTests => _$usedInTests;
  SecretScanningAlertResolutionOneOf valueOf(String name) => _$valueOf(name);
  BuiltSet<SecretScanningAlertResolutionOneOf> get values => _$values;
}

abstract class _$SecretScanningAlertResolutionOneOfMixin {
  // ignore: non_constant_identifier_names
  _$SecretScanningAlertResolutionOneOfMeta
      get SecretScanningAlertResolutionOneOf =>
          const _$SecretScanningAlertResolutionOneOfMeta();
}

Serializer<SecretScanningAlertResolutionOneOf>
    _$secretScanningAlertResolutionOneOfSerializer =
    new _$SecretScanningAlertResolutionOneOfSerializer();

class _$SecretScanningAlertResolutionOneOfSerializer
    implements PrimitiveSerializer<SecretScanningAlertResolutionOneOf> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'falsePositive': 'false_positive',
    'wontFix': 'wont_fix',
    'revoked': 'revoked',
    'usedInTests': 'used_in_tests',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'false_positive': 'falsePositive',
    'wont_fix': 'wontFix',
    'revoked': 'revoked',
    'used_in_tests': 'usedInTests',
  };

  @override
  final Iterable<Type> types = const <Type>[SecretScanningAlertResolutionOneOf];
  @override
  final String wireName = 'SecretScanningAlertResolutionOneOf';

  @override
  Object serialize(
          Serializers serializers, SecretScanningAlertResolutionOneOf object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SecretScanningAlertResolutionOneOf deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SecretScanningAlertResolutionOneOf.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'secret_scanning_alert_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SecretScanningAlertState _$open =
    const SecretScanningAlertState._('open');
const SecretScanningAlertState _$resolved =
    const SecretScanningAlertState._('resolved');

SecretScanningAlertState _$valueOf(String name) {
  switch (name) {
    case 'open':
      return _$open;
    case 'resolved':
      return _$resolved;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SecretScanningAlertState> _$values =
    new BuiltSet<SecretScanningAlertState>(const <SecretScanningAlertState>[
  _$open,
  _$resolved,
]);

class _$SecretScanningAlertStateMeta {
  const _$SecretScanningAlertStateMeta();
  SecretScanningAlertState get open => _$open;
  SecretScanningAlertState get resolved => _$resolved;
  SecretScanningAlertState valueOf(String name) => _$valueOf(name);
  BuiltSet<SecretScanningAlertState> get values => _$values;
}

abstract class _$SecretScanningAlertStateMixin {
  // ignore: non_constant_identifier_names
  _$SecretScanningAlertStateMeta get SecretScanningAlertState =>
      const _$SecretScanningAlertStateMeta();
}

Serializer<SecretScanningAlertState> _$secretScanningAlertStateSerializer =
    new _$SecretScanningAlertStateSerializer();

class _$SecretScanningAlertStateSerializer
    implements PrimitiveSerializer<SecretScanningAlertState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'resolved': 'resolved',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'resolved': 'resolved',
  };

  @override
  final Iterable<Type> types = const <Type>[SecretScanningAlertState];
  @override
  final String wireName = 'SecretScanningAlertState';

  @override
  Object serialize(Serializers serializers, SecretScanningAlertState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SecretScanningAlertState deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SecretScanningAlertState.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

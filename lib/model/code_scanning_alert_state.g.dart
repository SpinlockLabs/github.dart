// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CodeScanningAlertState _$open = const CodeScanningAlertState._('open');
const CodeScanningAlertState _$dismissed =
    const CodeScanningAlertState._('dismissed');
const CodeScanningAlertState _$fixed = const CodeScanningAlertState._('fixed');

CodeScanningAlertState _$valueOf(String name) {
  switch (name) {
    case 'open':
      return _$open;
    case 'dismissed':
      return _$dismissed;
    case 'fixed':
      return _$fixed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CodeScanningAlertState> _$values =
    new BuiltSet<CodeScanningAlertState>(const <CodeScanningAlertState>[
  _$open,
  _$dismissed,
  _$fixed,
]);

class _$CodeScanningAlertStateMeta {
  const _$CodeScanningAlertStateMeta();
  CodeScanningAlertState get open => _$open;
  CodeScanningAlertState get dismissed => _$dismissed;
  CodeScanningAlertState get fixed => _$fixed;
  CodeScanningAlertState valueOf(String name) => _$valueOf(name);
  BuiltSet<CodeScanningAlertState> get values => _$values;
}

abstract class _$CodeScanningAlertStateMixin {
  // ignore: non_constant_identifier_names
  _$CodeScanningAlertStateMeta get CodeScanningAlertState =>
      const _$CodeScanningAlertStateMeta();
}

Serializer<CodeScanningAlertState> _$codeScanningAlertStateSerializer =
    new _$CodeScanningAlertStateSerializer();

class _$CodeScanningAlertStateSerializer
    implements PrimitiveSerializer<CodeScanningAlertState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'dismissed': 'dismissed',
    'fixed': 'fixed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'dismissed': 'dismissed',
    'fixed': 'fixed',
  };

  @override
  final Iterable<Type> types = const <Type>[CodeScanningAlertState];
  @override
  final String wireName = 'CodeScanningAlertState';

  @override
  Object serialize(Serializers serializers, CodeScanningAlertState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CodeScanningAlertState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CodeScanningAlertState.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_set_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CodeScanningAlertSetState _$open =
    const CodeScanningAlertSetState._('open');
const CodeScanningAlertSetState _$dismissed =
    const CodeScanningAlertSetState._('dismissed');

CodeScanningAlertSetState _$valueOf(String name) {
  switch (name) {
    case 'open':
      return _$open;
    case 'dismissed':
      return _$dismissed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CodeScanningAlertSetState> _$values =
    new BuiltSet<CodeScanningAlertSetState>(const <CodeScanningAlertSetState>[
  _$open,
  _$dismissed,
]);

class _$CodeScanningAlertSetStateMeta {
  const _$CodeScanningAlertSetStateMeta();
  CodeScanningAlertSetState get open => _$open;
  CodeScanningAlertSetState get dismissed => _$dismissed;
  CodeScanningAlertSetState valueOf(String name) => _$valueOf(name);
  BuiltSet<CodeScanningAlertSetState> get values => _$values;
}

abstract class _$CodeScanningAlertSetStateMixin {
  // ignore: non_constant_identifier_names
  _$CodeScanningAlertSetStateMeta get CodeScanningAlertSetState =>
      const _$CodeScanningAlertSetStateMeta();
}

Serializer<CodeScanningAlertSetState> _$codeScanningAlertSetStateSerializer =
    new _$CodeScanningAlertSetStateSerializer();

class _$CodeScanningAlertSetStateSerializer
    implements PrimitiveSerializer<CodeScanningAlertSetState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'dismissed': 'dismissed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'dismissed': 'dismissed',
  };

  @override
  final Iterable<Type> types = const <Type>[CodeScanningAlertSetState];
  @override
  final String wireName = 'CodeScanningAlertSetState';

  @override
  Object serialize(Serializers serializers, CodeScanningAlertSetState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CodeScanningAlertSetState deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CodeScanningAlertSetState.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

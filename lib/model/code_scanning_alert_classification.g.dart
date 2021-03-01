// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_classification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CodeScanningAlertClassification _$source_ =
    const CodeScanningAlertClassification._('source_');
const CodeScanningAlertClassification _$generated =
    const CodeScanningAlertClassification._('generated');
const CodeScanningAlertClassification _$test =
    const CodeScanningAlertClassification._('test');
const CodeScanningAlertClassification _$library_ =
    const CodeScanningAlertClassification._('library_');

CodeScanningAlertClassification _$valueOf(String name) {
  switch (name) {
    case 'source_':
      return _$source_;
    case 'generated':
      return _$generated;
    case 'test':
      return _$test;
    case 'library_':
      return _$library_;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CodeScanningAlertClassification> _$values = new BuiltSet<
    CodeScanningAlertClassification>(const <CodeScanningAlertClassification>[
  _$source_,
  _$generated,
  _$test,
  _$library_,
]);

class _$CodeScanningAlertClassificationMeta {
  const _$CodeScanningAlertClassificationMeta();
  CodeScanningAlertClassification get source_ => _$source_;
  CodeScanningAlertClassification get generated => _$generated;
  CodeScanningAlertClassification get test => _$test;
  CodeScanningAlertClassification get library_ => _$library_;
  CodeScanningAlertClassification valueOf(String name) => _$valueOf(name);
  BuiltSet<CodeScanningAlertClassification> get values => _$values;
}

abstract class _$CodeScanningAlertClassificationMixin {
  // ignore: non_constant_identifier_names
  _$CodeScanningAlertClassificationMeta get CodeScanningAlertClassification =>
      const _$CodeScanningAlertClassificationMeta();
}

Serializer<CodeScanningAlertClassification>
    _$codeScanningAlertClassificationSerializer =
    new _$CodeScanningAlertClassificationSerializer();

class _$CodeScanningAlertClassificationSerializer
    implements PrimitiveSerializer<CodeScanningAlertClassification> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'source_': 'source',
    'generated': 'generated',
    'test': 'test',
    'library_': 'library',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'source': 'source_',
    'generated': 'generated',
    'test': 'test',
    'library': 'library_',
  };

  @override
  final Iterable<Type> types = const <Type>[CodeScanningAlertClassification];
  @override
  final String wireName = 'CodeScanningAlertClassification';

  @override
  Object serialize(
          Serializers serializers, CodeScanningAlertClassification object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CodeScanningAlertClassification deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CodeScanningAlertClassification.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

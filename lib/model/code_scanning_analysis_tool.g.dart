// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_analysis_tool.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeScanningAnalysisTool> _$codeScanningAnalysisToolSerializer =
    new _$CodeScanningAnalysisToolSerializer();

class _$CodeScanningAnalysisToolSerializer
    implements StructuredSerializer<CodeScanningAnalysisTool> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAnalysisTool,
    _$CodeScanningAnalysisTool
  ];
  @override
  final String wireName = 'CodeScanningAnalysisTool';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAnalysisTool object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(String)));
    }
    if (object.guid != null) {
      result
        ..add('guid')
        ..add(serializers.serialize(object.guid,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CodeScanningAnalysisTool deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningAnalysisToolBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'guid':
          result.guid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningAnalysisTool extends CodeScanningAnalysisTool {
  @override
  final String name;
  @override
  final String version;
  @override
  final String guid;

  factory _$CodeScanningAnalysisTool(
          [void Function(CodeScanningAnalysisToolBuilder) updates]) =>
      (new CodeScanningAnalysisToolBuilder()..update(updates)).build();

  _$CodeScanningAnalysisTool._({this.name, this.version, this.guid})
      : super._();

  @override
  CodeScanningAnalysisTool rebuild(
          void Function(CodeScanningAnalysisToolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAnalysisToolBuilder toBuilder() =>
      new CodeScanningAnalysisToolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAnalysisTool &&
        name == other.name &&
        version == other.version &&
        guid == other.guid;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), version.hashCode), guid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningAnalysisTool')
          ..add('name', name)
          ..add('version', version)
          ..add('guid', guid))
        .toString();
  }
}

class CodeScanningAnalysisToolBuilder
    implements
        Builder<CodeScanningAnalysisTool, CodeScanningAnalysisToolBuilder> {
  _$CodeScanningAnalysisTool _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _guid;
  String get guid => _$this._guid;
  set guid(String guid) => _$this._guid = guid;

  CodeScanningAnalysisToolBuilder() {
    CodeScanningAnalysisTool._initializeBuilder(this);
  }

  CodeScanningAnalysisToolBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _version = _$v.version;
      _guid = _$v.guid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningAnalysisTool other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAnalysisTool;
  }

  @override
  void update(void Function(CodeScanningAnalysisToolBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAnalysisTool build() {
    final _$result = _$v ??
        new _$CodeScanningAnalysisTool._(
            name: name, version: version, guid: guid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeScanningAlertLocation> _$codeScanningAlertLocationSerializer =
    new _$CodeScanningAlertLocationSerializer();

class _$CodeScanningAlertLocationSerializer
    implements StructuredSerializer<CodeScanningAlertLocation> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAlertLocation,
    _$CodeScanningAlertLocation
  ];
  @override
  final String wireName = 'CodeScanningAlertLocation';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAlertLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.startLine != null) {
      result
        ..add('start_line')
        ..add(serializers.serialize(object.startLine,
            specifiedType: const FullType(int)));
    }
    if (object.endLine != null) {
      result
        ..add('end_line')
        ..add(serializers.serialize(object.endLine,
            specifiedType: const FullType(int)));
    }
    if (object.startColumn != null) {
      result
        ..add('start_column')
        ..add(serializers.serialize(object.startColumn,
            specifiedType: const FullType(int)));
    }
    if (object.endColumn != null) {
      result
        ..add('end_column')
        ..add(serializers.serialize(object.endColumn,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CodeScanningAlertLocation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningAlertLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start_line':
          result.startLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'end_line':
          result.endLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_column':
          result.startColumn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'end_column':
          result.endColumn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningAlertLocation extends CodeScanningAlertLocation {
  @override
  final String path;
  @override
  final int startLine;
  @override
  final int endLine;
  @override
  final int startColumn;
  @override
  final int endColumn;

  factory _$CodeScanningAlertLocation(
          [void Function(CodeScanningAlertLocationBuilder) updates]) =>
      (new CodeScanningAlertLocationBuilder()..update(updates)).build();

  _$CodeScanningAlertLocation._(
      {this.path,
      this.startLine,
      this.endLine,
      this.startColumn,
      this.endColumn})
      : super._();

  @override
  CodeScanningAlertLocation rebuild(
          void Function(CodeScanningAlertLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAlertLocationBuilder toBuilder() =>
      new CodeScanningAlertLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAlertLocation &&
        path == other.path &&
        startLine == other.startLine &&
        endLine == other.endLine &&
        startColumn == other.startColumn &&
        endColumn == other.endColumn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, path.hashCode), startLine.hashCode),
                endLine.hashCode),
            startColumn.hashCode),
        endColumn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningAlertLocation')
          ..add('path', path)
          ..add('startLine', startLine)
          ..add('endLine', endLine)
          ..add('startColumn', startColumn)
          ..add('endColumn', endColumn))
        .toString();
  }
}

class CodeScanningAlertLocationBuilder
    implements
        Builder<CodeScanningAlertLocation, CodeScanningAlertLocationBuilder> {
  _$CodeScanningAlertLocation _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  int _startLine;
  int get startLine => _$this._startLine;
  set startLine(int startLine) => _$this._startLine = startLine;

  int _endLine;
  int get endLine => _$this._endLine;
  set endLine(int endLine) => _$this._endLine = endLine;

  int _startColumn;
  int get startColumn => _$this._startColumn;
  set startColumn(int startColumn) => _$this._startColumn = startColumn;

  int _endColumn;
  int get endColumn => _$this._endColumn;
  set endColumn(int endColumn) => _$this._endColumn = endColumn;

  CodeScanningAlertLocationBuilder() {
    CodeScanningAlertLocation._initializeBuilder(this);
  }

  CodeScanningAlertLocationBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _startLine = _$v.startLine;
      _endLine = _$v.endLine;
      _startColumn = _$v.startColumn;
      _endColumn = _$v.endColumn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningAlertLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAlertLocation;
  }

  @override
  void update(void Function(CodeScanningAlertLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAlertLocation build() {
    final _$result = _$v ??
        new _$CodeScanningAlertLocation._(
            path: path,
            startLine: startLine,
            endLine: endLine,
            startColumn: startColumn,
            endColumn: endColumn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

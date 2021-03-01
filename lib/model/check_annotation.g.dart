// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'check_annotation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckAnnotation> _$checkAnnotationSerializer =
    new _$CheckAnnotationSerializer();

class _$CheckAnnotationSerializer
    implements StructuredSerializer<CheckAnnotation> {
  @override
  final Iterable<Type> types = const [CheckAnnotation, _$CheckAnnotation];
  @override
  final String wireName = 'CheckAnnotation';

  @override
  Iterable<Object> serialize(Serializers serializers, CheckAnnotation object,
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
    if (object.annotationLevel != null) {
      result
        ..add('annotation_level')
        ..add(serializers.serialize(object.annotationLevel,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.rawDetails != null) {
      result
        ..add('raw_details')
        ..add(serializers.serialize(object.rawDetails,
            specifiedType: const FullType(String)));
    }
    if (object.blobHref != null) {
      result
        ..add('blob_href')
        ..add(serializers.serialize(object.blobHref,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CheckAnnotation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckAnnotationBuilder();

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
        case 'annotation_level':
          result.annotationLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'raw_details':
          result.rawDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'blob_href':
          result.blobHref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckAnnotation extends CheckAnnotation {
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
  @override
  final String annotationLevel;
  @override
  final String title;
  @override
  final String message;
  @override
  final String rawDetails;
  @override
  final String blobHref;

  factory _$CheckAnnotation([void Function(CheckAnnotationBuilder) updates]) =>
      (new CheckAnnotationBuilder()..update(updates)).build();

  _$CheckAnnotation._(
      {this.path,
      this.startLine,
      this.endLine,
      this.startColumn,
      this.endColumn,
      this.annotationLevel,
      this.title,
      this.message,
      this.rawDetails,
      this.blobHref})
      : super._();

  @override
  CheckAnnotation rebuild(void Function(CheckAnnotationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckAnnotationBuilder toBuilder() =>
      new CheckAnnotationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckAnnotation &&
        path == other.path &&
        startLine == other.startLine &&
        endLine == other.endLine &&
        startColumn == other.startColumn &&
        endColumn == other.endColumn &&
        annotationLevel == other.annotationLevel &&
        title == other.title &&
        message == other.message &&
        rawDetails == other.rawDetails &&
        blobHref == other.blobHref;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, path.hashCode),
                                        startLine.hashCode),
                                    endLine.hashCode),
                                startColumn.hashCode),
                            endColumn.hashCode),
                        annotationLevel.hashCode),
                    title.hashCode),
                message.hashCode),
            rawDetails.hashCode),
        blobHref.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckAnnotation')
          ..add('path', path)
          ..add('startLine', startLine)
          ..add('endLine', endLine)
          ..add('startColumn', startColumn)
          ..add('endColumn', endColumn)
          ..add('annotationLevel', annotationLevel)
          ..add('title', title)
          ..add('message', message)
          ..add('rawDetails', rawDetails)
          ..add('blobHref', blobHref))
        .toString();
  }
}

class CheckAnnotationBuilder
    implements Builder<CheckAnnotation, CheckAnnotationBuilder> {
  _$CheckAnnotation _$v;

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

  String _annotationLevel;
  String get annotationLevel => _$this._annotationLevel;
  set annotationLevel(String annotationLevel) =>
      _$this._annotationLevel = annotationLevel;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _rawDetails;
  String get rawDetails => _$this._rawDetails;
  set rawDetails(String rawDetails) => _$this._rawDetails = rawDetails;

  String _blobHref;
  String get blobHref => _$this._blobHref;
  set blobHref(String blobHref) => _$this._blobHref = blobHref;

  CheckAnnotationBuilder() {
    CheckAnnotation._initializeBuilder(this);
  }

  CheckAnnotationBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _startLine = _$v.startLine;
      _endLine = _$v.endLine;
      _startColumn = _$v.startColumn;
      _endColumn = _$v.endColumn;
      _annotationLevel = _$v.annotationLevel;
      _title = _$v.title;
      _message = _$v.message;
      _rawDetails = _$v.rawDetails;
      _blobHref = _$v.blobHref;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckAnnotation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckAnnotation;
  }

  @override
  void update(void Function(CheckAnnotationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckAnnotation build() {
    final _$result = _$v ??
        new _$CheckAnnotation._(
            path: path,
            startLine: startLine,
            endLine: endLine,
            startColumn: startColumn,
            endColumn: endColumn,
            annotationLevel: annotationLevel,
            title: title,
            message: message,
            rawDetails: rawDetails,
            blobHref: blobHref);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

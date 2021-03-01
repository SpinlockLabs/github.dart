// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gists_files.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GistsFiles> _$gistsFilesSerializer = new _$GistsFilesSerializer();

class _$GistsFilesSerializer implements StructuredSerializer<GistsFiles> {
  @override
  final Iterable<Type> types = const [GistsFiles, _$GistsFiles];
  @override
  final String wireName = 'GistsFiles';

  @override
  Iterable<Object> serialize(Serializers serializers, GistsFiles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GistsFiles deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GistsFilesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GistsFiles extends GistsFiles {
  @override
  final String content;

  factory _$GistsFiles([void Function(GistsFilesBuilder) updates]) =>
      (new GistsFilesBuilder()..update(updates)).build();

  _$GistsFiles._({this.content}) : super._();

  @override
  GistsFiles rebuild(void Function(GistsFilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GistsFilesBuilder toBuilder() => new GistsFilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GistsFiles && content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(0, content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GistsFiles')..add('content', content))
        .toString();
  }
}

class GistsFilesBuilder implements Builder<GistsFiles, GistsFilesBuilder> {
  _$GistsFiles _$v;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  GistsFilesBuilder() {
    GistsFiles._initializeBuilder(this);
  }

  GistsFilesBuilder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GistsFiles other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GistsFiles;
  }

  @override
  void update(void Function(GistsFilesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GistsFiles build() {
    final _$result = _$v ?? new _$GistsFiles._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

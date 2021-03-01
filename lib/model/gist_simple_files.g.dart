// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gist_simple_files.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GistSimpleFiles> _$gistSimpleFilesSerializer =
    new _$GistSimpleFilesSerializer();

class _$GistSimpleFilesSerializer
    implements StructuredSerializer<GistSimpleFiles> {
  @override
  final Iterable<Type> types = const [GistSimpleFiles, _$GistSimpleFiles];
  @override
  final String wireName = 'GistSimpleFiles';

  @override
  Iterable<Object> serialize(Serializers serializers, GistSimpleFiles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.filename != null) {
      result
        ..add('filename')
        ..add(serializers.serialize(object.filename,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.rawUrl != null) {
      result
        ..add('raw_url')
        ..add(serializers.serialize(object.rawUrl,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.truncated != null) {
      result
        ..add('truncated')
        ..add(serializers.serialize(object.truncated,
            specifiedType: const FullType(bool)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GistSimpleFiles deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GistSimpleFilesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'filename':
          result.filename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'raw_url':
          result.rawUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'truncated':
          result.truncated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GistSimpleFiles extends GistSimpleFiles {
  @override
  final String filename;
  @override
  final String type;
  @override
  final String language;
  @override
  final String rawUrl;
  @override
  final int size;
  @override
  final bool truncated;
  @override
  final String content;

  factory _$GistSimpleFiles([void Function(GistSimpleFilesBuilder) updates]) =>
      (new GistSimpleFilesBuilder()..update(updates)).build();

  _$GistSimpleFiles._(
      {this.filename,
      this.type,
      this.language,
      this.rawUrl,
      this.size,
      this.truncated,
      this.content})
      : super._();

  @override
  GistSimpleFiles rebuild(void Function(GistSimpleFilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GistSimpleFilesBuilder toBuilder() =>
      new GistSimpleFilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GistSimpleFiles &&
        filename == other.filename &&
        type == other.type &&
        language == other.language &&
        rawUrl == other.rawUrl &&
        size == other.size &&
        truncated == other.truncated &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, filename.hashCode), type.hashCode),
                        language.hashCode),
                    rawUrl.hashCode),
                size.hashCode),
            truncated.hashCode),
        content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GistSimpleFiles')
          ..add('filename', filename)
          ..add('type', type)
          ..add('language', language)
          ..add('rawUrl', rawUrl)
          ..add('size', size)
          ..add('truncated', truncated)
          ..add('content', content))
        .toString();
  }
}

class GistSimpleFilesBuilder
    implements Builder<GistSimpleFiles, GistSimpleFilesBuilder> {
  _$GistSimpleFiles _$v;

  String _filename;
  String get filename => _$this._filename;
  set filename(String filename) => _$this._filename = filename;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _rawUrl;
  String get rawUrl => _$this._rawUrl;
  set rawUrl(String rawUrl) => _$this._rawUrl = rawUrl;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  bool _truncated;
  bool get truncated => _$this._truncated;
  set truncated(bool truncated) => _$this._truncated = truncated;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  GistSimpleFilesBuilder() {
    GistSimpleFiles._initializeBuilder(this);
  }

  GistSimpleFilesBuilder get _$this {
    if (_$v != null) {
      _filename = _$v.filename;
      _type = _$v.type;
      _language = _$v.language;
      _rawUrl = _$v.rawUrl;
      _size = _$v.size;
      _truncated = _$v.truncated;
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GistSimpleFiles other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GistSimpleFiles;
  }

  @override
  void update(void Function(GistSimpleFilesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GistSimpleFiles build() {
    final _$result = _$v ??
        new _$GistSimpleFiles._(
            filename: filename,
            type: type,
            language: language,
            rawUrl: rawUrl,
            size: size,
            truncated: truncated,
            content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

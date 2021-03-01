// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'base_gist_files.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseGistFiles> _$baseGistFilesSerializer =
    new _$BaseGistFilesSerializer();

class _$BaseGistFilesSerializer implements StructuredSerializer<BaseGistFiles> {
  @override
  final Iterable<Type> types = const [BaseGistFiles, _$BaseGistFiles];
  @override
  final String wireName = 'BaseGistFiles';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseGistFiles object,
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
    return result;
  }

  @override
  BaseGistFiles deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseGistFilesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$BaseGistFiles extends BaseGistFiles {
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

  factory _$BaseGistFiles([void Function(BaseGistFilesBuilder) updates]) =>
      (new BaseGistFilesBuilder()..update(updates)).build();

  _$BaseGistFiles._(
      {this.filename, this.type, this.language, this.rawUrl, this.size})
      : super._();

  @override
  BaseGistFiles rebuild(void Function(BaseGistFilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseGistFilesBuilder toBuilder() => new BaseGistFilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseGistFiles &&
        filename == other.filename &&
        type == other.type &&
        language == other.language &&
        rawUrl == other.rawUrl &&
        size == other.size;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, filename.hashCode), type.hashCode),
                language.hashCode),
            rawUrl.hashCode),
        size.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseGistFiles')
          ..add('filename', filename)
          ..add('type', type)
          ..add('language', language)
          ..add('rawUrl', rawUrl)
          ..add('size', size))
        .toString();
  }
}

class BaseGistFilesBuilder
    implements Builder<BaseGistFiles, BaseGistFilesBuilder> {
  _$BaseGistFiles _$v;

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

  BaseGistFilesBuilder() {
    BaseGistFiles._initializeBuilder(this);
  }

  BaseGistFilesBuilder get _$this {
    if (_$v != null) {
      _filename = _$v.filename;
      _type = _$v.type;
      _language = _$v.language;
      _rawUrl = _$v.rawUrl;
      _size = _$v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseGistFiles other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseGistFiles;
  }

  @override
  void update(void Function(BaseGistFilesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseGistFiles build() {
    final _$result = _$v ??
        new _$BaseGistFiles._(
            filename: filename,
            type: type,
            language: language,
            rawUrl: rawUrl,
            size: size);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

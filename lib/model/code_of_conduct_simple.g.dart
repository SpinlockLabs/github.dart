// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_of_conduct_simple.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeOfConductSimple> _$codeOfConductSimpleSerializer =
    new _$CodeOfConductSimpleSerializer();

class _$CodeOfConductSimpleSerializer
    implements StructuredSerializer<CodeOfConductSimple> {
  @override
  final Iterable<Type> types = const [
    CodeOfConductSimple,
    _$CodeOfConductSimple
  ];
  @override
  final String wireName = 'CodeOfConductSimple';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeOfConductSimple object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.key != null) {
      result
        ..add('key')
        ..add(serializers.serialize(object.key,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CodeOfConductSimple deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeOfConductSimpleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeOfConductSimple extends CodeOfConductSimple {
  @override
  final String url;
  @override
  final String key;
  @override
  final String name;
  @override
  final String htmlUrl;

  factory _$CodeOfConductSimple(
          [void Function(CodeOfConductSimpleBuilder) updates]) =>
      (new CodeOfConductSimpleBuilder()..update(updates)).build();

  _$CodeOfConductSimple._({this.url, this.key, this.name, this.htmlUrl})
      : super._();

  @override
  CodeOfConductSimple rebuild(
          void Function(CodeOfConductSimpleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeOfConductSimpleBuilder toBuilder() =>
      new CodeOfConductSimpleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeOfConductSimple &&
        url == other.url &&
        key == other.key &&
        name == other.name &&
        htmlUrl == other.htmlUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, url.hashCode), key.hashCode), name.hashCode),
        htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeOfConductSimple')
          ..add('url', url)
          ..add('key', key)
          ..add('name', name)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class CodeOfConductSimpleBuilder
    implements Builder<CodeOfConductSimple, CodeOfConductSimpleBuilder> {
  _$CodeOfConductSimple _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  CodeOfConductSimpleBuilder() {
    CodeOfConductSimple._initializeBuilder(this);
  }

  CodeOfConductSimpleBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _key = _$v.key;
      _name = _$v.name;
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeOfConductSimple other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeOfConductSimple;
  }

  @override
  void update(void Function(CodeOfConductSimpleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeOfConductSimple build() {
    final _$result = _$v ??
        new _$CodeOfConductSimple._(
            url: url, key: key, name: name, htmlUrl: htmlUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

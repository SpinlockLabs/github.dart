// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_of_conduct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeOfConduct> _$codeOfConductSerializer =
    new _$CodeOfConductSerializer();

class _$CodeOfConductSerializer implements StructuredSerializer<CodeOfConduct> {
  @override
  final Iterable<Type> types = const [CodeOfConduct, _$CodeOfConduct];
  @override
  final String wireName = 'CodeOfConduct';

  @override
  Iterable<Object> serialize(Serializers serializers, CodeOfConduct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
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
  CodeOfConduct deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeOfConductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
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

class _$CodeOfConduct extends CodeOfConduct {
  @override
  final String key;
  @override
  final String name;
  @override
  final String url;
  @override
  final String body;
  @override
  final String htmlUrl;

  factory _$CodeOfConduct([void Function(CodeOfConductBuilder) updates]) =>
      (new CodeOfConductBuilder()..update(updates)).build();

  _$CodeOfConduct._({this.key, this.name, this.url, this.body, this.htmlUrl})
      : super._();

  @override
  CodeOfConduct rebuild(void Function(CodeOfConductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeOfConductBuilder toBuilder() => new CodeOfConductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeOfConduct &&
        key == other.key &&
        name == other.name &&
        url == other.url &&
        body == other.body &&
        htmlUrl == other.htmlUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, key.hashCode), name.hashCode), url.hashCode),
            body.hashCode),
        htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeOfConduct')
          ..add('key', key)
          ..add('name', name)
          ..add('url', url)
          ..add('body', body)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class CodeOfConductBuilder
    implements Builder<CodeOfConduct, CodeOfConductBuilder> {
  _$CodeOfConduct _$v;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  CodeOfConductBuilder() {
    CodeOfConduct._initializeBuilder(this);
  }

  CodeOfConductBuilder get _$this {
    if (_$v != null) {
      _key = _$v.key;
      _name = _$v.name;
      _url = _$v.url;
      _body = _$v.body;
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeOfConduct other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeOfConduct;
  }

  @override
  void update(void Function(CodeOfConductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeOfConduct build() {
    final _$result = _$v ??
        new _$CodeOfConduct._(
            key: key, name: name, url: url, body: body, htmlUrl: htmlUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

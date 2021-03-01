// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'license_simple.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LicenseSimple> _$licenseSimpleSerializer =
    new _$LicenseSimpleSerializer();

class _$LicenseSimpleSerializer implements StructuredSerializer<LicenseSimple> {
  @override
  final Iterable<Type> types = const [LicenseSimple, _$LicenseSimple];
  @override
  final String wireName = 'LicenseSimple';

  @override
  Iterable<Object> serialize(Serializers serializers, LicenseSimple object,
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
    if (object.spdxId != null) {
      result
        ..add('spdx_id')
        ..add(serializers.serialize(object.spdxId,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
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
  LicenseSimple deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LicenseSimpleBuilder();

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
        case 'spdx_id':
          result.spdxId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
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

class _$LicenseSimple extends LicenseSimple {
  @override
  final String key;
  @override
  final String name;
  @override
  final String url;
  @override
  final String spdxId;
  @override
  final String nodeId;
  @override
  final String htmlUrl;

  factory _$LicenseSimple([void Function(LicenseSimpleBuilder) updates]) =>
      (new LicenseSimpleBuilder()..update(updates)).build();

  _$LicenseSimple._(
      {this.key, this.name, this.url, this.spdxId, this.nodeId, this.htmlUrl})
      : super._();

  @override
  LicenseSimple rebuild(void Function(LicenseSimpleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseSimpleBuilder toBuilder() => new LicenseSimpleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseSimple &&
        key == other.key &&
        name == other.name &&
        url == other.url &&
        spdxId == other.spdxId &&
        nodeId == other.nodeId &&
        htmlUrl == other.htmlUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, key.hashCode), name.hashCode), url.hashCode),
                spdxId.hashCode),
            nodeId.hashCode),
        htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LicenseSimple')
          ..add('key', key)
          ..add('name', name)
          ..add('url', url)
          ..add('spdxId', spdxId)
          ..add('nodeId', nodeId)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class LicenseSimpleBuilder
    implements Builder<LicenseSimple, LicenseSimpleBuilder> {
  _$LicenseSimple _$v;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _spdxId;
  String get spdxId => _$this._spdxId;
  set spdxId(String spdxId) => _$this._spdxId = spdxId;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  LicenseSimpleBuilder() {
    LicenseSimple._initializeBuilder(this);
  }

  LicenseSimpleBuilder get _$this {
    if (_$v != null) {
      _key = _$v.key;
      _name = _$v.name;
      _url = _$v.url;
      _spdxId = _$v.spdxId;
      _nodeId = _$v.nodeId;
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseSimple other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LicenseSimple;
  }

  @override
  void update(void Function(LicenseSimpleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LicenseSimple build() {
    final _$result = _$v ??
        new _$LicenseSimple._(
            key: key,
            name: name,
            url: url,
            spdxId: spdxId,
            nodeId: nodeId,
            htmlUrl: htmlUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'minimal_repository_license.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MinimalRepositoryLicense> _$minimalRepositoryLicenseSerializer =
    new _$MinimalRepositoryLicenseSerializer();

class _$MinimalRepositoryLicenseSerializer
    implements StructuredSerializer<MinimalRepositoryLicense> {
  @override
  final Iterable<Type> types = const [
    MinimalRepositoryLicense,
    _$MinimalRepositoryLicense
  ];
  @override
  final String wireName = 'MinimalRepositoryLicense';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MinimalRepositoryLicense object,
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
    if (object.spdxId != null) {
      result
        ..add('spdx_id')
        ..add(serializers.serialize(object.spdxId,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MinimalRepositoryLicense deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MinimalRepositoryLicenseBuilder();

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
        case 'spdx_id':
          result.spdxId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MinimalRepositoryLicense extends MinimalRepositoryLicense {
  @override
  final String key;
  @override
  final String name;
  @override
  final String spdxId;
  @override
  final String url;
  @override
  final String nodeId;

  factory _$MinimalRepositoryLicense(
          [void Function(MinimalRepositoryLicenseBuilder) updates]) =>
      (new MinimalRepositoryLicenseBuilder()..update(updates)).build();

  _$MinimalRepositoryLicense._(
      {this.key, this.name, this.spdxId, this.url, this.nodeId})
      : super._();

  @override
  MinimalRepositoryLicense rebuild(
          void Function(MinimalRepositoryLicenseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MinimalRepositoryLicenseBuilder toBuilder() =>
      new MinimalRepositoryLicenseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MinimalRepositoryLicense &&
        key == other.key &&
        name == other.name &&
        spdxId == other.spdxId &&
        url == other.url &&
        nodeId == other.nodeId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, key.hashCode), name.hashCode), spdxId.hashCode),
            url.hashCode),
        nodeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MinimalRepositoryLicense')
          ..add('key', key)
          ..add('name', name)
          ..add('spdxId', spdxId)
          ..add('url', url)
          ..add('nodeId', nodeId))
        .toString();
  }
}

class MinimalRepositoryLicenseBuilder
    implements
        Builder<MinimalRepositoryLicense, MinimalRepositoryLicenseBuilder> {
  _$MinimalRepositoryLicense _$v;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _spdxId;
  String get spdxId => _$this._spdxId;
  set spdxId(String spdxId) => _$this._spdxId = spdxId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  MinimalRepositoryLicenseBuilder() {
    MinimalRepositoryLicense._initializeBuilder(this);
  }

  MinimalRepositoryLicenseBuilder get _$this {
    if (_$v != null) {
      _key = _$v.key;
      _name = _$v.name;
      _spdxId = _$v.spdxId;
      _url = _$v.url;
      _nodeId = _$v.nodeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MinimalRepositoryLicense other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MinimalRepositoryLicense;
  }

  @override
  void update(void Function(MinimalRepositoryLicenseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MinimalRepositoryLicense build() {
    final _$result = _$v ??
        new _$MinimalRepositoryLicense._(
            key: key, name: name, spdxId: spdxId, url: url, nodeId: nodeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

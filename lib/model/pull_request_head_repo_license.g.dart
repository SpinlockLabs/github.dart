// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_head_repo_license.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestHeadRepoLicense> _$pullRequestHeadRepoLicenseSerializer =
    new _$PullRequestHeadRepoLicenseSerializer();

class _$PullRequestHeadRepoLicenseSerializer
    implements StructuredSerializer<PullRequestHeadRepoLicense> {
  @override
  final Iterable<Type> types = const [
    PullRequestHeadRepoLicense,
    _$PullRequestHeadRepoLicense
  ];
  @override
  final String wireName = 'PullRequestHeadRepoLicense';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestHeadRepoLicense object,
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
    return result;
  }

  @override
  PullRequestHeadRepoLicense deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestHeadRepoLicenseBuilder();

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
      }
    }

    return result.build();
  }
}

class _$PullRequestHeadRepoLicense extends PullRequestHeadRepoLicense {
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

  factory _$PullRequestHeadRepoLicense(
          [void Function(PullRequestHeadRepoLicenseBuilder) updates]) =>
      (new PullRequestHeadRepoLicenseBuilder()..update(updates)).build();

  _$PullRequestHeadRepoLicense._(
      {this.key, this.name, this.url, this.spdxId, this.nodeId})
      : super._();

  @override
  PullRequestHeadRepoLicense rebuild(
          void Function(PullRequestHeadRepoLicenseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestHeadRepoLicenseBuilder toBuilder() =>
      new PullRequestHeadRepoLicenseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestHeadRepoLicense &&
        key == other.key &&
        name == other.name &&
        url == other.url &&
        spdxId == other.spdxId &&
        nodeId == other.nodeId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, key.hashCode), name.hashCode), url.hashCode),
            spdxId.hashCode),
        nodeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestHeadRepoLicense')
          ..add('key', key)
          ..add('name', name)
          ..add('url', url)
          ..add('spdxId', spdxId)
          ..add('nodeId', nodeId))
        .toString();
  }
}

class PullRequestHeadRepoLicenseBuilder
    implements
        Builder<PullRequestHeadRepoLicense, PullRequestHeadRepoLicenseBuilder> {
  _$PullRequestHeadRepoLicense _$v;

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

  PullRequestHeadRepoLicenseBuilder() {
    PullRequestHeadRepoLicense._initializeBuilder(this);
  }

  PullRequestHeadRepoLicenseBuilder get _$this {
    if (_$v != null) {
      _key = _$v.key;
      _name = _$v.name;
      _url = _$v.url;
      _spdxId = _$v.spdxId;
      _nodeId = _$v.nodeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestHeadRepoLicense other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestHeadRepoLicense;
  }

  @override
  void update(void Function(PullRequestHeadRepoLicenseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestHeadRepoLicense build() {
    final _$result = _$v ??
        new _$PullRequestHeadRepoLicense._(
            key: key, name: name, url: url, spdxId: spdxId, nodeId: nodeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

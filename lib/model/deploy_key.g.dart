// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'deploy_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeployKey> _$deployKeySerializer = new _$DeployKeySerializer();

class _$DeployKeySerializer implements StructuredSerializer<DeployKey> {
  @override
  final Iterable<Type> types = const [DeployKey, _$DeployKey];
  @override
  final String wireName = 'DeployKey';

  @override
  Iterable<Object> serialize(Serializers serializers, DeployKey object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.key != null) {
      result
        ..add('key')
        ..add(serializers.serialize(object.key,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.verified != null) {
      result
        ..add('verified')
        ..add(serializers.serialize(object.verified,
            specifiedType: const FullType(bool)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.readOnly != null) {
      result
        ..add('read_only')
        ..add(serializers.serialize(object.readOnly,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  DeployKey deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeployKeyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verified':
          result.verified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'read_only':
          result.readOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DeployKey extends DeployKey {
  @override
  final int id;
  @override
  final String key;
  @override
  final String url;
  @override
  final String title;
  @override
  final bool verified;
  @override
  final String createdAt;
  @override
  final bool readOnly;

  factory _$DeployKey([void Function(DeployKeyBuilder) updates]) =>
      (new DeployKeyBuilder()..update(updates)).build();

  _$DeployKey._(
      {this.id,
      this.key,
      this.url,
      this.title,
      this.verified,
      this.createdAt,
      this.readOnly})
      : super._();

  @override
  DeployKey rebuild(void Function(DeployKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeployKeyBuilder toBuilder() => new DeployKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeployKey &&
        id == other.id &&
        key == other.key &&
        url == other.url &&
        title == other.title &&
        verified == other.verified &&
        createdAt == other.createdAt &&
        readOnly == other.readOnly;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), key.hashCode), url.hashCode),
                    title.hashCode),
                verified.hashCode),
            createdAt.hashCode),
        readOnly.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeployKey')
          ..add('id', id)
          ..add('key', key)
          ..add('url', url)
          ..add('title', title)
          ..add('verified', verified)
          ..add('createdAt', createdAt)
          ..add('readOnly', readOnly))
        .toString();
  }
}

class DeployKeyBuilder implements Builder<DeployKey, DeployKeyBuilder> {
  _$DeployKey _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  bool _verified;
  bool get verified => _$this._verified;
  set verified(bool verified) => _$this._verified = verified;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  bool _readOnly;
  bool get readOnly => _$this._readOnly;
  set readOnly(bool readOnly) => _$this._readOnly = readOnly;

  DeployKeyBuilder() {
    DeployKey._initializeBuilder(this);
  }

  DeployKeyBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _key = _$v.key;
      _url = _$v.url;
      _title = _$v.title;
      _verified = _$v.verified;
      _createdAt = _$v.createdAt;
      _readOnly = _$v.readOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeployKey other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeployKey;
  }

  @override
  void update(void Function(DeployKeyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeployKey build() {
    final _$result = _$v ??
        new _$DeployKey._(
            id: id,
            key: key,
            url: url,
            title: title,
            verified: verified,
            createdAt: createdAt,
            readOnly: readOnly);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

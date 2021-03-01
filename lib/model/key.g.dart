// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Key> _$keySerializer = new _$KeySerializer();

class _$KeySerializer implements StructuredSerializer<Key> {
  @override
  final Iterable<Type> types = const [Key, _$Key];
  @override
  final String wireName = 'Key';

  @override
  Iterable<Object> serialize(Serializers serializers, Key object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.keyId != null) {
      result
        ..add('key_id')
        ..add(serializers.serialize(object.keyId,
            specifiedType: const FullType(String)));
    }
    if (object.key != null) {
      result
        ..add('key')
        ..add(serializers.serialize(object.key,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
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
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.verified != null) {
      result
        ..add('verified')
        ..add(serializers.serialize(object.verified,
            specifiedType: const FullType(bool)));
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
  Key deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KeyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'key_id':
          result.keyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'verified':
          result.verified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$Key extends Key {
  @override
  final String keyId;
  @override
  final String key;
  @override
  final int id;
  @override
  final String url;
  @override
  final String title;
  @override
  final DateTime createdAt;
  @override
  final bool verified;
  @override
  final bool readOnly;

  factory _$Key([void Function(KeyBuilder) updates]) =>
      (new KeyBuilder()..update(updates)).build();

  _$Key._(
      {this.keyId,
      this.key,
      this.id,
      this.url,
      this.title,
      this.createdAt,
      this.verified,
      this.readOnly})
      : super._();

  @override
  Key rebuild(void Function(KeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyBuilder toBuilder() => new KeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Key &&
        keyId == other.keyId &&
        key == other.key &&
        id == other.id &&
        url == other.url &&
        title == other.title &&
        createdAt == other.createdAt &&
        verified == other.verified &&
        readOnly == other.readOnly;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, keyId.hashCode), key.hashCode),
                            id.hashCode),
                        url.hashCode),
                    title.hashCode),
                createdAt.hashCode),
            verified.hashCode),
        readOnly.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Key')
          ..add('keyId', keyId)
          ..add('key', key)
          ..add('id', id)
          ..add('url', url)
          ..add('title', title)
          ..add('createdAt', createdAt)
          ..add('verified', verified)
          ..add('readOnly', readOnly))
        .toString();
  }
}

class KeyBuilder implements Builder<Key, KeyBuilder> {
  _$Key _$v;

  String _keyId;
  String get keyId => _$this._keyId;
  set keyId(String keyId) => _$this._keyId = keyId;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  bool _verified;
  bool get verified => _$this._verified;
  set verified(bool verified) => _$this._verified = verified;

  bool _readOnly;
  bool get readOnly => _$this._readOnly;
  set readOnly(bool readOnly) => _$this._readOnly = readOnly;

  KeyBuilder() {
    Key._initializeBuilder(this);
  }

  KeyBuilder get _$this {
    if (_$v != null) {
      _keyId = _$v.keyId;
      _key = _$v.key;
      _id = _$v.id;
      _url = _$v.url;
      _title = _$v.title;
      _createdAt = _$v.createdAt;
      _verified = _$v.verified;
      _readOnly = _$v.readOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Key other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Key;
  }

  @override
  void update(void Function(KeyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Key build() {
    final _$result = _$v ??
        new _$Key._(
            keyId: keyId,
            key: key,
            id: id,
            url: url,
            title: title,
            createdAt: createdAt,
            verified: verified,
            readOnly: readOnly);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

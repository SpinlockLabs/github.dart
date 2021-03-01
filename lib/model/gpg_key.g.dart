// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gpg_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpgKey> _$gpgKeySerializer = new _$GpgKeySerializer();

class _$GpgKeySerializer implements StructuredSerializer<GpgKey> {
  @override
  final Iterable<Type> types = const [GpgKey, _$GpgKey];
  @override
  final String wireName = 'GpgKey';

  @override
  Iterable<Object> serialize(Serializers serializers, GpgKey object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.primaryKeyId != null) {
      result
        ..add('primary_key_id')
        ..add(serializers.serialize(object.primaryKeyId,
            specifiedType: const FullType(int)));
    }
    if (object.keyId != null) {
      result
        ..add('key_id')
        ..add(serializers.serialize(object.keyId,
            specifiedType: const FullType(String)));
    }
    if (object.publicKey != null) {
      result
        ..add('public_key')
        ..add(serializers.serialize(object.publicKey,
            specifiedType: const FullType(String)));
    }
    if (object.emails != null) {
      result
        ..add('emails')
        ..add(serializers.serialize(object.emails,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GpgKeyEmails)])));
    }
    if (object.subkeys != null) {
      result
        ..add('subkeys')
        ..add(serializers.serialize(object.subkeys,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GpgKeySubkeys)])));
    }
    if (object.canSign != null) {
      result
        ..add('can_sign')
        ..add(serializers.serialize(object.canSign,
            specifiedType: const FullType(bool)));
    }
    if (object.canEncryptComms != null) {
      result
        ..add('can_encrypt_comms')
        ..add(serializers.serialize(object.canEncryptComms,
            specifiedType: const FullType(bool)));
    }
    if (object.canEncryptStorage != null) {
      result
        ..add('can_encrypt_storage')
        ..add(serializers.serialize(object.canEncryptStorage,
            specifiedType: const FullType(bool)));
    }
    if (object.canCertify != null) {
      result
        ..add('can_certify')
        ..add(serializers.serialize(object.canCertify,
            specifiedType: const FullType(bool)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.expiresAt != null) {
      result
        ..add('expires_at')
        ..add(serializers.serialize(object.expiresAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.rawKey != null) {
      result
        ..add('raw_key')
        ..add(serializers.serialize(object.rawKey,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GpgKey deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpgKeyBuilder();

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
        case 'primary_key_id':
          result.primaryKeyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'key_id':
          result.keyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'public_key':
          result.publicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emails':
          result.emails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GpgKeyEmails)]))
              as BuiltList<Object>);
          break;
        case 'subkeys':
          result.subkeys.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GpgKeySubkeys)]))
              as BuiltList<Object>);
          break;
        case 'can_sign':
          result.canSign = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'can_encrypt_comms':
          result.canEncryptComms = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'can_encrypt_storage':
          result.canEncryptStorage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'can_certify':
          result.canCertify = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'expires_at':
          result.expiresAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'raw_key':
          result.rawKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GpgKey extends GpgKey {
  @override
  final int id;
  @override
  final int primaryKeyId;
  @override
  final String keyId;
  @override
  final String publicKey;
  @override
  final BuiltList<GpgKeyEmails> emails;
  @override
  final BuiltList<GpgKeySubkeys> subkeys;
  @override
  final bool canSign;
  @override
  final bool canEncryptComms;
  @override
  final bool canEncryptStorage;
  @override
  final bool canCertify;
  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final String rawKey;

  factory _$GpgKey([void Function(GpgKeyBuilder) updates]) =>
      (new GpgKeyBuilder()..update(updates)).build();

  _$GpgKey._(
      {this.id,
      this.primaryKeyId,
      this.keyId,
      this.publicKey,
      this.emails,
      this.subkeys,
      this.canSign,
      this.canEncryptComms,
      this.canEncryptStorage,
      this.canCertify,
      this.createdAt,
      this.expiresAt,
      this.rawKey})
      : super._();

  @override
  GpgKey rebuild(void Function(GpgKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpgKeyBuilder toBuilder() => new GpgKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpgKey &&
        id == other.id &&
        primaryKeyId == other.primaryKeyId &&
        keyId == other.keyId &&
        publicKey == other.publicKey &&
        emails == other.emails &&
        subkeys == other.subkeys &&
        canSign == other.canSign &&
        canEncryptComms == other.canEncryptComms &&
        canEncryptStorage == other.canEncryptStorage &&
        canCertify == other.canCertify &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        rawKey == other.rawKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    primaryKeyId.hashCode),
                                                keyId.hashCode),
                                            publicKey.hashCode),
                                        emails.hashCode),
                                    subkeys.hashCode),
                                canSign.hashCode),
                            canEncryptComms.hashCode),
                        canEncryptStorage.hashCode),
                    canCertify.hashCode),
                createdAt.hashCode),
            expiresAt.hashCode),
        rawKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpgKey')
          ..add('id', id)
          ..add('primaryKeyId', primaryKeyId)
          ..add('keyId', keyId)
          ..add('publicKey', publicKey)
          ..add('emails', emails)
          ..add('subkeys', subkeys)
          ..add('canSign', canSign)
          ..add('canEncryptComms', canEncryptComms)
          ..add('canEncryptStorage', canEncryptStorage)
          ..add('canCertify', canCertify)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('rawKey', rawKey))
        .toString();
  }
}

class GpgKeyBuilder implements Builder<GpgKey, GpgKeyBuilder> {
  _$GpgKey _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _primaryKeyId;
  int get primaryKeyId => _$this._primaryKeyId;
  set primaryKeyId(int primaryKeyId) => _$this._primaryKeyId = primaryKeyId;

  String _keyId;
  String get keyId => _$this._keyId;
  set keyId(String keyId) => _$this._keyId = keyId;

  String _publicKey;
  String get publicKey => _$this._publicKey;
  set publicKey(String publicKey) => _$this._publicKey = publicKey;

  ListBuilder<GpgKeyEmails> _emails;
  ListBuilder<GpgKeyEmails> get emails =>
      _$this._emails ??= new ListBuilder<GpgKeyEmails>();
  set emails(ListBuilder<GpgKeyEmails> emails) => _$this._emails = emails;

  ListBuilder<GpgKeySubkeys> _subkeys;
  ListBuilder<GpgKeySubkeys> get subkeys =>
      _$this._subkeys ??= new ListBuilder<GpgKeySubkeys>();
  set subkeys(ListBuilder<GpgKeySubkeys> subkeys) => _$this._subkeys = subkeys;

  bool _canSign;
  bool get canSign => _$this._canSign;
  set canSign(bool canSign) => _$this._canSign = canSign;

  bool _canEncryptComms;
  bool get canEncryptComms => _$this._canEncryptComms;
  set canEncryptComms(bool canEncryptComms) =>
      _$this._canEncryptComms = canEncryptComms;

  bool _canEncryptStorage;
  bool get canEncryptStorage => _$this._canEncryptStorage;
  set canEncryptStorage(bool canEncryptStorage) =>
      _$this._canEncryptStorage = canEncryptStorage;

  bool _canCertify;
  bool get canCertify => _$this._canCertify;
  set canCertify(bool canCertify) => _$this._canCertify = canCertify;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _expiresAt;
  DateTime get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime expiresAt) => _$this._expiresAt = expiresAt;

  String _rawKey;
  String get rawKey => _$this._rawKey;
  set rawKey(String rawKey) => _$this._rawKey = rawKey;

  GpgKeyBuilder() {
    GpgKey._initializeBuilder(this);
  }

  GpgKeyBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _primaryKeyId = _$v.primaryKeyId;
      _keyId = _$v.keyId;
      _publicKey = _$v.publicKey;
      _emails = _$v.emails?.toBuilder();
      _subkeys = _$v.subkeys?.toBuilder();
      _canSign = _$v.canSign;
      _canEncryptComms = _$v.canEncryptComms;
      _canEncryptStorage = _$v.canEncryptStorage;
      _canCertify = _$v.canCertify;
      _createdAt = _$v.createdAt;
      _expiresAt = _$v.expiresAt;
      _rawKey = _$v.rawKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpgKey other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GpgKey;
  }

  @override
  void update(void Function(GpgKeyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GpgKey build() {
    _$GpgKey _$result;
    try {
      _$result = _$v ??
          new _$GpgKey._(
              id: id,
              primaryKeyId: primaryKeyId,
              keyId: keyId,
              publicKey: publicKey,
              emails: _emails?.build(),
              subkeys: _subkeys?.build(),
              canSign: canSign,
              canEncryptComms: canEncryptComms,
              canEncryptStorage: canEncryptStorage,
              canCertify: canCertify,
              createdAt: createdAt,
              expiresAt: expiresAt,
              rawKey: rawKey);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'emails';
        _emails?.build();
        _$failedField = 'subkeys';
        _subkeys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GpgKey', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

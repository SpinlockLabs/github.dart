// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_hooks_hook_id_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoHooksHookIdConfig>
    _$reposOwnerRepoHooksHookIdConfigSerializer =
    new _$ReposOwnerRepoHooksHookIdConfigSerializer();

class _$ReposOwnerRepoHooksHookIdConfigSerializer
    implements StructuredSerializer<ReposOwnerRepoHooksHookIdConfig> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoHooksHookIdConfig,
    _$ReposOwnerRepoHooksHookIdConfig
  ];
  @override
  final String wireName = 'ReposOwnerRepoHooksHookIdConfig';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReposOwnerRepoHooksHookIdConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.contentType != null) {
      result
        ..add('content_type')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
    }
    if (object.secret != null) {
      result
        ..add('secret')
        ..add(serializers.serialize(object.secret,
            specifiedType: const FullType(String)));
    }
    if (object.insecureSsl != null) {
      result
        ..add('insecure_ssl')
        ..add(serializers.serialize(object.insecureSsl,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.room != null) {
      result
        ..add('room')
        ..add(serializers.serialize(object.room,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReposOwnerRepoHooksHookIdConfig deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoHooksHookIdConfigBuilder();

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
        case 'content_type':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secret':
          result.secret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'insecure_ssl':
          result.insecureSsl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'room':
          result.room = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoHooksHookIdConfig
    extends ReposOwnerRepoHooksHookIdConfig {
  @override
  final String url;
  @override
  final String contentType;
  @override
  final String secret;
  @override
  final String insecureSsl;
  @override
  final String address;
  @override
  final String room;

  factory _$ReposOwnerRepoHooksHookIdConfig(
          [void Function(ReposOwnerRepoHooksHookIdConfigBuilder) updates]) =>
      (new ReposOwnerRepoHooksHookIdConfigBuilder()..update(updates)).build();

  _$ReposOwnerRepoHooksHookIdConfig._(
      {this.url,
      this.contentType,
      this.secret,
      this.insecureSsl,
      this.address,
      this.room})
      : super._();

  @override
  ReposOwnerRepoHooksHookIdConfig rebuild(
          void Function(ReposOwnerRepoHooksHookIdConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoHooksHookIdConfigBuilder toBuilder() =>
      new ReposOwnerRepoHooksHookIdConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoHooksHookIdConfig &&
        url == other.url &&
        contentType == other.contentType &&
        secret == other.secret &&
        insecureSsl == other.insecureSsl &&
        address == other.address &&
        room == other.room;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, url.hashCode), contentType.hashCode),
                    secret.hashCode),
                insecureSsl.hashCode),
            address.hashCode),
        room.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReposOwnerRepoHooksHookIdConfig')
          ..add('url', url)
          ..add('contentType', contentType)
          ..add('secret', secret)
          ..add('insecureSsl', insecureSsl)
          ..add('address', address)
          ..add('room', room))
        .toString();
  }
}

class ReposOwnerRepoHooksHookIdConfigBuilder
    implements
        Builder<ReposOwnerRepoHooksHookIdConfig,
            ReposOwnerRepoHooksHookIdConfigBuilder> {
  _$ReposOwnerRepoHooksHookIdConfig _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  String _secret;
  String get secret => _$this._secret;
  set secret(String secret) => _$this._secret = secret;

  String _insecureSsl;
  String get insecureSsl => _$this._insecureSsl;
  set insecureSsl(String insecureSsl) => _$this._insecureSsl = insecureSsl;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _room;
  String get room => _$this._room;
  set room(String room) => _$this._room = room;

  ReposOwnerRepoHooksHookIdConfigBuilder() {
    ReposOwnerRepoHooksHookIdConfig._initializeBuilder(this);
  }

  ReposOwnerRepoHooksHookIdConfigBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _contentType = _$v.contentType;
      _secret = _$v.secret;
      _insecureSsl = _$v.insecureSsl;
      _address = _$v.address;
      _room = _$v.room;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoHooksHookIdConfig other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoHooksHookIdConfig;
  }

  @override
  void update(void Function(ReposOwnerRepoHooksHookIdConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoHooksHookIdConfig build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoHooksHookIdConfig._(
            url: url,
            contentType: contentType,
            secret: secret,
            insecureSsl: insecureSsl,
            address: address,
            room: room);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

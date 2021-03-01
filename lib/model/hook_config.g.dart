// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'hook_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HookConfig> _$hookConfigSerializer = new _$HookConfigSerializer();

class _$HookConfigSerializer implements StructuredSerializer<HookConfig> {
  @override
  final Iterable<Type> types = const [HookConfig, _$HookConfig];
  @override
  final String wireName = 'HookConfig';

  @override
  Iterable<Object> serialize(Serializers serializers, HookConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.room != null) {
      result
        ..add('room')
        ..add(serializers.serialize(object.room,
            specifiedType: const FullType(String)));
    }
    if (object.subdomain != null) {
      result
        ..add('subdomain')
        ..add(serializers.serialize(object.subdomain,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.insecureSsl != null) {
      result
        ..add('insecure_ssl')
        ..add(serializers.serialize(object.insecureSsl,
            specifiedType: const FullType(String)));
    }
    if (object.contentType != null) {
      result
        ..add('content_type')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
    }
    if (object.digest != null) {
      result
        ..add('digest')
        ..add(serializers.serialize(object.digest,
            specifiedType: const FullType(String)));
    }
    if (object.secret != null) {
      result
        ..add('secret')
        ..add(serializers.serialize(object.secret,
            specifiedType: const FullType(String)));
    }
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HookConfig deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HookConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'room':
          result.room = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subdomain':
          result.subdomain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'insecure_ssl':
          result.insecureSsl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content_type':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'digest':
          result.digest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secret':
          result.secret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HookConfig extends HookConfig {
  @override
  final String email;
  @override
  final String password;
  @override
  final String room;
  @override
  final String subdomain;
  @override
  final String url;
  @override
  final String insecureSsl;
  @override
  final String contentType;
  @override
  final String digest;
  @override
  final String secret;
  @override
  final String token;

  factory _$HookConfig([void Function(HookConfigBuilder) updates]) =>
      (new HookConfigBuilder()..update(updates)).build();

  _$HookConfig._(
      {this.email,
      this.password,
      this.room,
      this.subdomain,
      this.url,
      this.insecureSsl,
      this.contentType,
      this.digest,
      this.secret,
      this.token})
      : super._();

  @override
  HookConfig rebuild(void Function(HookConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HookConfigBuilder toBuilder() => new HookConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HookConfig &&
        email == other.email &&
        password == other.password &&
        room == other.room &&
        subdomain == other.subdomain &&
        url == other.url &&
        insecureSsl == other.insecureSsl &&
        contentType == other.contentType &&
        digest == other.digest &&
        secret == other.secret &&
        token == other.token;
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
                                    $jc($jc(0, email.hashCode),
                                        password.hashCode),
                                    room.hashCode),
                                subdomain.hashCode),
                            url.hashCode),
                        insecureSsl.hashCode),
                    contentType.hashCode),
                digest.hashCode),
            secret.hashCode),
        token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HookConfig')
          ..add('email', email)
          ..add('password', password)
          ..add('room', room)
          ..add('subdomain', subdomain)
          ..add('url', url)
          ..add('insecureSsl', insecureSsl)
          ..add('contentType', contentType)
          ..add('digest', digest)
          ..add('secret', secret)
          ..add('token', token))
        .toString();
  }
}

class HookConfigBuilder implements Builder<HookConfig, HookConfigBuilder> {
  _$HookConfig _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _room;
  String get room => _$this._room;
  set room(String room) => _$this._room = room;

  String _subdomain;
  String get subdomain => _$this._subdomain;
  set subdomain(String subdomain) => _$this._subdomain = subdomain;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _insecureSsl;
  String get insecureSsl => _$this._insecureSsl;
  set insecureSsl(String insecureSsl) => _$this._insecureSsl = insecureSsl;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  String _digest;
  String get digest => _$this._digest;
  set digest(String digest) => _$this._digest = digest;

  String _secret;
  String get secret => _$this._secret;
  set secret(String secret) => _$this._secret = secret;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  HookConfigBuilder() {
    HookConfig._initializeBuilder(this);
  }

  HookConfigBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _room = _$v.room;
      _subdomain = _$v.subdomain;
      _url = _$v.url;
      _insecureSsl = _$v.insecureSsl;
      _contentType = _$v.contentType;
      _digest = _$v.digest;
      _secret = _$v.secret;
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HookConfig other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HookConfig;
  }

  @override
  void update(void Function(HookConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HookConfig build() {
    final _$result = _$v ??
        new _$HookConfig._(
            email: email,
            password: password,
            room: room,
            subdomain: subdomain,
            url: url,
            insecureSsl: insecureSsl,
            contentType: contentType,
            digest: digest,
            secret: secret,
            token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

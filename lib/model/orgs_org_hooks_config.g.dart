// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'orgs_org_hooks_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrgsOrgHooksConfig> _$orgsOrgHooksConfigSerializer =
    new _$OrgsOrgHooksConfigSerializer();

class _$OrgsOrgHooksConfigSerializer
    implements StructuredSerializer<OrgsOrgHooksConfig> {
  @override
  final Iterable<Type> types = const [OrgsOrgHooksConfig, _$OrgsOrgHooksConfig];
  @override
  final String wireName = 'OrgsOrgHooksConfig';

  @override
  Iterable<Object> serialize(Serializers serializers, OrgsOrgHooksConfig object,
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
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrgsOrgHooksConfig deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrgsOrgHooksConfigBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrgsOrgHooksConfig extends OrgsOrgHooksConfig {
  @override
  final String url;
  @override
  final String contentType;
  @override
  final String secret;
  @override
  final String insecureSsl;
  @override
  final String username;
  @override
  final String password;

  factory _$OrgsOrgHooksConfig(
          [void Function(OrgsOrgHooksConfigBuilder) updates]) =>
      (new OrgsOrgHooksConfigBuilder()..update(updates)).build();

  _$OrgsOrgHooksConfig._(
      {this.url,
      this.contentType,
      this.secret,
      this.insecureSsl,
      this.username,
      this.password})
      : super._();

  @override
  OrgsOrgHooksConfig rebuild(
          void Function(OrgsOrgHooksConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrgsOrgHooksConfigBuilder toBuilder() =>
      new OrgsOrgHooksConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrgsOrgHooksConfig &&
        url == other.url &&
        contentType == other.contentType &&
        secret == other.secret &&
        insecureSsl == other.insecureSsl &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, url.hashCode), contentType.hashCode),
                    secret.hashCode),
                insecureSsl.hashCode),
            username.hashCode),
        password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrgsOrgHooksConfig')
          ..add('url', url)
          ..add('contentType', contentType)
          ..add('secret', secret)
          ..add('insecureSsl', insecureSsl)
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class OrgsOrgHooksConfigBuilder
    implements Builder<OrgsOrgHooksConfig, OrgsOrgHooksConfigBuilder> {
  _$OrgsOrgHooksConfig _$v;

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

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  OrgsOrgHooksConfigBuilder() {
    OrgsOrgHooksConfig._initializeBuilder(this);
  }

  OrgsOrgHooksConfigBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _contentType = _$v.contentType;
      _secret = _$v.secret;
      _insecureSsl = _$v.insecureSsl;
      _username = _$v.username;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrgsOrgHooksConfig other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrgsOrgHooksConfig;
  }

  @override
  void update(void Function(OrgsOrgHooksConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrgsOrgHooksConfig build() {
    final _$result = _$v ??
        new _$OrgsOrgHooksConfig._(
            url: url,
            contentType: contentType,
            secret: secret,
            insecureSsl: insecureSsl,
            username: username,
            password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

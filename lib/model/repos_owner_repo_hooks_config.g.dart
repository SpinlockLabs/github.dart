// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_hooks_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoHooksConfig> _$reposOwnerRepoHooksConfigSerializer =
    new _$ReposOwnerRepoHooksConfigSerializer();

class _$ReposOwnerRepoHooksConfigSerializer
    implements StructuredSerializer<ReposOwnerRepoHooksConfig> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoHooksConfig,
    _$ReposOwnerRepoHooksConfig
  ];
  @override
  final String wireName = 'ReposOwnerRepoHooksConfig';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReposOwnerRepoHooksConfig object,
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
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    if (object.digest != null) {
      result
        ..add('digest')
        ..add(serializers.serialize(object.digest,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReposOwnerRepoHooksConfig deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoHooksConfigBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'digest':
          result.digest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoHooksConfig extends ReposOwnerRepoHooksConfig {
  @override
  final String url;
  @override
  final String contentType;
  @override
  final String secret;
  @override
  final String insecureSsl;
  @override
  final String token;
  @override
  final String digest;

  factory _$ReposOwnerRepoHooksConfig(
          [void Function(ReposOwnerRepoHooksConfigBuilder) updates]) =>
      (new ReposOwnerRepoHooksConfigBuilder()..update(updates)).build();

  _$ReposOwnerRepoHooksConfig._(
      {this.url,
      this.contentType,
      this.secret,
      this.insecureSsl,
      this.token,
      this.digest})
      : super._();

  @override
  ReposOwnerRepoHooksConfig rebuild(
          void Function(ReposOwnerRepoHooksConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoHooksConfigBuilder toBuilder() =>
      new ReposOwnerRepoHooksConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoHooksConfig &&
        url == other.url &&
        contentType == other.contentType &&
        secret == other.secret &&
        insecureSsl == other.insecureSsl &&
        token == other.token &&
        digest == other.digest;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, url.hashCode), contentType.hashCode),
                    secret.hashCode),
                insecureSsl.hashCode),
            token.hashCode),
        digest.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReposOwnerRepoHooksConfig')
          ..add('url', url)
          ..add('contentType', contentType)
          ..add('secret', secret)
          ..add('insecureSsl', insecureSsl)
          ..add('token', token)
          ..add('digest', digest))
        .toString();
  }
}

class ReposOwnerRepoHooksConfigBuilder
    implements
        Builder<ReposOwnerRepoHooksConfig, ReposOwnerRepoHooksConfigBuilder> {
  _$ReposOwnerRepoHooksConfig _$v;

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

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _digest;
  String get digest => _$this._digest;
  set digest(String digest) => _$this._digest = digest;

  ReposOwnerRepoHooksConfigBuilder() {
    ReposOwnerRepoHooksConfig._initializeBuilder(this);
  }

  ReposOwnerRepoHooksConfigBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _contentType = _$v.contentType;
      _secret = _$v.secret;
      _insecureSsl = _$v.insecureSsl;
      _token = _$v.token;
      _digest = _$v.digest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoHooksConfig other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoHooksConfig;
  }

  @override
  void update(void Function(ReposOwnerRepoHooksConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoHooksConfig build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoHooksConfig._(
            url: url,
            contentType: contentType,
            secret: secret,
            insecureSsl: insecureSsl,
            token: token,
            digest: digest);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

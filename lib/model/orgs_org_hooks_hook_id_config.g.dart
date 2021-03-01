// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'orgs_org_hooks_hook_id_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrgsOrgHooksHookIdConfig> _$orgsOrgHooksHookIdConfigSerializer =
    new _$OrgsOrgHooksHookIdConfigSerializer();

class _$OrgsOrgHooksHookIdConfigSerializer
    implements StructuredSerializer<OrgsOrgHooksHookIdConfig> {
  @override
  final Iterable<Type> types = const [
    OrgsOrgHooksHookIdConfig,
    _$OrgsOrgHooksHookIdConfig
  ];
  @override
  final String wireName = 'OrgsOrgHooksHookIdConfig';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrgsOrgHooksHookIdConfig object,
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
    return result;
  }

  @override
  OrgsOrgHooksHookIdConfig deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrgsOrgHooksHookIdConfigBuilder();

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
      }
    }

    return result.build();
  }
}

class _$OrgsOrgHooksHookIdConfig extends OrgsOrgHooksHookIdConfig {
  @override
  final String url;
  @override
  final String contentType;
  @override
  final String secret;
  @override
  final String insecureSsl;

  factory _$OrgsOrgHooksHookIdConfig(
          [void Function(OrgsOrgHooksHookIdConfigBuilder) updates]) =>
      (new OrgsOrgHooksHookIdConfigBuilder()..update(updates)).build();

  _$OrgsOrgHooksHookIdConfig._(
      {this.url, this.contentType, this.secret, this.insecureSsl})
      : super._();

  @override
  OrgsOrgHooksHookIdConfig rebuild(
          void Function(OrgsOrgHooksHookIdConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrgsOrgHooksHookIdConfigBuilder toBuilder() =>
      new OrgsOrgHooksHookIdConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrgsOrgHooksHookIdConfig &&
        url == other.url &&
        contentType == other.contentType &&
        secret == other.secret &&
        insecureSsl == other.insecureSsl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, url.hashCode), contentType.hashCode), secret.hashCode),
        insecureSsl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrgsOrgHooksHookIdConfig')
          ..add('url', url)
          ..add('contentType', contentType)
          ..add('secret', secret)
          ..add('insecureSsl', insecureSsl))
        .toString();
  }
}

class OrgsOrgHooksHookIdConfigBuilder
    implements
        Builder<OrgsOrgHooksHookIdConfig, OrgsOrgHooksHookIdConfigBuilder> {
  _$OrgsOrgHooksHookIdConfig _$v;

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

  OrgsOrgHooksHookIdConfigBuilder() {
    OrgsOrgHooksHookIdConfig._initializeBuilder(this);
  }

  OrgsOrgHooksHookIdConfigBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _contentType = _$v.contentType;
      _secret = _$v.secret;
      _insecureSsl = _$v.insecureSsl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrgsOrgHooksHookIdConfig other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrgsOrgHooksHookIdConfig;
  }

  @override
  void update(void Function(OrgsOrgHooksHookIdConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrgsOrgHooksHookIdConfig build() {
    final _$result = _$v ??
        new _$OrgsOrgHooksHookIdConfig._(
            url: url,
            contentType: contentType,
            secret: secret,
            insecureSsl: insecureSsl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

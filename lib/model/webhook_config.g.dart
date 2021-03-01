// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'webhook_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WebhookConfig> _$webhookConfigSerializer =
    new _$WebhookConfigSerializer();

class _$WebhookConfigSerializer implements StructuredSerializer<WebhookConfig> {
  @override
  final Iterable<Type> types = const [WebhookConfig, _$WebhookConfig];
  @override
  final String wireName = 'WebhookConfig';

  @override
  Iterable<Object> serialize(Serializers serializers, WebhookConfig object,
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
  WebhookConfig deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WebhookConfigBuilder();

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

class _$WebhookConfig extends WebhookConfig {
  @override
  final String url;
  @override
  final String contentType;
  @override
  final String secret;
  @override
  final String insecureSsl;

  factory _$WebhookConfig([void Function(WebhookConfigBuilder) updates]) =>
      (new WebhookConfigBuilder()..update(updates)).build();

  _$WebhookConfig._({this.url, this.contentType, this.secret, this.insecureSsl})
      : super._();

  @override
  WebhookConfig rebuild(void Function(WebhookConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookConfigBuilder toBuilder() => new WebhookConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookConfig &&
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
    return (newBuiltValueToStringHelper('WebhookConfig')
          ..add('url', url)
          ..add('contentType', contentType)
          ..add('secret', secret)
          ..add('insecureSsl', insecureSsl))
        .toString();
  }
}

class WebhookConfigBuilder
    implements Builder<WebhookConfig, WebhookConfigBuilder> {
  _$WebhookConfig _$v;

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

  WebhookConfigBuilder() {
    WebhookConfig._initializeBuilder(this);
  }

  WebhookConfigBuilder get _$this {
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
  void replace(WebhookConfig other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WebhookConfig;
  }

  @override
  void update(void Function(WebhookConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WebhookConfig build() {
    final _$result = _$v ??
        new _$WebhookConfig._(
            url: url,
            contentType: contentType,
            secret: secret,
            insecureSsl: insecureSsl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

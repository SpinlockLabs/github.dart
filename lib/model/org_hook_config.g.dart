// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'org_hook_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrgHookConfig> _$orgHookConfigSerializer =
    new _$OrgHookConfigSerializer();

class _$OrgHookConfigSerializer implements StructuredSerializer<OrgHookConfig> {
  @override
  final Iterable<Type> types = const [OrgHookConfig, _$OrgHookConfig];
  @override
  final String wireName = 'OrgHookConfig';

  @override
  Iterable<Object> serialize(Serializers serializers, OrgHookConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.secret != null) {
      result
        ..add('secret')
        ..add(serializers.serialize(object.secret,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrgHookConfig deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrgHookConfigBuilder();

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
        case 'insecure_ssl':
          result.insecureSsl = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$OrgHookConfig extends OrgHookConfig {
  @override
  final String url;
  @override
  final String insecureSsl;
  @override
  final String contentType;
  @override
  final String secret;

  factory _$OrgHookConfig([void Function(OrgHookConfigBuilder) updates]) =>
      (new OrgHookConfigBuilder()..update(updates)).build();

  _$OrgHookConfig._({this.url, this.insecureSsl, this.contentType, this.secret})
      : super._();

  @override
  OrgHookConfig rebuild(void Function(OrgHookConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrgHookConfigBuilder toBuilder() => new OrgHookConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrgHookConfig &&
        url == other.url &&
        insecureSsl == other.insecureSsl &&
        contentType == other.contentType &&
        secret == other.secret;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, url.hashCode), insecureSsl.hashCode),
            contentType.hashCode),
        secret.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrgHookConfig')
          ..add('url', url)
          ..add('insecureSsl', insecureSsl)
          ..add('contentType', contentType)
          ..add('secret', secret))
        .toString();
  }
}

class OrgHookConfigBuilder
    implements Builder<OrgHookConfig, OrgHookConfigBuilder> {
  _$OrgHookConfig _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _insecureSsl;
  String get insecureSsl => _$this._insecureSsl;
  set insecureSsl(String insecureSsl) => _$this._insecureSsl = insecureSsl;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  String _secret;
  String get secret => _$this._secret;
  set secret(String secret) => _$this._secret = secret;

  OrgHookConfigBuilder() {
    OrgHookConfig._initializeBuilder(this);
  }

  OrgHookConfigBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _insecureSsl = _$v.insecureSsl;
      _contentType = _$v.contentType;
      _secret = _$v.secret;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrgHookConfig other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrgHookConfig;
  }

  @override
  void update(void Function(OrgHookConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrgHookConfig build() {
    final _$result = _$v ??
        new _$OrgHookConfig._(
            url: url,
            insecureSsl: insecureSsl,
            contentType: contentType,
            secret: secret);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object35.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject35> _$inlineObject35Serializer =
    new _$InlineObject35Serializer();

class _$InlineObject35Serializer
    implements StructuredSerializer<InlineObject35> {
  @override
  final Iterable<Type> types = const [InlineObject35, _$InlineObject35];
  @override
  final String wireName = 'InlineObject35';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject35 object,
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
  InlineObject35 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject35Builder();

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

class _$InlineObject35 extends InlineObject35 {
  @override
  final String url;
  @override
  final String contentType;
  @override
  final String secret;
  @override
  final String insecureSsl;

  factory _$InlineObject35([void Function(InlineObject35Builder) updates]) =>
      (new InlineObject35Builder()..update(updates)).build();

  _$InlineObject35._(
      {this.url, this.contentType, this.secret, this.insecureSsl})
      : super._();

  @override
  InlineObject35 rebuild(void Function(InlineObject35Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject35Builder toBuilder() =>
      new InlineObject35Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject35 &&
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
    return (newBuiltValueToStringHelper('InlineObject35')
          ..add('url', url)
          ..add('contentType', contentType)
          ..add('secret', secret)
          ..add('insecureSsl', insecureSsl))
        .toString();
  }
}

class InlineObject35Builder
    implements Builder<InlineObject35, InlineObject35Builder> {
  _$InlineObject35 _$v;

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

  InlineObject35Builder() {
    InlineObject35._initializeBuilder(this);
  }

  InlineObject35Builder get _$this {
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
  void replace(InlineObject35 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject35;
  }

  @override
  void update(void Function(InlineObject35Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject35 build() {
    final _$result = _$v ??
        new _$InlineObject35._(
            url: url,
            contentType: contentType,
            secret: secret,
            insecureSsl: insecureSsl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

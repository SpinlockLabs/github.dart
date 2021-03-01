// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject> _$inlineObjectSerializer =
    new _$InlineObjectSerializer();

class _$InlineObjectSerializer implements StructuredSerializer<InlineObject> {
  @override
  final Iterable<Type> types = const [InlineObject, _$InlineObject];
  @override
  final String wireName = 'InlineObject';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject object,
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
  InlineObject deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObjectBuilder();

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

class _$InlineObject extends InlineObject {
  @override
  final String url;
  @override
  final String contentType;
  @override
  final String secret;
  @override
  final String insecureSsl;

  factory _$InlineObject([void Function(InlineObjectBuilder) updates]) =>
      (new InlineObjectBuilder()..update(updates)).build();

  _$InlineObject._({this.url, this.contentType, this.secret, this.insecureSsl})
      : super._();

  @override
  InlineObject rebuild(void Function(InlineObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObjectBuilder toBuilder() => new InlineObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject &&
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
    return (newBuiltValueToStringHelper('InlineObject')
          ..add('url', url)
          ..add('contentType', contentType)
          ..add('secret', secret)
          ..add('insecureSsl', insecureSsl))
        .toString();
  }
}

class InlineObjectBuilder
    implements Builder<InlineObject, InlineObjectBuilder> {
  _$InlineObject _$v;

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

  InlineObjectBuilder() {
    InlineObject._initializeBuilder(this);
  }

  InlineObjectBuilder get _$this {
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
  void replace(InlineObject other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject;
  }

  @override
  void update(void Function(InlineObjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject build() {
    final _$result = _$v ??
        new _$InlineObject._(
            url: url,
            contentType: contentType,
            secret: secret,
            insecureSsl: insecureSsl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

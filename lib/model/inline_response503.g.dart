// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response503.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse503> _$inlineResponse503Serializer =
    new _$InlineResponse503Serializer();

class _$InlineResponse503Serializer
    implements StructuredSerializer<InlineResponse503> {
  @override
  final Iterable<Type> types = const [InlineResponse503, _$InlineResponse503];
  @override
  final String wireName = 'InlineResponse503';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse503 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.documentationUrl != null) {
      result
        ..add('documentation_url')
        ..add(serializers.serialize(object.documentationUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineResponse503 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse503Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'documentation_url':
          result.documentationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse503 extends InlineResponse503 {
  @override
  final String code;
  @override
  final String message;
  @override
  final String documentationUrl;

  factory _$InlineResponse503(
          [void Function(InlineResponse503Builder) updates]) =>
      (new InlineResponse503Builder()..update(updates)).build();

  _$InlineResponse503._({this.code, this.message, this.documentationUrl})
      : super._();

  @override
  InlineResponse503 rebuild(void Function(InlineResponse503Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse503Builder toBuilder() =>
      new InlineResponse503Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse503 &&
        code == other.code &&
        message == other.message &&
        documentationUrl == other.documentationUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, code.hashCode), message.hashCode),
        documentationUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse503')
          ..add('code', code)
          ..add('message', message)
          ..add('documentationUrl', documentationUrl))
        .toString();
  }
}

class InlineResponse503Builder
    implements Builder<InlineResponse503, InlineResponse503Builder> {
  _$InlineResponse503 _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  InlineResponse503Builder() {
    InlineResponse503._initializeBuilder(this);
  }

  InlineResponse503Builder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse503 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse503;
  }

  @override
  void update(void Function(InlineResponse503Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse503 build() {
    final _$result = _$v ??
        new _$InlineResponse503._(
            code: code, message: message, documentationUrl: documentationUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

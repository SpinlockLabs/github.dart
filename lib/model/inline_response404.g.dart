// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response404.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse404> _$inlineResponse404Serializer =
    new _$InlineResponse404Serializer();

class _$InlineResponse404Serializer
    implements StructuredSerializer<InlineResponse404> {
  @override
  final Iterable<Type> types = const [InlineResponse404, _$InlineResponse404];
  @override
  final String wireName = 'InlineResponse404';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse404 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
  InlineResponse404 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse404Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$InlineResponse404 extends InlineResponse404 {
  @override
  final String message;
  @override
  final String documentationUrl;

  factory _$InlineResponse404(
          [void Function(InlineResponse404Builder) updates]) =>
      (new InlineResponse404Builder()..update(updates)).build();

  _$InlineResponse404._({this.message, this.documentationUrl}) : super._();

  @override
  InlineResponse404 rebuild(void Function(InlineResponse404Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse404Builder toBuilder() =>
      new InlineResponse404Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse404 &&
        message == other.message &&
        documentationUrl == other.documentationUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), documentationUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse404')
          ..add('message', message)
          ..add('documentationUrl', documentationUrl))
        .toString();
  }
}

class InlineResponse404Builder
    implements Builder<InlineResponse404, InlineResponse404Builder> {
  _$InlineResponse404 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  InlineResponse404Builder() {
    InlineResponse404._initializeBuilder(this);
  }

  InlineResponse404Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse404 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse404;
  }

  @override
  void update(void Function(InlineResponse404Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse404 build() {
    final _$result = _$v ??
        new _$InlineResponse404._(
            message: message, documentationUrl: documentationUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

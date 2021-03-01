// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response415.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse415> _$inlineResponse415Serializer =
    new _$InlineResponse415Serializer();

class _$InlineResponse415Serializer
    implements StructuredSerializer<InlineResponse415> {
  @override
  final Iterable<Type> types = const [InlineResponse415, _$InlineResponse415];
  @override
  final String wireName = 'InlineResponse415';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse415 object,
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
  InlineResponse415 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse415Builder();

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

class _$InlineResponse415 extends InlineResponse415 {
  @override
  final String message;
  @override
  final String documentationUrl;

  factory _$InlineResponse415(
          [void Function(InlineResponse415Builder) updates]) =>
      (new InlineResponse415Builder()..update(updates)).build();

  _$InlineResponse415._({this.message, this.documentationUrl}) : super._();

  @override
  InlineResponse415 rebuild(void Function(InlineResponse415Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse415Builder toBuilder() =>
      new InlineResponse415Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse415 &&
        message == other.message &&
        documentationUrl == other.documentationUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), documentationUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse415')
          ..add('message', message)
          ..add('documentationUrl', documentationUrl))
        .toString();
  }
}

class InlineResponse415Builder
    implements Builder<InlineResponse415, InlineResponse415Builder> {
  _$InlineResponse415 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  InlineResponse415Builder() {
    InlineResponse415._initializeBuilder(this);
  }

  InlineResponse415Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse415 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse415;
  }

  @override
  void update(void Function(InlineResponse415Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse415 build() {
    final _$result = _$v ??
        new _$InlineResponse415._(
            message: message, documentationUrl: documentationUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

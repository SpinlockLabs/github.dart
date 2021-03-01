// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response4031.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse4031> _$inlineResponse4031Serializer =
    new _$InlineResponse4031Serializer();

class _$InlineResponse4031Serializer
    implements StructuredSerializer<InlineResponse4031> {
  @override
  final Iterable<Type> types = const [InlineResponse4031, _$InlineResponse4031];
  @override
  final String wireName = 'InlineResponse4031';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse4031 object,
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
  InlineResponse4031 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse4031Builder();

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

class _$InlineResponse4031 extends InlineResponse4031 {
  @override
  final String message;
  @override
  final String documentationUrl;

  factory _$InlineResponse4031(
          [void Function(InlineResponse4031Builder) updates]) =>
      (new InlineResponse4031Builder()..update(updates)).build();

  _$InlineResponse4031._({this.message, this.documentationUrl}) : super._();

  @override
  InlineResponse4031 rebuild(
          void Function(InlineResponse4031Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse4031Builder toBuilder() =>
      new InlineResponse4031Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse4031 &&
        message == other.message &&
        documentationUrl == other.documentationUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), documentationUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse4031')
          ..add('message', message)
          ..add('documentationUrl', documentationUrl))
        .toString();
  }
}

class InlineResponse4031Builder
    implements Builder<InlineResponse4031, InlineResponse4031Builder> {
  _$InlineResponse4031 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  InlineResponse4031Builder() {
    InlineResponse4031._initializeBuilder(this);
  }

  InlineResponse4031Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse4031 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse4031;
  }

  @override
  void update(void Function(InlineResponse4031Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse4031 build() {
    final _$result = _$v ??
        new _$InlineResponse4031._(
            message: message, documentationUrl: documentationUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

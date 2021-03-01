// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response202.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse202> _$inlineResponse202Serializer =
    new _$InlineResponse202Serializer();

class _$InlineResponse202Serializer
    implements StructuredSerializer<InlineResponse202> {
  @override
  final Iterable<Type> types = const [InlineResponse202, _$InlineResponse202];
  @override
  final String wireName = 'InlineResponse202';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse202 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineResponse202 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse202Builder();

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
      }
    }

    return result.build();
  }
}

class _$InlineResponse202 extends InlineResponse202 {
  @override
  final String message;

  factory _$InlineResponse202(
          [void Function(InlineResponse202Builder) updates]) =>
      (new InlineResponse202Builder()..update(updates)).build();

  _$InlineResponse202._({this.message}) : super._();

  @override
  InlineResponse202 rebuild(void Function(InlineResponse202Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse202Builder toBuilder() =>
      new InlineResponse202Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse202 && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse202')
          ..add('message', message))
        .toString();
  }
}

class InlineResponse202Builder
    implements Builder<InlineResponse202, InlineResponse202Builder> {
  _$InlineResponse202 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  InlineResponse202Builder() {
    InlineResponse202._initializeBuilder(this);
  }

  InlineResponse202Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse202 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse202;
  }

  @override
  void update(void Function(InlineResponse202Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse202 build() {
    final _$result = _$v ?? new _$InlineResponse202._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

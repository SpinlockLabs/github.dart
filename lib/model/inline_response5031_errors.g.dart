// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response5031_errors.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse5031Errors> _$inlineResponse5031ErrorsSerializer =
    new _$InlineResponse5031ErrorsSerializer();

class _$InlineResponse5031ErrorsSerializer
    implements StructuredSerializer<InlineResponse5031Errors> {
  @override
  final Iterable<Type> types = const [
    InlineResponse5031Errors,
    _$InlineResponse5031Errors
  ];
  @override
  final String wireName = 'InlineResponse5031Errors';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse5031Errors object,
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
    return result;
  }

  @override
  InlineResponse5031Errors deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse5031ErrorsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$InlineResponse5031Errors extends InlineResponse5031Errors {
  @override
  final String code;
  @override
  final String message;

  factory _$InlineResponse5031Errors(
          [void Function(InlineResponse5031ErrorsBuilder) updates]) =>
      (new InlineResponse5031ErrorsBuilder()..update(updates)).build();

  _$InlineResponse5031Errors._({this.code, this.message}) : super._();

  @override
  InlineResponse5031Errors rebuild(
          void Function(InlineResponse5031ErrorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse5031ErrorsBuilder toBuilder() =>
      new InlineResponse5031ErrorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse5031Errors &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse5031Errors')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class InlineResponse5031ErrorsBuilder
    implements
        Builder<InlineResponse5031Errors, InlineResponse5031ErrorsBuilder> {
  _$InlineResponse5031Errors _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  InlineResponse5031ErrorsBuilder() {
    InlineResponse5031Errors._initializeBuilder(this);
  }

  InlineResponse5031ErrorsBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse5031Errors other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse5031Errors;
  }

  @override
  void update(void Function(InlineResponse5031ErrorsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse5031Errors build() {
    final _$result =
        _$v ?? new _$InlineResponse5031Errors._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response4033_errors.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse4033Errors> _$inlineResponse4033ErrorsSerializer =
    new _$InlineResponse4033ErrorsSerializer();

class _$InlineResponse4033ErrorsSerializer
    implements StructuredSerializer<InlineResponse4033Errors> {
  @override
  final Iterable<Type> types = const [
    InlineResponse4033Errors,
    _$InlineResponse4033Errors
  ];
  @override
  final String wireName = 'InlineResponse4033Errors';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse4033Errors object,
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
    if (object.resource != null) {
      result
        ..add('resource')
        ..add(serializers.serialize(object.resource,
            specifiedType: const FullType(String)));
    }
    if (object.field != null) {
      result
        ..add('field')
        ..add(serializers.serialize(object.field,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineResponse4033Errors deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse4033ErrorsBuilder();

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
        case 'resource':
          result.resource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'field':
          result.field = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse4033Errors extends InlineResponse4033Errors {
  @override
  final String code;
  @override
  final String message;
  @override
  final String resource;
  @override
  final String field;

  factory _$InlineResponse4033Errors(
          [void Function(InlineResponse4033ErrorsBuilder) updates]) =>
      (new InlineResponse4033ErrorsBuilder()..update(updates)).build();

  _$InlineResponse4033Errors._(
      {this.code, this.message, this.resource, this.field})
      : super._();

  @override
  InlineResponse4033Errors rebuild(
          void Function(InlineResponse4033ErrorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse4033ErrorsBuilder toBuilder() =>
      new InlineResponse4033ErrorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse4033Errors &&
        code == other.code &&
        message == other.message &&
        resource == other.resource &&
        field == other.field;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, code.hashCode), message.hashCode), resource.hashCode),
        field.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse4033Errors')
          ..add('code', code)
          ..add('message', message)
          ..add('resource', resource)
          ..add('field', field))
        .toString();
  }
}

class InlineResponse4033ErrorsBuilder
    implements
        Builder<InlineResponse4033Errors, InlineResponse4033ErrorsBuilder> {
  _$InlineResponse4033Errors _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _resource;
  String get resource => _$this._resource;
  set resource(String resource) => _$this._resource = resource;

  String _field;
  String get field => _$this._field;
  set field(String field) => _$this._field = field;

  InlineResponse4033ErrorsBuilder() {
    InlineResponse4033Errors._initializeBuilder(this);
  }

  InlineResponse4033ErrorsBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _resource = _$v.resource;
      _field = _$v.field;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse4033Errors other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse4033Errors;
  }

  @override
  void update(void Function(InlineResponse4033ErrorsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse4033Errors build() {
    final _$result = _$v ??
        new _$InlineResponse4033Errors._(
            code: code, message: message, resource: resource, field: field);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

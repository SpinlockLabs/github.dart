// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response422_errors.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse422Errors> _$inlineResponse422ErrorsSerializer =
    new _$InlineResponse422ErrorsSerializer();

class _$InlineResponse422ErrorsSerializer
    implements StructuredSerializer<InlineResponse422Errors> {
  @override
  final Iterable<Type> types = const [
    InlineResponse422Errors,
    _$InlineResponse422Errors
  ];
  @override
  final String wireName = 'InlineResponse422Errors';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse422Errors object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(String)));
    }
    if (object.field != null) {
      result
        ..add('field')
        ..add(serializers.serialize(object.field,
            specifiedType: const FullType(String)));
    }
    if (object.resource != null) {
      result
        ..add('resource')
        ..add(serializers.serialize(object.resource,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineResponse422Errors deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse422ErrorsBuilder();

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
        case 'field':
          result.field = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resource':
          result.resource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse422Errors extends InlineResponse422Errors {
  @override
  final String code;
  @override
  final String field;
  @override
  final String resource;

  factory _$InlineResponse422Errors(
          [void Function(InlineResponse422ErrorsBuilder) updates]) =>
      (new InlineResponse422ErrorsBuilder()..update(updates)).build();

  _$InlineResponse422Errors._({this.code, this.field, this.resource})
      : super._();

  @override
  InlineResponse422Errors rebuild(
          void Function(InlineResponse422ErrorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse422ErrorsBuilder toBuilder() =>
      new InlineResponse422ErrorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse422Errors &&
        code == other.code &&
        field == other.field &&
        resource == other.resource;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, code.hashCode), field.hashCode), resource.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse422Errors')
          ..add('code', code)
          ..add('field', field)
          ..add('resource', resource))
        .toString();
  }
}

class InlineResponse422ErrorsBuilder
    implements
        Builder<InlineResponse422Errors, InlineResponse422ErrorsBuilder> {
  _$InlineResponse422Errors _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _field;
  String get field => _$this._field;
  set field(String field) => _$this._field = field;

  String _resource;
  String get resource => _$this._resource;
  set resource(String resource) => _$this._resource = resource;

  InlineResponse422ErrorsBuilder() {
    InlineResponse422Errors._initializeBuilder(this);
  }

  InlineResponse422ErrorsBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _field = _$v.field;
      _resource = _$v.resource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse422Errors other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse422Errors;
  }

  @override
  void update(void Function(InlineResponse422ErrorsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse422Errors build() {
    final _$result = _$v ??
        new _$InlineResponse422Errors._(
            code: code, field: field, resource: resource);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

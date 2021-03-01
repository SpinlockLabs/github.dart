// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object159.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject159> _$inlineObject159Serializer =
    new _$InlineObject159Serializer();

class _$InlineObject159Serializer
    implements StructuredSerializer<InlineObject159> {
  @override
  final Iterable<Type> types = const [InlineObject159, _$InlineObject159];
  @override
  final String wireName = 'InlineObject159';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject159 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.schemas != null) {
      result
        ..add('schemas')
        ..add(serializers.serialize(object.schemas,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.operations != null) {
      result
        ..add('Operations')
        ..add(serializers.serialize(object.operations,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JsonObject)])));
    }
    return result;
  }

  @override
  InlineObject159 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject159Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'schemas':
          result.schemas.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Operations':
          result.operations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JsonObject)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject159 extends InlineObject159 {
  @override
  final BuiltList<String> schemas;
  @override
  final BuiltList<JsonObject> operations;

  factory _$InlineObject159([void Function(InlineObject159Builder) updates]) =>
      (new InlineObject159Builder()..update(updates)).build();

  _$InlineObject159._({this.schemas, this.operations}) : super._();

  @override
  InlineObject159 rebuild(void Function(InlineObject159Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject159Builder toBuilder() =>
      new InlineObject159Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject159 &&
        schemas == other.schemas &&
        operations == other.operations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, schemas.hashCode), operations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject159')
          ..add('schemas', schemas)
          ..add('operations', operations))
        .toString();
  }
}

class InlineObject159Builder
    implements Builder<InlineObject159, InlineObject159Builder> {
  _$InlineObject159 _$v;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

  ListBuilder<JsonObject> _operations;
  ListBuilder<JsonObject> get operations =>
      _$this._operations ??= new ListBuilder<JsonObject>();
  set operations(ListBuilder<JsonObject> operations) =>
      _$this._operations = operations;

  InlineObject159Builder() {
    InlineObject159._initializeBuilder(this);
  }

  InlineObject159Builder get _$this {
    if (_$v != null) {
      _schemas = _$v.schemas?.toBuilder();
      _operations = _$v.operations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject159 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject159;
  }

  @override
  void update(void Function(InlineObject159Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject159 build() {
    _$InlineObject159 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject159._(
              schemas: _schemas?.build(), operations: _operations?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schemas';
        _schemas?.build();
        _$failedField = 'operations';
        _operations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject159', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

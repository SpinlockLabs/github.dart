// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object156.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject156> _$inlineObject156Serializer =
    new _$InlineObject156Serializer();

class _$InlineObject156Serializer
    implements StructuredSerializer<InlineObject156> {
  @override
  final Iterable<Type> types = const [InlineObject156, _$InlineObject156];
  @override
  final String wireName = 'InlineObject156';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject156 object,
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
  InlineObject156 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject156Builder();

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

class _$InlineObject156 extends InlineObject156 {
  @override
  final BuiltList<String> schemas;
  @override
  final BuiltList<JsonObject> operations;

  factory _$InlineObject156([void Function(InlineObject156Builder) updates]) =>
      (new InlineObject156Builder()..update(updates)).build();

  _$InlineObject156._({this.schemas, this.operations}) : super._();

  @override
  InlineObject156 rebuild(void Function(InlineObject156Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject156Builder toBuilder() =>
      new InlineObject156Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject156 &&
        schemas == other.schemas &&
        operations == other.operations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, schemas.hashCode), operations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject156')
          ..add('schemas', schemas)
          ..add('operations', operations))
        .toString();
  }
}

class InlineObject156Builder
    implements Builder<InlineObject156, InlineObject156Builder> {
  _$InlineObject156 _$v;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

  ListBuilder<JsonObject> _operations;
  ListBuilder<JsonObject> get operations =>
      _$this._operations ??= new ListBuilder<JsonObject>();
  set operations(ListBuilder<JsonObject> operations) =>
      _$this._operations = operations;

  InlineObject156Builder() {
    InlineObject156._initializeBuilder(this);
  }

  InlineObject156Builder get _$this {
    if (_$v != null) {
      _schemas = _$v.schemas?.toBuilder();
      _operations = _$v.operations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject156 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject156;
  }

  @override
  void update(void Function(InlineObject156Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject156 build() {
    _$InlineObject156 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject156._(
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
            'InlineObject156', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object162.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject162> _$inlineObject162Serializer =
    new _$InlineObject162Serializer();

class _$InlineObject162Serializer
    implements StructuredSerializer<InlineObject162> {
  @override
  final Iterable<Type> types = const [InlineObject162, _$InlineObject162];
  @override
  final String wireName = 'InlineObject162';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject162 object,
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(ScimV2OrganizationsOrgUsersScimUserIdOperations)
            ])));
    }
    return result;
  }

  @override
  InlineObject162 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject162Builder();

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
              specifiedType: const FullType(BuiltList, const [
                const FullType(ScimV2OrganizationsOrgUsersScimUserIdOperations)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject162 extends InlineObject162 {
  @override
  final BuiltList<String> schemas;
  @override
  final BuiltList<ScimV2OrganizationsOrgUsersScimUserIdOperations> operations;

  factory _$InlineObject162([void Function(InlineObject162Builder) updates]) =>
      (new InlineObject162Builder()..update(updates)).build();

  _$InlineObject162._({this.schemas, this.operations}) : super._();

  @override
  InlineObject162 rebuild(void Function(InlineObject162Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject162Builder toBuilder() =>
      new InlineObject162Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject162 &&
        schemas == other.schemas &&
        operations == other.operations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, schemas.hashCode), operations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject162')
          ..add('schemas', schemas)
          ..add('operations', operations))
        .toString();
  }
}

class InlineObject162Builder
    implements Builder<InlineObject162, InlineObject162Builder> {
  _$InlineObject162 _$v;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

  ListBuilder<ScimV2OrganizationsOrgUsersScimUserIdOperations> _operations;
  ListBuilder<ScimV2OrganizationsOrgUsersScimUserIdOperations> get operations =>
      _$this._operations ??=
          new ListBuilder<ScimV2OrganizationsOrgUsersScimUserIdOperations>();
  set operations(
          ListBuilder<ScimV2OrganizationsOrgUsersScimUserIdOperations>
              operations) =>
      _$this._operations = operations;

  InlineObject162Builder() {
    InlineObject162._initializeBuilder(this);
  }

  InlineObject162Builder get _$this {
    if (_$v != null) {
      _schemas = _$v.schemas?.toBuilder();
      _operations = _$v.operations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject162 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject162;
  }

  @override
  void update(void Function(InlineObject162Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject162 build() {
    _$InlineObject162 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject162._(
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
            'InlineObject162', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

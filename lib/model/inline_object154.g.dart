// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object154.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject154> _$inlineObject154Serializer =
    new _$InlineObject154Serializer();

class _$InlineObject154Serializer
    implements StructuredSerializer<InlineObject154> {
  @override
  final Iterable<Type> types = const [InlineObject154, _$InlineObject154];
  @override
  final String wireName = 'InlineObject154';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject154 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.schemas != null) {
      result
        ..add('schemas')
        ..add(serializers.serialize(object.schemas,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.displayName != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }
    if (object.members != null) {
      result
        ..add('members')
        ..add(serializers.serialize(object.members,
            specifiedType: const FullType(BuiltList, const [
              const FullType(ScimV2EnterprisesEnterpriseGroupsMembers)
            ])));
    }
    return result;
  }

  @override
  InlineObject154 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject154Builder();

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
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'members':
          result.members.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ScimV2EnterprisesEnterpriseGroupsMembers)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject154 extends InlineObject154 {
  @override
  final BuiltList<String> schemas;
  @override
  final String displayName;
  @override
  final BuiltList<ScimV2EnterprisesEnterpriseGroupsMembers> members;

  factory _$InlineObject154([void Function(InlineObject154Builder) updates]) =>
      (new InlineObject154Builder()..update(updates)).build();

  _$InlineObject154._({this.schemas, this.displayName, this.members})
      : super._();

  @override
  InlineObject154 rebuild(void Function(InlineObject154Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject154Builder toBuilder() =>
      new InlineObject154Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject154 &&
        schemas == other.schemas &&
        displayName == other.displayName &&
        members == other.members;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, schemas.hashCode), displayName.hashCode), members.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject154')
          ..add('schemas', schemas)
          ..add('displayName', displayName)
          ..add('members', members))
        .toString();
  }
}

class InlineObject154Builder
    implements Builder<InlineObject154, InlineObject154Builder> {
  _$InlineObject154 _$v;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  ListBuilder<ScimV2EnterprisesEnterpriseGroupsMembers> _members;
  ListBuilder<ScimV2EnterprisesEnterpriseGroupsMembers> get members =>
      _$this._members ??=
          new ListBuilder<ScimV2EnterprisesEnterpriseGroupsMembers>();
  set members(ListBuilder<ScimV2EnterprisesEnterpriseGroupsMembers> members) =>
      _$this._members = members;

  InlineObject154Builder() {
    InlineObject154._initializeBuilder(this);
  }

  InlineObject154Builder get _$this {
    if (_$v != null) {
      _schemas = _$v.schemas?.toBuilder();
      _displayName = _$v.displayName;
      _members = _$v.members?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject154 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject154;
  }

  @override
  void update(void Function(InlineObject154Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject154 build() {
    _$InlineObject154 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject154._(
              schemas: _schemas?.build(),
              displayName: displayName,
              members: _members?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schemas';
        _schemas?.build();

        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject154', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

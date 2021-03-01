// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_group_list_enterprise_resources.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimGroupListEnterpriseResources>
    _$scimGroupListEnterpriseResourcesSerializer =
    new _$ScimGroupListEnterpriseResourcesSerializer();

class _$ScimGroupListEnterpriseResourcesSerializer
    implements StructuredSerializer<ScimGroupListEnterpriseResources> {
  @override
  final Iterable<Type> types = const [
    ScimGroupListEnterpriseResources,
    _$ScimGroupListEnterpriseResources
  ];
  @override
  final String wireName = 'ScimGroupListEnterpriseResources';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimGroupListEnterpriseResources object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.schemas != null) {
      result
        ..add('schemas')
        ..add(serializers.serialize(object.schemas,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.externalId != null) {
      result
        ..add('externalId')
        ..add(serializers.serialize(object.externalId,
            specifiedType: const FullType(String)));
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
            specifiedType: const FullType(BuiltList,
                const [const FullType(ScimGroupListEnterpriseMembers)])));
    }
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(ScimGroupListEnterpriseMeta)));
    }
    return result;
  }

  @override
  ScimGroupListEnterpriseResources deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimGroupListEnterpriseResourcesBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'externalId':
          result.externalId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'members':
          result.members.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ScimGroupListEnterpriseMembers)
              ])) as BuiltList<Object>);
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ScimGroupListEnterpriseMeta))
              as ScimGroupListEnterpriseMeta);
          break;
      }
    }

    return result.build();
  }
}

class _$ScimGroupListEnterpriseResources
    extends ScimGroupListEnterpriseResources {
  @override
  final BuiltList<String> schemas;
  @override
  final String id;
  @override
  final String externalId;
  @override
  final String displayName;
  @override
  final BuiltList<ScimGroupListEnterpriseMembers> members;
  @override
  final ScimGroupListEnterpriseMeta meta;

  factory _$ScimGroupListEnterpriseResources(
          [void Function(ScimGroupListEnterpriseResourcesBuilder) updates]) =>
      (new ScimGroupListEnterpriseResourcesBuilder()..update(updates)).build();

  _$ScimGroupListEnterpriseResources._(
      {this.schemas,
      this.id,
      this.externalId,
      this.displayName,
      this.members,
      this.meta})
      : super._();

  @override
  ScimGroupListEnterpriseResources rebuild(
          void Function(ScimGroupListEnterpriseResourcesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimGroupListEnterpriseResourcesBuilder toBuilder() =>
      new ScimGroupListEnterpriseResourcesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimGroupListEnterpriseResources &&
        schemas == other.schemas &&
        id == other.id &&
        externalId == other.externalId &&
        displayName == other.displayName &&
        members == other.members &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, schemas.hashCode), id.hashCode),
                    externalId.hashCode),
                displayName.hashCode),
            members.hashCode),
        meta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimGroupListEnterpriseResources')
          ..add('schemas', schemas)
          ..add('id', id)
          ..add('externalId', externalId)
          ..add('displayName', displayName)
          ..add('members', members)
          ..add('meta', meta))
        .toString();
  }
}

class ScimGroupListEnterpriseResourcesBuilder
    implements
        Builder<ScimGroupListEnterpriseResources,
            ScimGroupListEnterpriseResourcesBuilder> {
  _$ScimGroupListEnterpriseResources _$v;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _externalId;
  String get externalId => _$this._externalId;
  set externalId(String externalId) => _$this._externalId = externalId;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  ListBuilder<ScimGroupListEnterpriseMembers> _members;
  ListBuilder<ScimGroupListEnterpriseMembers> get members =>
      _$this._members ??= new ListBuilder<ScimGroupListEnterpriseMembers>();
  set members(ListBuilder<ScimGroupListEnterpriseMembers> members) =>
      _$this._members = members;

  ScimGroupListEnterpriseMetaBuilder _meta;
  ScimGroupListEnterpriseMetaBuilder get meta =>
      _$this._meta ??= new ScimGroupListEnterpriseMetaBuilder();
  set meta(ScimGroupListEnterpriseMetaBuilder meta) => _$this._meta = meta;

  ScimGroupListEnterpriseResourcesBuilder() {
    ScimGroupListEnterpriseResources._initializeBuilder(this);
  }

  ScimGroupListEnterpriseResourcesBuilder get _$this {
    if (_$v != null) {
      _schemas = _$v.schemas?.toBuilder();
      _id = _$v.id;
      _externalId = _$v.externalId;
      _displayName = _$v.displayName;
      _members = _$v.members?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimGroupListEnterpriseResources other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimGroupListEnterpriseResources;
  }

  @override
  void update(void Function(ScimGroupListEnterpriseResourcesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimGroupListEnterpriseResources build() {
    _$ScimGroupListEnterpriseResources _$result;
    try {
      _$result = _$v ??
          new _$ScimGroupListEnterpriseResources._(
              schemas: _schemas?.build(),
              id: id,
              externalId: externalId,
              displayName: displayName,
              members: _members?.build(),
              meta: _meta?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schemas';
        _schemas?.build();

        _$failedField = 'members';
        _members?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScimGroupListEnterpriseResources', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_user_list_enterprise_resources.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimUserListEnterpriseResources>
    _$scimUserListEnterpriseResourcesSerializer =
    new _$ScimUserListEnterpriseResourcesSerializer();

class _$ScimUserListEnterpriseResourcesSerializer
    implements StructuredSerializer<ScimUserListEnterpriseResources> {
  @override
  final Iterable<Type> types = const [
    ScimUserListEnterpriseResources,
    _$ScimUserListEnterpriseResources
  ];
  @override
  final String wireName = 'ScimUserListEnterpriseResources';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimUserListEnterpriseResources object,
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
    if (object.userName != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(object.userName,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(ScimUserListEnterpriseName)));
    }
    if (object.emails != null) {
      result
        ..add('emails')
        ..add(serializers.serialize(object.emails,
            specifiedType: const FullType(BuiltList,
                const [const FullType(ScimUserListEnterpriseEmails)])));
    }
    if (object.groups != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(object.groups,
            specifiedType: const FullType(BuiltList, const [
              const FullType(ScimV2EnterprisesEnterpriseUsersGroups)
            ])));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(bool)));
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
  ScimUserListEnterpriseResources deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimUserListEnterpriseResourcesBuilder();

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
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ScimUserListEnterpriseName))
              as ScimUserListEnterpriseName);
          break;
        case 'emails':
          result.emails.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ScimUserListEnterpriseEmails)
              ])) as BuiltList<Object>);
          break;
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ScimV2EnterprisesEnterpriseUsersGroups)
              ])) as BuiltList<Object>);
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$ScimUserListEnterpriseResources
    extends ScimUserListEnterpriseResources {
  @override
  final BuiltList<String> schemas;
  @override
  final String id;
  @override
  final String externalId;
  @override
  final String userName;
  @override
  final ScimUserListEnterpriseName name;
  @override
  final BuiltList<ScimUserListEnterpriseEmails> emails;
  @override
  final BuiltList<ScimV2EnterprisesEnterpriseUsersGroups> groups;
  @override
  final bool active;
  @override
  final ScimGroupListEnterpriseMeta meta;

  factory _$ScimUserListEnterpriseResources(
          [void Function(ScimUserListEnterpriseResourcesBuilder) updates]) =>
      (new ScimUserListEnterpriseResourcesBuilder()..update(updates)).build();

  _$ScimUserListEnterpriseResources._(
      {this.schemas,
      this.id,
      this.externalId,
      this.userName,
      this.name,
      this.emails,
      this.groups,
      this.active,
      this.meta})
      : super._();

  @override
  ScimUserListEnterpriseResources rebuild(
          void Function(ScimUserListEnterpriseResourcesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimUserListEnterpriseResourcesBuilder toBuilder() =>
      new ScimUserListEnterpriseResourcesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimUserListEnterpriseResources &&
        schemas == other.schemas &&
        id == other.id &&
        externalId == other.externalId &&
        userName == other.userName &&
        name == other.name &&
        emails == other.emails &&
        groups == other.groups &&
        active == other.active &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, schemas.hashCode), id.hashCode),
                                externalId.hashCode),
                            userName.hashCode),
                        name.hashCode),
                    emails.hashCode),
                groups.hashCode),
            active.hashCode),
        meta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimUserListEnterpriseResources')
          ..add('schemas', schemas)
          ..add('id', id)
          ..add('externalId', externalId)
          ..add('userName', userName)
          ..add('name', name)
          ..add('emails', emails)
          ..add('groups', groups)
          ..add('active', active)
          ..add('meta', meta))
        .toString();
  }
}

class ScimUserListEnterpriseResourcesBuilder
    implements
        Builder<ScimUserListEnterpriseResources,
            ScimUserListEnterpriseResourcesBuilder> {
  _$ScimUserListEnterpriseResources _$v;

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

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  ScimUserListEnterpriseNameBuilder _name;
  ScimUserListEnterpriseNameBuilder get name =>
      _$this._name ??= new ScimUserListEnterpriseNameBuilder();
  set name(ScimUserListEnterpriseNameBuilder name) => _$this._name = name;

  ListBuilder<ScimUserListEnterpriseEmails> _emails;
  ListBuilder<ScimUserListEnterpriseEmails> get emails =>
      _$this._emails ??= new ListBuilder<ScimUserListEnterpriseEmails>();
  set emails(ListBuilder<ScimUserListEnterpriseEmails> emails) =>
      _$this._emails = emails;

  ListBuilder<ScimV2EnterprisesEnterpriseUsersGroups> _groups;
  ListBuilder<ScimV2EnterprisesEnterpriseUsersGroups> get groups =>
      _$this._groups ??=
          new ListBuilder<ScimV2EnterprisesEnterpriseUsersGroups>();
  set groups(ListBuilder<ScimV2EnterprisesEnterpriseUsersGroups> groups) =>
      _$this._groups = groups;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  ScimGroupListEnterpriseMetaBuilder _meta;
  ScimGroupListEnterpriseMetaBuilder get meta =>
      _$this._meta ??= new ScimGroupListEnterpriseMetaBuilder();
  set meta(ScimGroupListEnterpriseMetaBuilder meta) => _$this._meta = meta;

  ScimUserListEnterpriseResourcesBuilder() {
    ScimUserListEnterpriseResources._initializeBuilder(this);
  }

  ScimUserListEnterpriseResourcesBuilder get _$this {
    if (_$v != null) {
      _schemas = _$v.schemas?.toBuilder();
      _id = _$v.id;
      _externalId = _$v.externalId;
      _userName = _$v.userName;
      _name = _$v.name?.toBuilder();
      _emails = _$v.emails?.toBuilder();
      _groups = _$v.groups?.toBuilder();
      _active = _$v.active;
      _meta = _$v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimUserListEnterpriseResources other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimUserListEnterpriseResources;
  }

  @override
  void update(void Function(ScimUserListEnterpriseResourcesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimUserListEnterpriseResources build() {
    _$ScimUserListEnterpriseResources _$result;
    try {
      _$result = _$v ??
          new _$ScimUserListEnterpriseResources._(
              schemas: _schemas?.build(),
              id: id,
              externalId: externalId,
              userName: userName,
              name: _name?.build(),
              emails: _emails?.build(),
              groups: _groups?.build(),
              active: active,
              meta: _meta?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schemas';
        _schemas?.build();

        _$failedField = 'name';
        _name?.build();
        _$failedField = 'emails';
        _emails?.build();
        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScimUserListEnterpriseResources', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

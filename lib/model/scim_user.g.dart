// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimUser> _$scimUserSerializer = new _$ScimUserSerializer();

class _$ScimUserSerializer implements StructuredSerializer<ScimUser> {
  @override
  final Iterable<Type> types = const [ScimUser, _$ScimUser];
  @override
  final String wireName = 'ScimUser';

  @override
  Iterable<Object> serialize(Serializers serializers, ScimUser object,
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
    if (object.displayName != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(ScimUserName)));
    }
    if (object.emails != null) {
      result
        ..add('emails')
        ..add(serializers.serialize(object.emails,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ScimUserEmails)])));
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
            specifiedType: const FullType(ScimUserMeta)));
    }
    if (object.organizationId != null) {
      result
        ..add('organization_id')
        ..add(serializers.serialize(object.organizationId,
            specifiedType: const FullType(int)));
    }
    if (object.operations != null) {
      result
        ..add('operations')
        ..add(serializers.serialize(object.operations,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ScimUserOperations)])));
    }
    if (object.groups != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(object.groups,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JsonObject)])));
    }
    return result;
  }

  @override
  ScimUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimUserBuilder();

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
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScimUserName)) as ScimUserName);
          break;
        case 'emails':
          result.emails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ScimUserEmails)]))
              as BuiltList<Object>);
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScimUserMeta)) as ScimUserMeta);
          break;
        case 'organization_id':
          result.organizationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'operations':
          result.operations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ScimUserOperations)]))
              as BuiltList<Object>);
          break;
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JsonObject)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ScimUser extends ScimUser {
  @override
  final BuiltList<String> schemas;
  @override
  final String id;
  @override
  final String externalId;
  @override
  final String userName;
  @override
  final String displayName;
  @override
  final ScimUserName name;
  @override
  final BuiltList<ScimUserEmails> emails;
  @override
  final bool active;
  @override
  final ScimUserMeta meta;
  @override
  final int organizationId;
  @override
  final BuiltList<ScimUserOperations> operations;
  @override
  final BuiltList<JsonObject> groups;

  factory _$ScimUser([void Function(ScimUserBuilder) updates]) =>
      (new ScimUserBuilder()..update(updates)).build();

  _$ScimUser._(
      {this.schemas,
      this.id,
      this.externalId,
      this.userName,
      this.displayName,
      this.name,
      this.emails,
      this.active,
      this.meta,
      this.organizationId,
      this.operations,
      this.groups})
      : super._();

  @override
  ScimUser rebuild(void Function(ScimUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimUserBuilder toBuilder() => new ScimUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimUser &&
        schemas == other.schemas &&
        id == other.id &&
        externalId == other.externalId &&
        userName == other.userName &&
        displayName == other.displayName &&
        name == other.name &&
        emails == other.emails &&
        active == other.active &&
        meta == other.meta &&
        organizationId == other.organizationId &&
        operations == other.operations &&
        groups == other.groups;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, schemas.hashCode),
                                                id.hashCode),
                                            externalId.hashCode),
                                        userName.hashCode),
                                    displayName.hashCode),
                                name.hashCode),
                            emails.hashCode),
                        active.hashCode),
                    meta.hashCode),
                organizationId.hashCode),
            operations.hashCode),
        groups.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimUser')
          ..add('schemas', schemas)
          ..add('id', id)
          ..add('externalId', externalId)
          ..add('userName', userName)
          ..add('displayName', displayName)
          ..add('name', name)
          ..add('emails', emails)
          ..add('active', active)
          ..add('meta', meta)
          ..add('organizationId', organizationId)
          ..add('operations', operations)
          ..add('groups', groups))
        .toString();
  }
}

class ScimUserBuilder implements Builder<ScimUser, ScimUserBuilder> {
  _$ScimUser _$v;

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

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  ScimUserNameBuilder _name;
  ScimUserNameBuilder get name => _$this._name ??= new ScimUserNameBuilder();
  set name(ScimUserNameBuilder name) => _$this._name = name;

  ListBuilder<ScimUserEmails> _emails;
  ListBuilder<ScimUserEmails> get emails =>
      _$this._emails ??= new ListBuilder<ScimUserEmails>();
  set emails(ListBuilder<ScimUserEmails> emails) => _$this._emails = emails;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  ScimUserMetaBuilder _meta;
  ScimUserMetaBuilder get meta => _$this._meta ??= new ScimUserMetaBuilder();
  set meta(ScimUserMetaBuilder meta) => _$this._meta = meta;

  int _organizationId;
  int get organizationId => _$this._organizationId;
  set organizationId(int organizationId) =>
      _$this._organizationId = organizationId;

  ListBuilder<ScimUserOperations> _operations;
  ListBuilder<ScimUserOperations> get operations =>
      _$this._operations ??= new ListBuilder<ScimUserOperations>();
  set operations(ListBuilder<ScimUserOperations> operations) =>
      _$this._operations = operations;

  ListBuilder<JsonObject> _groups;
  ListBuilder<JsonObject> get groups =>
      _$this._groups ??= new ListBuilder<JsonObject>();
  set groups(ListBuilder<JsonObject> groups) => _$this._groups = groups;

  ScimUserBuilder() {
    ScimUser._initializeBuilder(this);
  }

  ScimUserBuilder get _$this {
    if (_$v != null) {
      _schemas = _$v.schemas?.toBuilder();
      _id = _$v.id;
      _externalId = _$v.externalId;
      _userName = _$v.userName;
      _displayName = _$v.displayName;
      _name = _$v.name?.toBuilder();
      _emails = _$v.emails?.toBuilder();
      _active = _$v.active;
      _meta = _$v.meta?.toBuilder();
      _organizationId = _$v.organizationId;
      _operations = _$v.operations?.toBuilder();
      _groups = _$v.groups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimUser;
  }

  @override
  void update(void Function(ScimUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimUser build() {
    _$ScimUser _$result;
    try {
      _$result = _$v ??
          new _$ScimUser._(
              schemas: _schemas?.build(),
              id: id,
              externalId: externalId,
              userName: userName,
              displayName: displayName,
              name: _name?.build(),
              emails: _emails?.build(),
              active: active,
              meta: _meta?.build(),
              organizationId: organizationId,
              operations: _operations?.build(),
              groups: _groups?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schemas';
        _schemas?.build();

        _$failedField = 'name';
        _name?.build();
        _$failedField = 'emails';
        _emails?.build();

        _$failedField = 'meta';
        _meta?.build();

        _$failedField = 'operations';
        _operations?.build();
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScimUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

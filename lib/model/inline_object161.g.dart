// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object161.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject161> _$inlineObject161Serializer =
    new _$InlineObject161Serializer();

class _$InlineObject161Serializer
    implements StructuredSerializer<InlineObject161> {
  @override
  final Iterable<Type> types = const [InlineObject161, _$InlineObject161];
  @override
  final String wireName = 'InlineObject161';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject161 object,
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
    if (object.externalId != null) {
      result
        ..add('externalId')
        ..add(serializers.serialize(object.externalId,
            specifiedType: const FullType(String)));
    }
    if (object.groups != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(object.groups,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(bool)));
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
            specifiedType: const FullType(ScimV2OrganizationsOrgUsersName)));
    }
    if (object.emails != null) {
      result
        ..add('emails')
        ..add(serializers.serialize(object.emails,
            specifiedType: const FullType(BuiltList, const [
              const FullType(ScimV2OrganizationsOrgUsersScimUserIdEmails)
            ])));
    }
    return result;
  }

  @override
  InlineObject161 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject161Builder();

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
        case 'externalId':
          result.externalId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ScimV2OrganizationsOrgUsersName))
              as ScimV2OrganizationsOrgUsersName);
          break;
        case 'emails':
          result.emails.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ScimV2OrganizationsOrgUsersScimUserIdEmails)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject161 extends InlineObject161 {
  @override
  final BuiltList<String> schemas;
  @override
  final String displayName;
  @override
  final String externalId;
  @override
  final BuiltList<String> groups;
  @override
  final bool active;
  @override
  final String userName;
  @override
  final ScimV2OrganizationsOrgUsersName name;
  @override
  final BuiltList<ScimV2OrganizationsOrgUsersScimUserIdEmails> emails;

  factory _$InlineObject161([void Function(InlineObject161Builder) updates]) =>
      (new InlineObject161Builder()..update(updates)).build();

  _$InlineObject161._(
      {this.schemas,
      this.displayName,
      this.externalId,
      this.groups,
      this.active,
      this.userName,
      this.name,
      this.emails})
      : super._();

  @override
  InlineObject161 rebuild(void Function(InlineObject161Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject161Builder toBuilder() =>
      new InlineObject161Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject161 &&
        schemas == other.schemas &&
        displayName == other.displayName &&
        externalId == other.externalId &&
        groups == other.groups &&
        active == other.active &&
        userName == other.userName &&
        name == other.name &&
        emails == other.emails;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, schemas.hashCode), displayName.hashCode),
                            externalId.hashCode),
                        groups.hashCode),
                    active.hashCode),
                userName.hashCode),
            name.hashCode),
        emails.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject161')
          ..add('schemas', schemas)
          ..add('displayName', displayName)
          ..add('externalId', externalId)
          ..add('groups', groups)
          ..add('active', active)
          ..add('userName', userName)
          ..add('name', name)
          ..add('emails', emails))
        .toString();
  }
}

class InlineObject161Builder
    implements Builder<InlineObject161, InlineObject161Builder> {
  _$InlineObject161 _$v;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _externalId;
  String get externalId => _$this._externalId;
  set externalId(String externalId) => _$this._externalId = externalId;

  ListBuilder<String> _groups;
  ListBuilder<String> get groups =>
      _$this._groups ??= new ListBuilder<String>();
  set groups(ListBuilder<String> groups) => _$this._groups = groups;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  ScimV2OrganizationsOrgUsersNameBuilder _name;
  ScimV2OrganizationsOrgUsersNameBuilder get name =>
      _$this._name ??= new ScimV2OrganizationsOrgUsersNameBuilder();
  set name(ScimV2OrganizationsOrgUsersNameBuilder name) => _$this._name = name;

  ListBuilder<ScimV2OrganizationsOrgUsersScimUserIdEmails> _emails;
  ListBuilder<ScimV2OrganizationsOrgUsersScimUserIdEmails> get emails =>
      _$this._emails ??=
          new ListBuilder<ScimV2OrganizationsOrgUsersScimUserIdEmails>();
  set emails(ListBuilder<ScimV2OrganizationsOrgUsersScimUserIdEmails> emails) =>
      _$this._emails = emails;

  InlineObject161Builder() {
    InlineObject161._initializeBuilder(this);
  }

  InlineObject161Builder get _$this {
    if (_$v != null) {
      _schemas = _$v.schemas?.toBuilder();
      _displayName = _$v.displayName;
      _externalId = _$v.externalId;
      _groups = _$v.groups?.toBuilder();
      _active = _$v.active;
      _userName = _$v.userName;
      _name = _$v.name?.toBuilder();
      _emails = _$v.emails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject161 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject161;
  }

  @override
  void update(void Function(InlineObject161Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject161 build() {
    _$InlineObject161 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject161._(
              schemas: _schemas?.build(),
              displayName: displayName,
              externalId: externalId,
              groups: _groups?.build(),
              active: active,
              userName: userName,
              name: _name?.build(),
              emails: _emails?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schemas';
        _schemas?.build();

        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'name';
        _name?.build();
        _$failedField = 'emails';
        _emails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject161', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

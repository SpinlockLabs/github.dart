// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object160.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject160> _$inlineObject160Serializer =
    new _$InlineObject160Serializer();

class _$InlineObject160Serializer
    implements StructuredSerializer<InlineObject160> {
  @override
  final Iterable<Type> types = const [InlineObject160, _$InlineObject160];
  @override
  final String wireName = 'InlineObject160';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject160 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
            specifiedType: const FullType(ScimV2OrganizationsOrgUsersName)));
    }
    if (object.emails != null) {
      result
        ..add('emails')
        ..add(serializers.serialize(object.emails,
            specifiedType: const FullType(BuiltList,
                const [const FullType(ScimV2OrganizationsOrgUsersEmails)])));
    }
    if (object.schemas != null) {
      result
        ..add('schemas')
        ..add(serializers.serialize(object.schemas,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
    return result;
  }

  @override
  InlineObject160 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject160Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
                  specifiedType:
                      const FullType(ScimV2OrganizationsOrgUsersName))
              as ScimV2OrganizationsOrgUsersName);
          break;
        case 'emails':
          result.emails.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ScimV2OrganizationsOrgUsersEmails)
              ])) as BuiltList<Object>);
          break;
        case 'schemas':
          result.schemas.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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
      }
    }

    return result.build();
  }
}

class _$InlineObject160 extends InlineObject160 {
  @override
  final String userName;
  @override
  final String displayName;
  @override
  final ScimV2OrganizationsOrgUsersName name;
  @override
  final BuiltList<ScimV2OrganizationsOrgUsersEmails> emails;
  @override
  final BuiltList<String> schemas;
  @override
  final String externalId;
  @override
  final BuiltList<String> groups;
  @override
  final bool active;

  factory _$InlineObject160([void Function(InlineObject160Builder) updates]) =>
      (new InlineObject160Builder()..update(updates)).build();

  _$InlineObject160._(
      {this.userName,
      this.displayName,
      this.name,
      this.emails,
      this.schemas,
      this.externalId,
      this.groups,
      this.active})
      : super._();

  @override
  InlineObject160 rebuild(void Function(InlineObject160Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject160Builder toBuilder() =>
      new InlineObject160Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject160 &&
        userName == other.userName &&
        displayName == other.displayName &&
        name == other.name &&
        emails == other.emails &&
        schemas == other.schemas &&
        externalId == other.externalId &&
        groups == other.groups &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, userName.hashCode),
                                displayName.hashCode),
                            name.hashCode),
                        emails.hashCode),
                    schemas.hashCode),
                externalId.hashCode),
            groups.hashCode),
        active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject160')
          ..add('userName', userName)
          ..add('displayName', displayName)
          ..add('name', name)
          ..add('emails', emails)
          ..add('schemas', schemas)
          ..add('externalId', externalId)
          ..add('groups', groups)
          ..add('active', active))
        .toString();
  }
}

class InlineObject160Builder
    implements Builder<InlineObject160, InlineObject160Builder> {
  _$InlineObject160 _$v;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  ScimV2OrganizationsOrgUsersNameBuilder _name;
  ScimV2OrganizationsOrgUsersNameBuilder get name =>
      _$this._name ??= new ScimV2OrganizationsOrgUsersNameBuilder();
  set name(ScimV2OrganizationsOrgUsersNameBuilder name) => _$this._name = name;

  ListBuilder<ScimV2OrganizationsOrgUsersEmails> _emails;
  ListBuilder<ScimV2OrganizationsOrgUsersEmails> get emails =>
      _$this._emails ??= new ListBuilder<ScimV2OrganizationsOrgUsersEmails>();
  set emails(ListBuilder<ScimV2OrganizationsOrgUsersEmails> emails) =>
      _$this._emails = emails;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

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

  InlineObject160Builder() {
    InlineObject160._initializeBuilder(this);
  }

  InlineObject160Builder get _$this {
    if (_$v != null) {
      _userName = _$v.userName;
      _displayName = _$v.displayName;
      _name = _$v.name?.toBuilder();
      _emails = _$v.emails?.toBuilder();
      _schemas = _$v.schemas?.toBuilder();
      _externalId = _$v.externalId;
      _groups = _$v.groups?.toBuilder();
      _active = _$v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject160 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject160;
  }

  @override
  void update(void Function(InlineObject160Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject160 build() {
    _$InlineObject160 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject160._(
              userName: userName,
              displayName: displayName,
              name: _name?.build(),
              emails: _emails?.build(),
              schemas: _schemas?.build(),
              externalId: externalId,
              groups: _groups?.build(),
              active: active);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'emails';
        _emails?.build();
        _$failedField = 'schemas';
        _schemas?.build();

        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject160', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

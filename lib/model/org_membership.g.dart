// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'org_membership.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrgMembership> _$orgMembershipSerializer =
    new _$OrgMembershipSerializer();

class _$OrgMembershipSerializer implements StructuredSerializer<OrgMembership> {
  @override
  final Iterable<Type> types = const [OrgMembership, _$OrgMembership];
  @override
  final String wireName = 'OrgMembership';

  @override
  Iterable<Object> serialize(Serializers serializers, OrgMembership object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(String)));
    }
    if (object.organizationUrl != null) {
      result
        ..add('organization_url')
        ..add(serializers.serialize(object.organizationUrl,
            specifiedType: const FullType(String)));
    }
    if (object.organization != null) {
      result
        ..add('organization')
        ..add(serializers.serialize(object.organization,
            specifiedType: const FullType(OrganizationSimple)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(OrgMembershipPermissions)));
    }
    return result;
  }

  @override
  OrgMembership deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrgMembershipBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization_url':
          result.organizationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization':
          result.organization.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OrganizationSimple))
              as OrganizationSimple);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OrgMembershipPermissions))
              as OrgMembershipPermissions);
          break;
      }
    }

    return result.build();
  }
}

class _$OrgMembership extends OrgMembership {
  @override
  final String url;
  @override
  final String state;
  @override
  final String role;
  @override
  final String organizationUrl;
  @override
  final OrganizationSimple organization;
  @override
  final SimpleUser user;
  @override
  final OrgMembershipPermissions permissions;

  factory _$OrgMembership([void Function(OrgMembershipBuilder) updates]) =>
      (new OrgMembershipBuilder()..update(updates)).build();

  _$OrgMembership._(
      {this.url,
      this.state,
      this.role,
      this.organizationUrl,
      this.organization,
      this.user,
      this.permissions})
      : super._();

  @override
  OrgMembership rebuild(void Function(OrgMembershipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrgMembershipBuilder toBuilder() => new OrgMembershipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrgMembership &&
        url == other.url &&
        state == other.state &&
        role == other.role &&
        organizationUrl == other.organizationUrl &&
        organization == other.organization &&
        user == other.user &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, url.hashCode), state.hashCode),
                        role.hashCode),
                    organizationUrl.hashCode),
                organization.hashCode),
            user.hashCode),
        permissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrgMembership')
          ..add('url', url)
          ..add('state', state)
          ..add('role', role)
          ..add('organizationUrl', organizationUrl)
          ..add('organization', organization)
          ..add('user', user)
          ..add('permissions', permissions))
        .toString();
  }
}

class OrgMembershipBuilder
    implements Builder<OrgMembership, OrgMembershipBuilder> {
  _$OrgMembership _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  String _organizationUrl;
  String get organizationUrl => _$this._organizationUrl;
  set organizationUrl(String organizationUrl) =>
      _$this._organizationUrl = organizationUrl;

  OrganizationSimpleBuilder _organization;
  OrganizationSimpleBuilder get organization =>
      _$this._organization ??= new OrganizationSimpleBuilder();
  set organization(OrganizationSimpleBuilder organization) =>
      _$this._organization = organization;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  OrgMembershipPermissionsBuilder _permissions;
  OrgMembershipPermissionsBuilder get permissions =>
      _$this._permissions ??= new OrgMembershipPermissionsBuilder();
  set permissions(OrgMembershipPermissionsBuilder permissions) =>
      _$this._permissions = permissions;

  OrgMembershipBuilder() {
    OrgMembership._initializeBuilder(this);
  }

  OrgMembershipBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _state = _$v.state;
      _role = _$v.role;
      _organizationUrl = _$v.organizationUrl;
      _organization = _$v.organization?.toBuilder();
      _user = _$v.user?.toBuilder();
      _permissions = _$v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrgMembership other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrgMembership;
  }

  @override
  void update(void Function(OrgMembershipBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrgMembership build() {
    _$OrgMembership _$result;
    try {
      _$result = _$v ??
          new _$OrgMembership._(
              url: url,
              state: state,
              role: role,
              organizationUrl: organizationUrl,
              organization: _organization?.build(),
              user: _user?.build(),
              permissions: _permissions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'organization';
        _organization?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrgMembership', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repository_collaborator_permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositoryCollaboratorPermission>
    _$repositoryCollaboratorPermissionSerializer =
    new _$RepositoryCollaboratorPermissionSerializer();

class _$RepositoryCollaboratorPermissionSerializer
    implements StructuredSerializer<RepositoryCollaboratorPermission> {
  @override
  final Iterable<Type> types = const [
    RepositoryCollaboratorPermission,
    _$RepositoryCollaboratorPermission
  ];
  @override
  final String wireName = 'RepositoryCollaboratorPermission';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RepositoryCollaboratorPermission object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    return result;
  }

  @override
  RepositoryCollaboratorPermission deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryCollaboratorPermissionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'permission':
          result.permission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryCollaboratorPermission
    extends RepositoryCollaboratorPermission {
  @override
  final String permission;
  @override
  final SimpleUser user;

  factory _$RepositoryCollaboratorPermission(
          [void Function(RepositoryCollaboratorPermissionBuilder) updates]) =>
      (new RepositoryCollaboratorPermissionBuilder()..update(updates)).build();

  _$RepositoryCollaboratorPermission._({this.permission, this.user})
      : super._();

  @override
  RepositoryCollaboratorPermission rebuild(
          void Function(RepositoryCollaboratorPermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryCollaboratorPermissionBuilder toBuilder() =>
      new RepositoryCollaboratorPermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryCollaboratorPermission &&
        permission == other.permission &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, permission.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositoryCollaboratorPermission')
          ..add('permission', permission)
          ..add('user', user))
        .toString();
  }
}

class RepositoryCollaboratorPermissionBuilder
    implements
        Builder<RepositoryCollaboratorPermission,
            RepositoryCollaboratorPermissionBuilder> {
  _$RepositoryCollaboratorPermission _$v;

  String _permission;
  String get permission => _$this._permission;
  set permission(String permission) => _$this._permission = permission;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  RepositoryCollaboratorPermissionBuilder() {
    RepositoryCollaboratorPermission._initializeBuilder(this);
  }

  RepositoryCollaboratorPermissionBuilder get _$this {
    if (_$v != null) {
      _permission = _$v.permission;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryCollaboratorPermission other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryCollaboratorPermission;
  }

  @override
  void update(void Function(RepositoryCollaboratorPermissionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryCollaboratorPermission build() {
    _$RepositoryCollaboratorPermission _$result;
    try {
      _$result = _$v ??
          new _$RepositoryCollaboratorPermission._(
              permission: permission, user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RepositoryCollaboratorPermission', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_branches_branch_protection_restrictions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoBranchesBranchProtectionRestrictions>
    _$reposOwnerRepoBranchesBranchProtectionRestrictionsSerializer =
    new _$ReposOwnerRepoBranchesBranchProtectionRestrictionsSerializer();

class _$ReposOwnerRepoBranchesBranchProtectionRestrictionsSerializer
    implements
        StructuredSerializer<
            ReposOwnerRepoBranchesBranchProtectionRestrictions> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoBranchesBranchProtectionRestrictions,
    _$ReposOwnerRepoBranchesBranchProtectionRestrictions
  ];
  @override
  final String wireName = 'ReposOwnerRepoBranchesBranchProtectionRestrictions';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ReposOwnerRepoBranchesBranchProtectionRestrictions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.users != null) {
      result
        ..add('users')
        ..add(serializers.serialize(object.users,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.teams != null) {
      result
        ..add('teams')
        ..add(serializers.serialize(object.teams,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.apps != null) {
      result
        ..add('apps')
        ..add(serializers.serialize(object.apps,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ReposOwnerRepoBranchesBranchProtectionRestrictions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'teams':
          result.teams.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'apps':
          result.apps.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoBranchesBranchProtectionRestrictions
    extends ReposOwnerRepoBranchesBranchProtectionRestrictions {
  @override
  final BuiltList<String> users;
  @override
  final BuiltList<String> teams;
  @override
  final BuiltList<String> apps;

  factory _$ReposOwnerRepoBranchesBranchProtectionRestrictions(
          [void Function(
                  ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder)
              updates]) =>
      (new ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder()
            ..update(updates))
          .build();

  _$ReposOwnerRepoBranchesBranchProtectionRestrictions._(
      {this.users, this.teams, this.apps})
      : super._();

  @override
  ReposOwnerRepoBranchesBranchProtectionRestrictions rebuild(
          void Function(
                  ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder toBuilder() =>
      new ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoBranchesBranchProtectionRestrictions &&
        users == other.users &&
        teams == other.teams &&
        apps == other.apps;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, users.hashCode), teams.hashCode), apps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ReposOwnerRepoBranchesBranchProtectionRestrictions')
          ..add('users', users)
          ..add('teams', teams)
          ..add('apps', apps))
        .toString();
  }
}

class ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder
    implements
        Builder<ReposOwnerRepoBranchesBranchProtectionRestrictions,
            ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder> {
  _$ReposOwnerRepoBranchesBranchProtectionRestrictions _$v;

  ListBuilder<String> _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String> users) => _$this._users = users;

  ListBuilder<String> _teams;
  ListBuilder<String> get teams => _$this._teams ??= new ListBuilder<String>();
  set teams(ListBuilder<String> teams) => _$this._teams = teams;

  ListBuilder<String> _apps;
  ListBuilder<String> get apps => _$this._apps ??= new ListBuilder<String>();
  set apps(ListBuilder<String> apps) => _$this._apps = apps;

  ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder() {
    ReposOwnerRepoBranchesBranchProtectionRestrictions._initializeBuilder(this);
  }

  ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _teams = _$v.teams?.toBuilder();
      _apps = _$v.apps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoBranchesBranchProtectionRestrictions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoBranchesBranchProtectionRestrictions;
  }

  @override
  void update(
      void Function(ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoBranchesBranchProtectionRestrictions build() {
    _$ReposOwnerRepoBranchesBranchProtectionRestrictions _$result;
    try {
      _$result = _$v ??
          new _$ReposOwnerRepoBranchesBranchProtectionRestrictions._(
              users: _users?.build(),
              teams: _teams?.build(),
              apps: _apps?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
        _$failedField = 'teams';
        _teams?.build();
        _$failedField = 'apps';
        _apps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReposOwnerRepoBranchesBranchProtectionRestrictions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

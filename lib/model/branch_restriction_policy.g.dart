// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_restriction_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchRestrictionPolicy> _$branchRestrictionPolicySerializer =
    new _$BranchRestrictionPolicySerializer();

class _$BranchRestrictionPolicySerializer
    implements StructuredSerializer<BranchRestrictionPolicy> {
  @override
  final Iterable<Type> types = const [
    BranchRestrictionPolicy,
    _$BranchRestrictionPolicy
  ];
  @override
  final String wireName = 'BranchRestrictionPolicy';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BranchRestrictionPolicy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.usersUrl != null) {
      result
        ..add('users_url')
        ..add(serializers.serialize(object.usersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.teamsUrl != null) {
      result
        ..add('teams_url')
        ..add(serializers.serialize(object.teamsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.appsUrl != null) {
      result
        ..add('apps_url')
        ..add(serializers.serialize(object.appsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.users != null) {
      result
        ..add('users')
        ..add(serializers.serialize(object.users,
            specifiedType: const FullType(BuiltList,
                const [const FullType(RepositoryTemplateRepositoryOwner)])));
    }
    if (object.teams != null) {
      result
        ..add('teams')
        ..add(serializers.serialize(object.teams,
            specifiedType: const FullType(BuiltList,
                const [const FullType(BranchRestrictionPolicyTeams)])));
    }
    if (object.apps != null) {
      result
        ..add('apps')
        ..add(serializers.serialize(object.apps,
            specifiedType: const FullType(BuiltList,
                const [const FullType(BranchRestrictionPolicyApps)])));
    }
    return result;
  }

  @override
  BranchRestrictionPolicy deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchRestrictionPolicyBuilder();

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
        case 'users_url':
          result.usersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'teams_url':
          result.teamsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apps_url':
          result.appsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(RepositoryTemplateRepositoryOwner)
              ])) as BuiltList<Object>);
          break;
        case 'teams':
          result.teams.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BranchRestrictionPolicyTeams)
              ])) as BuiltList<Object>);
          break;
        case 'apps':
          result.apps.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BranchRestrictionPolicyApps)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BranchRestrictionPolicy extends BranchRestrictionPolicy {
  @override
  final String url;
  @override
  final String usersUrl;
  @override
  final String teamsUrl;
  @override
  final String appsUrl;
  @override
  final BuiltList<RepositoryTemplateRepositoryOwner> users;
  @override
  final BuiltList<BranchRestrictionPolicyTeams> teams;
  @override
  final BuiltList<BranchRestrictionPolicyApps> apps;

  factory _$BranchRestrictionPolicy(
          [void Function(BranchRestrictionPolicyBuilder) updates]) =>
      (new BranchRestrictionPolicyBuilder()..update(updates)).build();

  _$BranchRestrictionPolicy._(
      {this.url,
      this.usersUrl,
      this.teamsUrl,
      this.appsUrl,
      this.users,
      this.teams,
      this.apps})
      : super._();

  @override
  BranchRestrictionPolicy rebuild(
          void Function(BranchRestrictionPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchRestrictionPolicyBuilder toBuilder() =>
      new BranchRestrictionPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchRestrictionPolicy &&
        url == other.url &&
        usersUrl == other.usersUrl &&
        teamsUrl == other.teamsUrl &&
        appsUrl == other.appsUrl &&
        users == other.users &&
        teams == other.teams &&
        apps == other.apps;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, url.hashCode), usersUrl.hashCode),
                        teamsUrl.hashCode),
                    appsUrl.hashCode),
                users.hashCode),
            teams.hashCode),
        apps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchRestrictionPolicy')
          ..add('url', url)
          ..add('usersUrl', usersUrl)
          ..add('teamsUrl', teamsUrl)
          ..add('appsUrl', appsUrl)
          ..add('users', users)
          ..add('teams', teams)
          ..add('apps', apps))
        .toString();
  }
}

class BranchRestrictionPolicyBuilder
    implements
        Builder<BranchRestrictionPolicy, BranchRestrictionPolicyBuilder> {
  _$BranchRestrictionPolicy _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _usersUrl;
  String get usersUrl => _$this._usersUrl;
  set usersUrl(String usersUrl) => _$this._usersUrl = usersUrl;

  String _teamsUrl;
  String get teamsUrl => _$this._teamsUrl;
  set teamsUrl(String teamsUrl) => _$this._teamsUrl = teamsUrl;

  String _appsUrl;
  String get appsUrl => _$this._appsUrl;
  set appsUrl(String appsUrl) => _$this._appsUrl = appsUrl;

  ListBuilder<RepositoryTemplateRepositoryOwner> _users;
  ListBuilder<RepositoryTemplateRepositoryOwner> get users =>
      _$this._users ??= new ListBuilder<RepositoryTemplateRepositoryOwner>();
  set users(ListBuilder<RepositoryTemplateRepositoryOwner> users) =>
      _$this._users = users;

  ListBuilder<BranchRestrictionPolicyTeams> _teams;
  ListBuilder<BranchRestrictionPolicyTeams> get teams =>
      _$this._teams ??= new ListBuilder<BranchRestrictionPolicyTeams>();
  set teams(ListBuilder<BranchRestrictionPolicyTeams> teams) =>
      _$this._teams = teams;

  ListBuilder<BranchRestrictionPolicyApps> _apps;
  ListBuilder<BranchRestrictionPolicyApps> get apps =>
      _$this._apps ??= new ListBuilder<BranchRestrictionPolicyApps>();
  set apps(ListBuilder<BranchRestrictionPolicyApps> apps) =>
      _$this._apps = apps;

  BranchRestrictionPolicyBuilder() {
    BranchRestrictionPolicy._initializeBuilder(this);
  }

  BranchRestrictionPolicyBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _usersUrl = _$v.usersUrl;
      _teamsUrl = _$v.teamsUrl;
      _appsUrl = _$v.appsUrl;
      _users = _$v.users?.toBuilder();
      _teams = _$v.teams?.toBuilder();
      _apps = _$v.apps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchRestrictionPolicy other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchRestrictionPolicy;
  }

  @override
  void update(void Function(BranchRestrictionPolicyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchRestrictionPolicy build() {
    _$BranchRestrictionPolicy _$result;
    try {
      _$result = _$v ??
          new _$BranchRestrictionPolicy._(
              url: url,
              usersUrl: usersUrl,
              teamsUrl: teamsUrl,
              appsUrl: appsUrl,
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
            'BranchRestrictionPolicy', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'protected_branch_pull_request_review_dismissal_restrictions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtectedBranchPullRequestReviewDismissalRestrictions>
    _$protectedBranchPullRequestReviewDismissalRestrictionsSerializer =
    new _$ProtectedBranchPullRequestReviewDismissalRestrictionsSerializer();

class _$ProtectedBranchPullRequestReviewDismissalRestrictionsSerializer
    implements
        StructuredSerializer<
            ProtectedBranchPullRequestReviewDismissalRestrictions> {
  @override
  final Iterable<Type> types = const [
    ProtectedBranchPullRequestReviewDismissalRestrictions,
    _$ProtectedBranchPullRequestReviewDismissalRestrictions
  ];
  @override
  final String wireName =
      'ProtectedBranchPullRequestReviewDismissalRestrictions';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ProtectedBranchPullRequestReviewDismissalRestrictions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.users != null) {
      result
        ..add('users')
        ..add(serializers.serialize(object.users,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SimpleUser)])));
    }
    if (object.teams != null) {
      result
        ..add('teams')
        ..add(serializers.serialize(object.teams,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Team)])));
    }
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
    return result;
  }

  @override
  ProtectedBranchPullRequestReviewDismissalRestrictions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SimpleUser)]))
              as BuiltList<Object>);
          break;
        case 'teams':
          result.teams.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Team)]))
              as BuiltList<Object>);
          break;
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
      }
    }

    return result.build();
  }
}

class _$ProtectedBranchPullRequestReviewDismissalRestrictions
    extends ProtectedBranchPullRequestReviewDismissalRestrictions {
  @override
  final BuiltList<SimpleUser> users;
  @override
  final BuiltList<Team> teams;
  @override
  final String url;
  @override
  final String usersUrl;
  @override
  final String teamsUrl;

  factory _$ProtectedBranchPullRequestReviewDismissalRestrictions(
          [void Function(
                  ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder)
              updates]) =>
      (new ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder()
            ..update(updates))
          .build();

  _$ProtectedBranchPullRequestReviewDismissalRestrictions._(
      {this.users, this.teams, this.url, this.usersUrl, this.teamsUrl})
      : super._();

  @override
  ProtectedBranchPullRequestReviewDismissalRestrictions rebuild(
          void Function(
                  ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder toBuilder() =>
      new ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtectedBranchPullRequestReviewDismissalRestrictions &&
        users == other.users &&
        teams == other.teams &&
        url == other.url &&
        usersUrl == other.usersUrl &&
        teamsUrl == other.teamsUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, users.hashCode), teams.hashCode), url.hashCode),
            usersUrl.hashCode),
        teamsUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ProtectedBranchPullRequestReviewDismissalRestrictions')
          ..add('users', users)
          ..add('teams', teams)
          ..add('url', url)
          ..add('usersUrl', usersUrl)
          ..add('teamsUrl', teamsUrl))
        .toString();
  }
}

class ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder
    implements
        Builder<ProtectedBranchPullRequestReviewDismissalRestrictions,
            ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder> {
  _$ProtectedBranchPullRequestReviewDismissalRestrictions _$v;

  ListBuilder<SimpleUser> _users;
  ListBuilder<SimpleUser> get users =>
      _$this._users ??= new ListBuilder<SimpleUser>();
  set users(ListBuilder<SimpleUser> users) => _$this._users = users;

  ListBuilder<Team> _teams;
  ListBuilder<Team> get teams => _$this._teams ??= new ListBuilder<Team>();
  set teams(ListBuilder<Team> teams) => _$this._teams = teams;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _usersUrl;
  String get usersUrl => _$this._usersUrl;
  set usersUrl(String usersUrl) => _$this._usersUrl = usersUrl;

  String _teamsUrl;
  String get teamsUrl => _$this._teamsUrl;
  set teamsUrl(String teamsUrl) => _$this._teamsUrl = teamsUrl;

  ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder() {
    ProtectedBranchPullRequestReviewDismissalRestrictions._initializeBuilder(
        this);
  }

  ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _teams = _$v.teams?.toBuilder();
      _url = _$v.url;
      _usersUrl = _$v.usersUrl;
      _teamsUrl = _$v.teamsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtectedBranchPullRequestReviewDismissalRestrictions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProtectedBranchPullRequestReviewDismissalRestrictions;
  }

  @override
  void update(
      void Function(
              ProtectedBranchPullRequestReviewDismissalRestrictionsBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtectedBranchPullRequestReviewDismissalRestrictions build() {
    _$ProtectedBranchPullRequestReviewDismissalRestrictions _$result;
    try {
      _$result = _$v ??
          new _$ProtectedBranchPullRequestReviewDismissalRestrictions._(
              users: _users?.build(),
              teams: _teams?.build(),
              url: url,
              usersUrl: usersUrl,
              teamsUrl: teamsUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
        _$failedField = 'teams';
        _teams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProtectedBranchPullRequestReviewDismissalRestrictions',
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

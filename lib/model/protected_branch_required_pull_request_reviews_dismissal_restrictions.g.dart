// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'protected_branch_required_pull_request_reviews_dismissal_restrictions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions>
    _$protectedBranchRequiredPullRequestReviewsDismissalRestrictionsSerializer =
    new _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsSerializer();

class _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsSerializer
    implements
        StructuredSerializer<
            ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions> {
  @override
  final Iterable<Type> types = const [
    ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions,
    _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions
  ];
  @override
  final String wireName =
      'ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions object,
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
    return result;
  }

  @override
  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions
    extends ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions {
  @override
  final String url;
  @override
  final String usersUrl;
  @override
  final String teamsUrl;
  @override
  final BuiltList<SimpleUser> users;
  @override
  final BuiltList<Team> teams;

  factory _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions(
          [void Function(
                  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder)
              updates]) =>
      (new ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder()
            ..update(updates))
          .build();

  _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions._(
      {this.url, this.usersUrl, this.teamsUrl, this.users, this.teams})
      : super._();

  @override
  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions rebuild(
          void Function(
                  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder
      toBuilder() =>
          new ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions &&
        url == other.url &&
        usersUrl == other.usersUrl &&
        teamsUrl == other.teamsUrl &&
        users == other.users &&
        teams == other.teams;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, url.hashCode), usersUrl.hashCode),
                teamsUrl.hashCode),
            users.hashCode),
        teams.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions')
          ..add('url', url)
          ..add('usersUrl', usersUrl)
          ..add('teamsUrl', teamsUrl)
          ..add('users', users)
          ..add('teams', teams))
        .toString();
  }
}

class ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder
    implements
        Builder<ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions,
            ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder> {
  _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _usersUrl;
  String get usersUrl => _$this._usersUrl;
  set usersUrl(String usersUrl) => _$this._usersUrl = usersUrl;

  String _teamsUrl;
  String get teamsUrl => _$this._teamsUrl;
  set teamsUrl(String teamsUrl) => _$this._teamsUrl = teamsUrl;

  ListBuilder<SimpleUser> _users;
  ListBuilder<SimpleUser> get users =>
      _$this._users ??= new ListBuilder<SimpleUser>();
  set users(ListBuilder<SimpleUser> users) => _$this._users = users;

  ListBuilder<Team> _teams;
  ListBuilder<Team> get teams => _$this._teams ??= new ListBuilder<Team>();
  set teams(ListBuilder<Team> teams) => _$this._teams = teams;

  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder() {
    ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions
        ._initializeBuilder(this);
  }

  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder
      get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _usersUrl = _$v.usersUrl;
      _teamsUrl = _$v.teamsUrl;
      _users = _$v.users?.toBuilder();
      _teams = _$v.teams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions;
  }

  @override
  void update(
      void Function(
              ProtectedBranchRequiredPullRequestReviewsDismissalRestrictionsBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions build() {
    _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions _$result;
    try {
      _$result = _$v ??
          new _$ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions
                  ._(
              url: url,
              usersUrl: usersUrl,
              teamsUrl: teamsUrl,
              users: _users?.build(),
              teams: _teams?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
        _$failedField = 'teams';
        _teams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions',
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

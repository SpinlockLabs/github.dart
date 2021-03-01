// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_branches_branch_protection_required_pull_request_reviews_dismissal_restrictions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<
        ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions>
    _$reposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsSerializer =
    new _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsSerializer();

class _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsSerializer
    implements
        StructuredSerializer<
            ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions,
    _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
  ];
  @override
  final String wireName =
      'ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions';

  @override
  Iterable<Object> serialize(
      Serializers serializers,
      ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
          object,
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
    return result;
  }

  @override
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
      deserialize(Serializers serializers, Iterable<Object> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
    extends ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions {
  @override
  final BuiltList<String> users;
  @override
  final BuiltList<String> teams;

  factory _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions(
          [void Function(
                  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder)
              updates]) =>
      (new ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder()
            ..update(updates))
          .build();

  _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions._(
      {this.users, this.teams})
      : super._();

  @override
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
      rebuild(
              void Function(
                      ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder
      toBuilder() =>
          new ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions &&
        users == other.users &&
        teams == other.teams;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, users.hashCode), teams.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions')
          ..add('users', users)
          ..add('teams', teams))
        .toString();
  }
}

class ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder
    implements
        Builder<
            ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions,
            ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder> {
  _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
      _$v;

  ListBuilder<String> _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String> users) => _$this._users = users;

  ListBuilder<String> _teams;
  ListBuilder<String> get teams => _$this._teams ??= new ListBuilder<String>();
  set teams(ListBuilder<String> teams) => _$this._teams = teams;

  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder() {
    ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
        ._initializeBuilder(this);
  }

  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder
      get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _teams = _$v.teams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
          other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other
        as _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions;
  }

  @override
  void update(
      void Function(
              ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictionsBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
      build() {
    _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
        _$result;
    try {
      _$result = _$v ??
          new _$ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions
              ._(users: _users?.build(), teams: _teams?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
        _$failedField = 'teams';
        _teams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions',
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_review_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestReviewRequest> _$pullRequestReviewRequestSerializer =
    new _$PullRequestReviewRequestSerializer();

class _$PullRequestReviewRequestSerializer
    implements StructuredSerializer<PullRequestReviewRequest> {
  @override
  final Iterable<Type> types = const [
    PullRequestReviewRequest,
    _$PullRequestReviewRequest
  ];
  @override
  final String wireName = 'PullRequestReviewRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestReviewRequest object,
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
                const FullType(BuiltList, const [const FullType(TeamSimple)])));
    }
    return result;
  }

  @override
  PullRequestReviewRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestReviewRequestBuilder();

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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TeamSimple)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestReviewRequest extends PullRequestReviewRequest {
  @override
  final BuiltList<SimpleUser> users;
  @override
  final BuiltList<TeamSimple> teams;

  factory _$PullRequestReviewRequest(
          [void Function(PullRequestReviewRequestBuilder) updates]) =>
      (new PullRequestReviewRequestBuilder()..update(updates)).build();

  _$PullRequestReviewRequest._({this.users, this.teams}) : super._();

  @override
  PullRequestReviewRequest rebuild(
          void Function(PullRequestReviewRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestReviewRequestBuilder toBuilder() =>
      new PullRequestReviewRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestReviewRequest &&
        users == other.users &&
        teams == other.teams;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, users.hashCode), teams.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestReviewRequest')
          ..add('users', users)
          ..add('teams', teams))
        .toString();
  }
}

class PullRequestReviewRequestBuilder
    implements
        Builder<PullRequestReviewRequest, PullRequestReviewRequestBuilder> {
  _$PullRequestReviewRequest _$v;

  ListBuilder<SimpleUser> _users;
  ListBuilder<SimpleUser> get users =>
      _$this._users ??= new ListBuilder<SimpleUser>();
  set users(ListBuilder<SimpleUser> users) => _$this._users = users;

  ListBuilder<TeamSimple> _teams;
  ListBuilder<TeamSimple> get teams =>
      _$this._teams ??= new ListBuilder<TeamSimple>();
  set teams(ListBuilder<TeamSimple> teams) => _$this._teams = teams;

  PullRequestReviewRequestBuilder() {
    PullRequestReviewRequest._initializeBuilder(this);
  }

  PullRequestReviewRequestBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _teams = _$v.teams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestReviewRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestReviewRequest;
  }

  @override
  void update(void Function(PullRequestReviewRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestReviewRequest build() {
    _$PullRequestReviewRequest _$result;
    try {
      _$result = _$v ??
          new _$PullRequestReviewRequest._(
              users: _users?.build(), teams: _teams?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
        _$failedField = 'teams';
        _teams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestReviewRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

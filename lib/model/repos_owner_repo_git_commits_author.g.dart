// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_git_commits_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoGitCommitsAuthor>
    _$reposOwnerRepoGitCommitsAuthorSerializer =
    new _$ReposOwnerRepoGitCommitsAuthorSerializer();

class _$ReposOwnerRepoGitCommitsAuthorSerializer
    implements StructuredSerializer<ReposOwnerRepoGitCommitsAuthor> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoGitCommitsAuthor,
    _$ReposOwnerRepoGitCommitsAuthor
  ];
  @override
  final String wireName = 'ReposOwnerRepoGitCommitsAuthor';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReposOwnerRepoGitCommitsAuthor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReposOwnerRepoGitCommitsAuthor deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoGitCommitsAuthorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoGitCommitsAuthor extends ReposOwnerRepoGitCommitsAuthor {
  @override
  final String name;
  @override
  final String email;
  @override
  final String date;

  factory _$ReposOwnerRepoGitCommitsAuthor(
          [void Function(ReposOwnerRepoGitCommitsAuthorBuilder) updates]) =>
      (new ReposOwnerRepoGitCommitsAuthorBuilder()..update(updates)).build();

  _$ReposOwnerRepoGitCommitsAuthor._({this.name, this.email, this.date})
      : super._();

  @override
  ReposOwnerRepoGitCommitsAuthor rebuild(
          void Function(ReposOwnerRepoGitCommitsAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoGitCommitsAuthorBuilder toBuilder() =>
      new ReposOwnerRepoGitCommitsAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoGitCommitsAuthor &&
        name == other.name &&
        email == other.email &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), email.hashCode), date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReposOwnerRepoGitCommitsAuthor')
          ..add('name', name)
          ..add('email', email)
          ..add('date', date))
        .toString();
  }
}

class ReposOwnerRepoGitCommitsAuthorBuilder
    implements
        Builder<ReposOwnerRepoGitCommitsAuthor,
            ReposOwnerRepoGitCommitsAuthorBuilder> {
  _$ReposOwnerRepoGitCommitsAuthor _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  ReposOwnerRepoGitCommitsAuthorBuilder() {
    ReposOwnerRepoGitCommitsAuthor._initializeBuilder(this);
  }

  ReposOwnerRepoGitCommitsAuthorBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoGitCommitsAuthor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoGitCommitsAuthor;
  }

  @override
  void update(void Function(ReposOwnerRepoGitCommitsAuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoGitCommitsAuthor build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoGitCommitsAuthor._(
            name: name, email: email, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

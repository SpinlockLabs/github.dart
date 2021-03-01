// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_commit_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitCommitAuthor> _$gitCommitAuthorSerializer =
    new _$GitCommitAuthorSerializer();

class _$GitCommitAuthorSerializer
    implements StructuredSerializer<GitCommitAuthor> {
  @override
  final Iterable<Type> types = const [GitCommitAuthor, _$GitCommitAuthor];
  @override
  final String wireName = 'GitCommitAuthor';

  @override
  Iterable<Object> serialize(Serializers serializers, GitCommitAuthor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(DateTime)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GitCommitAuthor deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitCommitAuthorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GitCommitAuthor extends GitCommitAuthor {
  @override
  final DateTime date;
  @override
  final String email;
  @override
  final String name;

  factory _$GitCommitAuthor([void Function(GitCommitAuthorBuilder) updates]) =>
      (new GitCommitAuthorBuilder()..update(updates)).build();

  _$GitCommitAuthor._({this.date, this.email, this.name}) : super._();

  @override
  GitCommitAuthor rebuild(void Function(GitCommitAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitCommitAuthorBuilder toBuilder() =>
      new GitCommitAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitCommitAuthor &&
        date == other.date &&
        email == other.email &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, date.hashCode), email.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitCommitAuthor')
          ..add('date', date)
          ..add('email', email)
          ..add('name', name))
        .toString();
  }
}

class GitCommitAuthorBuilder
    implements Builder<GitCommitAuthor, GitCommitAuthorBuilder> {
  _$GitCommitAuthor _$v;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GitCommitAuthorBuilder() {
    GitCommitAuthor._initializeBuilder(this);
  }

  GitCommitAuthorBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _email = _$v.email;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitCommitAuthor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitCommitAuthor;
  }

  @override
  void update(void Function(GitCommitAuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitCommitAuthor build() {
    final _$result =
        _$v ?? new _$GitCommitAuthor._(date: date, email: email, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

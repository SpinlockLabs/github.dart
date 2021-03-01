// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_git_tags_tagger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoGitTagsTagger>
    _$reposOwnerRepoGitTagsTaggerSerializer =
    new _$ReposOwnerRepoGitTagsTaggerSerializer();

class _$ReposOwnerRepoGitTagsTaggerSerializer
    implements StructuredSerializer<ReposOwnerRepoGitTagsTagger> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoGitTagsTagger,
    _$ReposOwnerRepoGitTagsTagger
  ];
  @override
  final String wireName = 'ReposOwnerRepoGitTagsTagger';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReposOwnerRepoGitTagsTagger object,
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
  ReposOwnerRepoGitTagsTagger deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoGitTagsTaggerBuilder();

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

class _$ReposOwnerRepoGitTagsTagger extends ReposOwnerRepoGitTagsTagger {
  @override
  final String name;
  @override
  final String email;
  @override
  final String date;

  factory _$ReposOwnerRepoGitTagsTagger(
          [void Function(ReposOwnerRepoGitTagsTaggerBuilder) updates]) =>
      (new ReposOwnerRepoGitTagsTaggerBuilder()..update(updates)).build();

  _$ReposOwnerRepoGitTagsTagger._({this.name, this.email, this.date})
      : super._();

  @override
  ReposOwnerRepoGitTagsTagger rebuild(
          void Function(ReposOwnerRepoGitTagsTaggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoGitTagsTaggerBuilder toBuilder() =>
      new ReposOwnerRepoGitTagsTaggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoGitTagsTagger &&
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
    return (newBuiltValueToStringHelper('ReposOwnerRepoGitTagsTagger')
          ..add('name', name)
          ..add('email', email)
          ..add('date', date))
        .toString();
  }
}

class ReposOwnerRepoGitTagsTaggerBuilder
    implements
        Builder<ReposOwnerRepoGitTagsTagger,
            ReposOwnerRepoGitTagsTaggerBuilder> {
  _$ReposOwnerRepoGitTagsTagger _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  ReposOwnerRepoGitTagsTaggerBuilder() {
    ReposOwnerRepoGitTagsTagger._initializeBuilder(this);
  }

  ReposOwnerRepoGitTagsTaggerBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoGitTagsTagger other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoGitTagsTagger;
  }

  @override
  void update(void Function(ReposOwnerRepoGitTagsTaggerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoGitTagsTagger build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoGitTagsTagger._(
            name: name, email: email, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

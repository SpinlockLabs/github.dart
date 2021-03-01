// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitUser> _$gitUserSerializer = new _$GitUserSerializer();

class _$GitUserSerializer implements StructuredSerializer<GitUser> {
  @override
  final Iterable<Type> types = const [GitUser, _$GitUser];
  @override
  final String wireName = 'GitUser';

  @override
  Iterable<Object> serialize(Serializers serializers, GitUser object,
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
  GitUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitUserBuilder();

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

class _$GitUser extends GitUser {
  @override
  final String name;
  @override
  final String email;
  @override
  final String date;

  factory _$GitUser([void Function(GitUserBuilder) updates]) =>
      (new GitUserBuilder()..update(updates)).build();

  _$GitUser._({this.name, this.email, this.date}) : super._();

  @override
  GitUser rebuild(void Function(GitUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitUserBuilder toBuilder() => new GitUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitUser &&
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
    return (newBuiltValueToStringHelper('GitUser')
          ..add('name', name)
          ..add('email', email)
          ..add('date', date))
        .toString();
  }
}

class GitUserBuilder implements Builder<GitUser, GitUserBuilder> {
  _$GitUser _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  GitUserBuilder() {
    GitUser._initializeBuilder(this);
  }

  GitUserBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitUser;
  }

  @override
  void update(void Function(GitUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitUser build() {
    final _$result =
        _$v ?? new _$GitUser._(name: name, email: email, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

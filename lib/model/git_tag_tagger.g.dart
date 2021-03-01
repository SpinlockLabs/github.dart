// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_tag_tagger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitTagTagger> _$gitTagTaggerSerializer =
    new _$GitTagTaggerSerializer();

class _$GitTagTaggerSerializer implements StructuredSerializer<GitTagTagger> {
  @override
  final Iterable<Type> types = const [GitTagTagger, _$GitTagTagger];
  @override
  final String wireName = 'GitTagTagger';

  @override
  Iterable<Object> serialize(Serializers serializers, GitTagTagger object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
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
  GitTagTagger deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitTagTaggerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$GitTagTagger extends GitTagTagger {
  @override
  final String date;
  @override
  final String email;
  @override
  final String name;

  factory _$GitTagTagger([void Function(GitTagTaggerBuilder) updates]) =>
      (new GitTagTaggerBuilder()..update(updates)).build();

  _$GitTagTagger._({this.date, this.email, this.name}) : super._();

  @override
  GitTagTagger rebuild(void Function(GitTagTaggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitTagTaggerBuilder toBuilder() => new GitTagTaggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitTagTagger &&
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
    return (newBuiltValueToStringHelper('GitTagTagger')
          ..add('date', date)
          ..add('email', email)
          ..add('name', name))
        .toString();
  }
}

class GitTagTaggerBuilder
    implements Builder<GitTagTagger, GitTagTaggerBuilder> {
  _$GitTagTagger _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GitTagTaggerBuilder() {
    GitTagTagger._initializeBuilder(this);
  }

  GitTagTaggerBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _email = _$v.email;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitTagTagger other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitTagTagger;
  }

  @override
  void update(void Function(GitTagTaggerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitTagTagger build() {
    final _$result =
        _$v ?? new _$GitTagTagger._(date: date, email: email, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

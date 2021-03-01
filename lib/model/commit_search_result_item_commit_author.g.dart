// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_search_result_item_commit_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitSearchResultItemCommitAuthor>
    _$commitSearchResultItemCommitAuthorSerializer =
    new _$CommitSearchResultItemCommitAuthorSerializer();

class _$CommitSearchResultItemCommitAuthorSerializer
    implements StructuredSerializer<CommitSearchResultItemCommitAuthor> {
  @override
  final Iterable<Type> types = const [
    CommitSearchResultItemCommitAuthor,
    _$CommitSearchResultItemCommitAuthor
  ];
  @override
  final String wireName = 'CommitSearchResultItemCommitAuthor';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CommitSearchResultItemCommitAuthor object,
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
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  CommitSearchResultItemCommitAuthor deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitSearchResultItemCommitAuthorBuilder();

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
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$CommitSearchResultItemCommitAuthor
    extends CommitSearchResultItemCommitAuthor {
  @override
  final String name;
  @override
  final String email;
  @override
  final DateTime date;

  factory _$CommitSearchResultItemCommitAuthor(
          [void Function(CommitSearchResultItemCommitAuthorBuilder) updates]) =>
      (new CommitSearchResultItemCommitAuthorBuilder()..update(updates))
          .build();

  _$CommitSearchResultItemCommitAuthor._({this.name, this.email, this.date})
      : super._();

  @override
  CommitSearchResultItemCommitAuthor rebuild(
          void Function(CommitSearchResultItemCommitAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitSearchResultItemCommitAuthorBuilder toBuilder() =>
      new CommitSearchResultItemCommitAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitSearchResultItemCommitAuthor &&
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
    return (newBuiltValueToStringHelper('CommitSearchResultItemCommitAuthor')
          ..add('name', name)
          ..add('email', email)
          ..add('date', date))
        .toString();
  }
}

class CommitSearchResultItemCommitAuthorBuilder
    implements
        Builder<CommitSearchResultItemCommitAuthor,
            CommitSearchResultItemCommitAuthorBuilder> {
  _$CommitSearchResultItemCommitAuthor _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  CommitSearchResultItemCommitAuthorBuilder() {
    CommitSearchResultItemCommitAuthor._initializeBuilder(this);
  }

  CommitSearchResultItemCommitAuthorBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitSearchResultItemCommitAuthor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitSearchResultItemCommitAuthor;
  }

  @override
  void update(
      void Function(CommitSearchResultItemCommitAuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitSearchResultItemCommitAuthor build() {
    final _$result = _$v ??
        new _$CommitSearchResultItemCommitAuthor._(
            name: name, email: email, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

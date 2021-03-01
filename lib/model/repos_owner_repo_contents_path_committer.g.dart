// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_contents_path_committer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoContentsPathCommitter>
    _$reposOwnerRepoContentsPathCommitterSerializer =
    new _$ReposOwnerRepoContentsPathCommitterSerializer();

class _$ReposOwnerRepoContentsPathCommitterSerializer
    implements StructuredSerializer<ReposOwnerRepoContentsPathCommitter> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoContentsPathCommitter,
    _$ReposOwnerRepoContentsPathCommitter
  ];
  @override
  final String wireName = 'ReposOwnerRepoContentsPathCommitter';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReposOwnerRepoContentsPathCommitter object,
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
  ReposOwnerRepoContentsPathCommitter deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoContentsPathCommitterBuilder();

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

class _$ReposOwnerRepoContentsPathCommitter
    extends ReposOwnerRepoContentsPathCommitter {
  @override
  final String name;
  @override
  final String email;
  @override
  final String date;

  factory _$ReposOwnerRepoContentsPathCommitter(
          [void Function(ReposOwnerRepoContentsPathCommitterBuilder)
              updates]) =>
      (new ReposOwnerRepoContentsPathCommitterBuilder()..update(updates))
          .build();

  _$ReposOwnerRepoContentsPathCommitter._({this.name, this.email, this.date})
      : super._();

  @override
  ReposOwnerRepoContentsPathCommitter rebuild(
          void Function(ReposOwnerRepoContentsPathCommitterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoContentsPathCommitterBuilder toBuilder() =>
      new ReposOwnerRepoContentsPathCommitterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoContentsPathCommitter &&
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
    return (newBuiltValueToStringHelper('ReposOwnerRepoContentsPathCommitter')
          ..add('name', name)
          ..add('email', email)
          ..add('date', date))
        .toString();
  }
}

class ReposOwnerRepoContentsPathCommitterBuilder
    implements
        Builder<ReposOwnerRepoContentsPathCommitter,
            ReposOwnerRepoContentsPathCommitterBuilder> {
  _$ReposOwnerRepoContentsPathCommitter _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  ReposOwnerRepoContentsPathCommitterBuilder() {
    ReposOwnerRepoContentsPathCommitter._initializeBuilder(this);
  }

  ReposOwnerRepoContentsPathCommitterBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoContentsPathCommitter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoContentsPathCommitter;
  }

  @override
  void update(
      void Function(ReposOwnerRepoContentsPathCommitterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoContentsPathCommitter build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoContentsPathCommitter._(
            name: name, email: email, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

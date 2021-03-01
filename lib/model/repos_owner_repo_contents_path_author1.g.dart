// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_contents_path_author1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoContentsPathAuthor1>
    _$reposOwnerRepoContentsPathAuthor1Serializer =
    new _$ReposOwnerRepoContentsPathAuthor1Serializer();

class _$ReposOwnerRepoContentsPathAuthor1Serializer
    implements StructuredSerializer<ReposOwnerRepoContentsPathAuthor1> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoContentsPathAuthor1,
    _$ReposOwnerRepoContentsPathAuthor1
  ];
  @override
  final String wireName = 'ReposOwnerRepoContentsPathAuthor1';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReposOwnerRepoContentsPathAuthor1 object,
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
    return result;
  }

  @override
  ReposOwnerRepoContentsPathAuthor1 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoContentsPathAuthor1Builder();

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
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoContentsPathAuthor1
    extends ReposOwnerRepoContentsPathAuthor1 {
  @override
  final String name;
  @override
  final String email;

  factory _$ReposOwnerRepoContentsPathAuthor1(
          [void Function(ReposOwnerRepoContentsPathAuthor1Builder) updates]) =>
      (new ReposOwnerRepoContentsPathAuthor1Builder()..update(updates)).build();

  _$ReposOwnerRepoContentsPathAuthor1._({this.name, this.email}) : super._();

  @override
  ReposOwnerRepoContentsPathAuthor1 rebuild(
          void Function(ReposOwnerRepoContentsPathAuthor1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoContentsPathAuthor1Builder toBuilder() =>
      new ReposOwnerRepoContentsPathAuthor1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoContentsPathAuthor1 &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReposOwnerRepoContentsPathAuthor1')
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class ReposOwnerRepoContentsPathAuthor1Builder
    implements
        Builder<ReposOwnerRepoContentsPathAuthor1,
            ReposOwnerRepoContentsPathAuthor1Builder> {
  _$ReposOwnerRepoContentsPathAuthor1 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  ReposOwnerRepoContentsPathAuthor1Builder() {
    ReposOwnerRepoContentsPathAuthor1._initializeBuilder(this);
  }

  ReposOwnerRepoContentsPathAuthor1Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoContentsPathAuthor1 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoContentsPathAuthor1;
  }

  @override
  void update(void Function(ReposOwnerRepoContentsPathAuthor1Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoContentsPathAuthor1 build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoContentsPathAuthor1._(name: name, email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

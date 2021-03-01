// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_contents_path_committer1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoContentsPathCommitter1>
    _$reposOwnerRepoContentsPathCommitter1Serializer =
    new _$ReposOwnerRepoContentsPathCommitter1Serializer();

class _$ReposOwnerRepoContentsPathCommitter1Serializer
    implements StructuredSerializer<ReposOwnerRepoContentsPathCommitter1> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoContentsPathCommitter1,
    _$ReposOwnerRepoContentsPathCommitter1
  ];
  @override
  final String wireName = 'ReposOwnerRepoContentsPathCommitter1';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReposOwnerRepoContentsPathCommitter1 object,
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
  ReposOwnerRepoContentsPathCommitter1 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoContentsPathCommitter1Builder();

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

class _$ReposOwnerRepoContentsPathCommitter1
    extends ReposOwnerRepoContentsPathCommitter1 {
  @override
  final String name;
  @override
  final String email;

  factory _$ReposOwnerRepoContentsPathCommitter1(
          [void Function(ReposOwnerRepoContentsPathCommitter1Builder)
              updates]) =>
      (new ReposOwnerRepoContentsPathCommitter1Builder()..update(updates))
          .build();

  _$ReposOwnerRepoContentsPathCommitter1._({this.name, this.email}) : super._();

  @override
  ReposOwnerRepoContentsPathCommitter1 rebuild(
          void Function(ReposOwnerRepoContentsPathCommitter1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoContentsPathCommitter1Builder toBuilder() =>
      new ReposOwnerRepoContentsPathCommitter1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoContentsPathCommitter1 &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReposOwnerRepoContentsPathCommitter1')
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class ReposOwnerRepoContentsPathCommitter1Builder
    implements
        Builder<ReposOwnerRepoContentsPathCommitter1,
            ReposOwnerRepoContentsPathCommitter1Builder> {
  _$ReposOwnerRepoContentsPathCommitter1 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  ReposOwnerRepoContentsPathCommitter1Builder() {
    ReposOwnerRepoContentsPathCommitter1._initializeBuilder(this);
  }

  ReposOwnerRepoContentsPathCommitter1Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoContentsPathCommitter1 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoContentsPathCommitter1;
  }

  @override
  void update(
      void Function(ReposOwnerRepoContentsPathCommitter1Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoContentsPathCommitter1 build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoContentsPathCommitter1._(name: name, email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

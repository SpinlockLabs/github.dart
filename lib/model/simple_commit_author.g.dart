// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'simple_commit_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimpleCommitAuthor> _$simpleCommitAuthorSerializer =
    new _$SimpleCommitAuthorSerializer();

class _$SimpleCommitAuthorSerializer
    implements StructuredSerializer<SimpleCommitAuthor> {
  @override
  final Iterable<Type> types = const [SimpleCommitAuthor, _$SimpleCommitAuthor];
  @override
  final String wireName = 'SimpleCommitAuthor';

  @override
  Iterable<Object> serialize(Serializers serializers, SimpleCommitAuthor object,
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
  SimpleCommitAuthor deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimpleCommitAuthorBuilder();

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

class _$SimpleCommitAuthor extends SimpleCommitAuthor {
  @override
  final String name;
  @override
  final String email;

  factory _$SimpleCommitAuthor(
          [void Function(SimpleCommitAuthorBuilder) updates]) =>
      (new SimpleCommitAuthorBuilder()..update(updates)).build();

  _$SimpleCommitAuthor._({this.name, this.email}) : super._();

  @override
  SimpleCommitAuthor rebuild(
          void Function(SimpleCommitAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleCommitAuthorBuilder toBuilder() =>
      new SimpleCommitAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleCommitAuthor &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimpleCommitAuthor')
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class SimpleCommitAuthorBuilder
    implements Builder<SimpleCommitAuthor, SimpleCommitAuthorBuilder> {
  _$SimpleCommitAuthor _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  SimpleCommitAuthorBuilder() {
    SimpleCommitAuthor._initializeBuilder(this);
  }

  SimpleCommitAuthorBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleCommitAuthor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SimpleCommitAuthor;
  }

  @override
  void update(void Function(SimpleCommitAuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimpleCommitAuthor build() {
    final _$result =
        _$v ?? new _$SimpleCommitAuthor._(name: name, email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

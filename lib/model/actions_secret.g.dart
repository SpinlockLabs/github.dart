// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'actions_secret.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActionsSecret> _$actionsSecretSerializer =
    new _$ActionsSecretSerializer();

class _$ActionsSecretSerializer implements StructuredSerializer<ActionsSecret> {
  @override
  final Iterable<Type> types = const [ActionsSecret, _$ActionsSecret];
  @override
  final String wireName = 'ActionsSecret';

  @override
  Iterable<Object> serialize(Serializers serializers, ActionsSecret object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  ActionsSecret deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActionsSecretBuilder();

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
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$ActionsSecret extends ActionsSecret {
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$ActionsSecret([void Function(ActionsSecretBuilder) updates]) =>
      (new ActionsSecretBuilder()..update(updates)).build();

  _$ActionsSecret._({this.name, this.createdAt, this.updatedAt}) : super._();

  @override
  ActionsSecret rebuild(void Function(ActionsSecretBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionsSecretBuilder toBuilder() => new ActionsSecretBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionsSecret &&
        name == other.name &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, name.hashCode), createdAt.hashCode), updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActionsSecret')
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ActionsSecretBuilder
    implements Builder<ActionsSecret, ActionsSecretBuilder> {
  _$ActionsSecret _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  ActionsSecretBuilder() {
    ActionsSecret._initializeBuilder(this);
  }

  ActionsSecretBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActionsSecret other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ActionsSecret;
  }

  @override
  void update(void Function(ActionsSecretBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActionsSecret build() {
    final _$result = _$v ??
        new _$ActionsSecret._(
            name: name, createdAt: createdAt, updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

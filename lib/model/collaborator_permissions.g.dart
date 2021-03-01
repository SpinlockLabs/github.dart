// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'collaborator_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollaboratorPermissions> _$collaboratorPermissionsSerializer =
    new _$CollaboratorPermissionsSerializer();

class _$CollaboratorPermissionsSerializer
    implements StructuredSerializer<CollaboratorPermissions> {
  @override
  final Iterable<Type> types = const [
    CollaboratorPermissions,
    _$CollaboratorPermissions
  ];
  @override
  final String wireName = 'CollaboratorPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CollaboratorPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.pull != null) {
      result
        ..add('pull')
        ..add(serializers.serialize(object.pull,
            specifiedType: const FullType(bool)));
    }
    if (object.push != null) {
      result
        ..add('push')
        ..add(serializers.serialize(object.push,
            specifiedType: const FullType(bool)));
    }
    if (object.admin != null) {
      result
        ..add('admin')
        ..add(serializers.serialize(object.admin,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  CollaboratorPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollaboratorPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'pull':
          result.pull = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'push':
          result.push = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$CollaboratorPermissions extends CollaboratorPermissions {
  @override
  final bool pull;
  @override
  final bool push;
  @override
  final bool admin;

  factory _$CollaboratorPermissions(
          [void Function(CollaboratorPermissionsBuilder) updates]) =>
      (new CollaboratorPermissionsBuilder()..update(updates)).build();

  _$CollaboratorPermissions._({this.pull, this.push, this.admin}) : super._();

  @override
  CollaboratorPermissions rebuild(
          void Function(CollaboratorPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollaboratorPermissionsBuilder toBuilder() =>
      new CollaboratorPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollaboratorPermissions &&
        pull == other.pull &&
        push == other.push &&
        admin == other.admin;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, pull.hashCode), push.hashCode), admin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CollaboratorPermissions')
          ..add('pull', pull)
          ..add('push', push)
          ..add('admin', admin))
        .toString();
  }
}

class CollaboratorPermissionsBuilder
    implements
        Builder<CollaboratorPermissions, CollaboratorPermissionsBuilder> {
  _$CollaboratorPermissions _$v;

  bool _pull;
  bool get pull => _$this._pull;
  set pull(bool pull) => _$this._pull = pull;

  bool _push;
  bool get push => _$this._push;
  set push(bool push) => _$this._push = push;

  bool _admin;
  bool get admin => _$this._admin;
  set admin(bool admin) => _$this._admin = admin;

  CollaboratorPermissionsBuilder() {
    CollaboratorPermissions._initializeBuilder(this);
  }

  CollaboratorPermissionsBuilder get _$this {
    if (_$v != null) {
      _pull = _$v.pull;
      _push = _$v.push;
      _admin = _$v.admin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollaboratorPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CollaboratorPermissions;
  }

  @override
  void update(void Function(CollaboratorPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CollaboratorPermissions build() {
    final _$result = _$v ??
        new _$CollaboratorPermissions._(pull: pull, push: push, admin: admin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

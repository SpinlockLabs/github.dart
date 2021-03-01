// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'full_repository_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FullRepositoryPermissions> _$fullRepositoryPermissionsSerializer =
    new _$FullRepositoryPermissionsSerializer();

class _$FullRepositoryPermissionsSerializer
    implements StructuredSerializer<FullRepositoryPermissions> {
  @override
  final Iterable<Type> types = const [
    FullRepositoryPermissions,
    _$FullRepositoryPermissions
  ];
  @override
  final String wireName = 'FullRepositoryPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FullRepositoryPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.admin != null) {
      result
        ..add('admin')
        ..add(serializers.serialize(object.admin,
            specifiedType: const FullType(bool)));
    }
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
    return result;
  }

  @override
  FullRepositoryPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FullRepositoryPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'pull':
          result.pull = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'push':
          result.push = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$FullRepositoryPermissions extends FullRepositoryPermissions {
  @override
  final bool admin;
  @override
  final bool pull;
  @override
  final bool push;

  factory _$FullRepositoryPermissions(
          [void Function(FullRepositoryPermissionsBuilder) updates]) =>
      (new FullRepositoryPermissionsBuilder()..update(updates)).build();

  _$FullRepositoryPermissions._({this.admin, this.pull, this.push}) : super._();

  @override
  FullRepositoryPermissions rebuild(
          void Function(FullRepositoryPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FullRepositoryPermissionsBuilder toBuilder() =>
      new FullRepositoryPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FullRepositoryPermissions &&
        admin == other.admin &&
        pull == other.pull &&
        push == other.push;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, admin.hashCode), pull.hashCode), push.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FullRepositoryPermissions')
          ..add('admin', admin)
          ..add('pull', pull)
          ..add('push', push))
        .toString();
  }
}

class FullRepositoryPermissionsBuilder
    implements
        Builder<FullRepositoryPermissions, FullRepositoryPermissionsBuilder> {
  _$FullRepositoryPermissions _$v;

  bool _admin;
  bool get admin => _$this._admin;
  set admin(bool admin) => _$this._admin = admin;

  bool _pull;
  bool get pull => _$this._pull;
  set pull(bool pull) => _$this._pull = pull;

  bool _push;
  bool get push => _$this._push;
  set push(bool push) => _$this._push = push;

  FullRepositoryPermissionsBuilder() {
    FullRepositoryPermissions._initializeBuilder(this);
  }

  FullRepositoryPermissionsBuilder get _$this {
    if (_$v != null) {
      _admin = _$v.admin;
      _pull = _$v.pull;
      _push = _$v.push;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FullRepositoryPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FullRepositoryPermissions;
  }

  @override
  void update(void Function(FullRepositoryPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FullRepositoryPermissions build() {
    final _$result = _$v ??
        new _$FullRepositoryPermissions._(admin: admin, pull: pull, push: push);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

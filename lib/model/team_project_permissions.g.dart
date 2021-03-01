// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'team_project_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamProjectPermissions> _$teamProjectPermissionsSerializer =
    new _$TeamProjectPermissionsSerializer();

class _$TeamProjectPermissionsSerializer
    implements StructuredSerializer<TeamProjectPermissions> {
  @override
  final Iterable<Type> types = const [
    TeamProjectPermissions,
    _$TeamProjectPermissions
  ];
  @override
  final String wireName = 'TeamProjectPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TeamProjectPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.read != null) {
      result
        ..add('read')
        ..add(serializers.serialize(object.read,
            specifiedType: const FullType(bool)));
    }
    if (object.write != null) {
      result
        ..add('write')
        ..add(serializers.serialize(object.write,
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
  TeamProjectPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamProjectPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'read':
          result.read = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'write':
          result.write = serializers.deserialize(value,
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

class _$TeamProjectPermissions extends TeamProjectPermissions {
  @override
  final bool read;
  @override
  final bool write;
  @override
  final bool admin;

  factory _$TeamProjectPermissions(
          [void Function(TeamProjectPermissionsBuilder) updates]) =>
      (new TeamProjectPermissionsBuilder()..update(updates)).build();

  _$TeamProjectPermissions._({this.read, this.write, this.admin}) : super._();

  @override
  TeamProjectPermissions rebuild(
          void Function(TeamProjectPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamProjectPermissionsBuilder toBuilder() =>
      new TeamProjectPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamProjectPermissions &&
        read == other.read &&
        write == other.write &&
        admin == other.admin;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, read.hashCode), write.hashCode), admin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamProjectPermissions')
          ..add('read', read)
          ..add('write', write)
          ..add('admin', admin))
        .toString();
  }
}

class TeamProjectPermissionsBuilder
    implements Builder<TeamProjectPermissions, TeamProjectPermissionsBuilder> {
  _$TeamProjectPermissions _$v;

  bool _read;
  bool get read => _$this._read;
  set read(bool read) => _$this._read = read;

  bool _write;
  bool get write => _$this._write;
  set write(bool write) => _$this._write = write;

  bool _admin;
  bool get admin => _$this._admin;
  set admin(bool admin) => _$this._admin = admin;

  TeamProjectPermissionsBuilder() {
    TeamProjectPermissions._initializeBuilder(this);
  }

  TeamProjectPermissionsBuilder get _$this {
    if (_$v != null) {
      _read = _$v.read;
      _write = _$v.write;
      _admin = _$v.admin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamProjectPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamProjectPermissions;
  }

  @override
  void update(void Function(TeamProjectPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamProjectPermissions build() {
    final _$result = _$v ??
        new _$TeamProjectPermissions._(read: read, write: write, admin: admin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

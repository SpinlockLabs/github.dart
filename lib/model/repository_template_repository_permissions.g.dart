// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repository_template_repository_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositoryTemplateRepositoryPermissions>
    _$repositoryTemplateRepositoryPermissionsSerializer =
    new _$RepositoryTemplateRepositoryPermissionsSerializer();

class _$RepositoryTemplateRepositoryPermissionsSerializer
    implements StructuredSerializer<RepositoryTemplateRepositoryPermissions> {
  @override
  final Iterable<Type> types = const [
    RepositoryTemplateRepositoryPermissions,
    _$RepositoryTemplateRepositoryPermissions
  ];
  @override
  final String wireName = 'RepositoryTemplateRepositoryPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RepositoryTemplateRepositoryPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.admin != null) {
      result
        ..add('admin')
        ..add(serializers.serialize(object.admin,
            specifiedType: const FullType(bool)));
    }
    if (object.push != null) {
      result
        ..add('push')
        ..add(serializers.serialize(object.push,
            specifiedType: const FullType(bool)));
    }
    if (object.pull != null) {
      result
        ..add('pull')
        ..add(serializers.serialize(object.pull,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  RepositoryTemplateRepositoryPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryTemplateRepositoryPermissionsBuilder();

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
        case 'push':
          result.push = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'pull':
          result.pull = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryTemplateRepositoryPermissions
    extends RepositoryTemplateRepositoryPermissions {
  @override
  final bool admin;
  @override
  final bool push;
  @override
  final bool pull;

  factory _$RepositoryTemplateRepositoryPermissions(
          [void Function(RepositoryTemplateRepositoryPermissionsBuilder)
              updates]) =>
      (new RepositoryTemplateRepositoryPermissionsBuilder()..update(updates))
          .build();

  _$RepositoryTemplateRepositoryPermissions._(
      {this.admin, this.push, this.pull})
      : super._();

  @override
  RepositoryTemplateRepositoryPermissions rebuild(
          void Function(RepositoryTemplateRepositoryPermissionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryTemplateRepositoryPermissionsBuilder toBuilder() =>
      new RepositoryTemplateRepositoryPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryTemplateRepositoryPermissions &&
        admin == other.admin &&
        push == other.push &&
        pull == other.pull;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, admin.hashCode), push.hashCode), pull.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'RepositoryTemplateRepositoryPermissions')
          ..add('admin', admin)
          ..add('push', push)
          ..add('pull', pull))
        .toString();
  }
}

class RepositoryTemplateRepositoryPermissionsBuilder
    implements
        Builder<RepositoryTemplateRepositoryPermissions,
            RepositoryTemplateRepositoryPermissionsBuilder> {
  _$RepositoryTemplateRepositoryPermissions _$v;

  bool _admin;
  bool get admin => _$this._admin;
  set admin(bool admin) => _$this._admin = admin;

  bool _push;
  bool get push => _$this._push;
  set push(bool push) => _$this._push = push;

  bool _pull;
  bool get pull => _$this._pull;
  set pull(bool pull) => _$this._pull = pull;

  RepositoryTemplateRepositoryPermissionsBuilder() {
    RepositoryTemplateRepositoryPermissions._initializeBuilder(this);
  }

  RepositoryTemplateRepositoryPermissionsBuilder get _$this {
    if (_$v != null) {
      _admin = _$v.admin;
      _push = _$v.push;
      _pull = _$v.pull;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryTemplateRepositoryPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryTemplateRepositoryPermissions;
  }

  @override
  void update(
      void Function(RepositoryTemplateRepositoryPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryTemplateRepositoryPermissions build() {
    final _$result = _$v ??
        new _$RepositoryTemplateRepositoryPermissions._(
            admin: admin, push: push, pull: pull);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

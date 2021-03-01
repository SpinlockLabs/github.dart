// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repository_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositoryPermissions> _$repositoryPermissionsSerializer =
    new _$RepositoryPermissionsSerializer();

class _$RepositoryPermissionsSerializer
    implements StructuredSerializer<RepositoryPermissions> {
  @override
  final Iterable<Type> types = const [
    RepositoryPermissions,
    _$RepositoryPermissions
  ];
  @override
  final String wireName = 'RepositoryPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RepositoryPermissions object,
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
    if (object.triage != null) {
      result
        ..add('triage')
        ..add(serializers.serialize(object.triage,
            specifiedType: const FullType(bool)));
    }
    if (object.push != null) {
      result
        ..add('push')
        ..add(serializers.serialize(object.push,
            specifiedType: const FullType(bool)));
    }
    if (object.maintain != null) {
      result
        ..add('maintain')
        ..add(serializers.serialize(object.maintain,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  RepositoryPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryPermissionsBuilder();

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
        case 'triage':
          result.triage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'push':
          result.push = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'maintain':
          result.maintain = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryPermissions extends RepositoryPermissions {
  @override
  final bool admin;
  @override
  final bool pull;
  @override
  final bool triage;
  @override
  final bool push;
  @override
  final bool maintain;

  factory _$RepositoryPermissions(
          [void Function(RepositoryPermissionsBuilder) updates]) =>
      (new RepositoryPermissionsBuilder()..update(updates)).build();

  _$RepositoryPermissions._(
      {this.admin, this.pull, this.triage, this.push, this.maintain})
      : super._();

  @override
  RepositoryPermissions rebuild(
          void Function(RepositoryPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryPermissionsBuilder toBuilder() =>
      new RepositoryPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryPermissions &&
        admin == other.admin &&
        pull == other.pull &&
        triage == other.triage &&
        push == other.push &&
        maintain == other.maintain;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, admin.hashCode), pull.hashCode), triage.hashCode),
            push.hashCode),
        maintain.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositoryPermissions')
          ..add('admin', admin)
          ..add('pull', pull)
          ..add('triage', triage)
          ..add('push', push)
          ..add('maintain', maintain))
        .toString();
  }
}

class RepositoryPermissionsBuilder
    implements Builder<RepositoryPermissions, RepositoryPermissionsBuilder> {
  _$RepositoryPermissions _$v;

  bool _admin;
  bool get admin => _$this._admin;
  set admin(bool admin) => _$this._admin = admin;

  bool _pull;
  bool get pull => _$this._pull;
  set pull(bool pull) => _$this._pull = pull;

  bool _triage;
  bool get triage => _$this._triage;
  set triage(bool triage) => _$this._triage = triage;

  bool _push;
  bool get push => _$this._push;
  set push(bool push) => _$this._push = push;

  bool _maintain;
  bool get maintain => _$this._maintain;
  set maintain(bool maintain) => _$this._maintain = maintain;

  RepositoryPermissionsBuilder() {
    RepositoryPermissions._initializeBuilder(this);
  }

  RepositoryPermissionsBuilder get _$this {
    if (_$v != null) {
      _admin = _$v.admin;
      _pull = _$v.pull;
      _triage = _$v.triage;
      _push = _$v.push;
      _maintain = _$v.maintain;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryPermissions;
  }

  @override
  void update(void Function(RepositoryPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryPermissions build() {
    final _$result = _$v ??
        new _$RepositoryPermissions._(
            admin: admin,
            pull: pull,
            triage: triage,
            push: push,
            maintain: maintain);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

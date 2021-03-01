// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'org_membership_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrgMembershipPermissions> _$orgMembershipPermissionsSerializer =
    new _$OrgMembershipPermissionsSerializer();

class _$OrgMembershipPermissionsSerializer
    implements StructuredSerializer<OrgMembershipPermissions> {
  @override
  final Iterable<Type> types = const [
    OrgMembershipPermissions,
    _$OrgMembershipPermissions
  ];
  @override
  final String wireName = 'OrgMembershipPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrgMembershipPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.canCreateRepository != null) {
      result
        ..add('can_create_repository')
        ..add(serializers.serialize(object.canCreateRepository,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  OrgMembershipPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrgMembershipPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'can_create_repository':
          result.canCreateRepository = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$OrgMembershipPermissions extends OrgMembershipPermissions {
  @override
  final bool canCreateRepository;

  factory _$OrgMembershipPermissions(
          [void Function(OrgMembershipPermissionsBuilder) updates]) =>
      (new OrgMembershipPermissionsBuilder()..update(updates)).build();

  _$OrgMembershipPermissions._({this.canCreateRepository}) : super._();

  @override
  OrgMembershipPermissions rebuild(
          void Function(OrgMembershipPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrgMembershipPermissionsBuilder toBuilder() =>
      new OrgMembershipPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrgMembershipPermissions &&
        canCreateRepository == other.canCreateRepository;
  }

  @override
  int get hashCode {
    return $jf($jc(0, canCreateRepository.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrgMembershipPermissions')
          ..add('canCreateRepository', canCreateRepository))
        .toString();
  }
}

class OrgMembershipPermissionsBuilder
    implements
        Builder<OrgMembershipPermissions, OrgMembershipPermissionsBuilder> {
  _$OrgMembershipPermissions _$v;

  bool _canCreateRepository;
  bool get canCreateRepository => _$this._canCreateRepository;
  set canCreateRepository(bool canCreateRepository) =>
      _$this._canCreateRepository = canCreateRepository;

  OrgMembershipPermissionsBuilder() {
    OrgMembershipPermissions._initializeBuilder(this);
  }

  OrgMembershipPermissionsBuilder get _$this {
    if (_$v != null) {
      _canCreateRepository = _$v.canCreateRepository;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrgMembershipPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrgMembershipPermissions;
  }

  @override
  void update(void Function(OrgMembershipPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrgMembershipPermissions build() {
    final _$result = _$v ??
        new _$OrgMembershipPermissions._(
            canCreateRepository: canCreateRepository);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

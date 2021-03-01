// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_group_list_enterprise_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimGroupListEnterpriseMeta>
    _$scimGroupListEnterpriseMetaSerializer =
    new _$ScimGroupListEnterpriseMetaSerializer();

class _$ScimGroupListEnterpriseMetaSerializer
    implements StructuredSerializer<ScimGroupListEnterpriseMeta> {
  @override
  final Iterable<Type> types = const [
    ScimGroupListEnterpriseMeta,
    _$ScimGroupListEnterpriseMeta
  ];
  @override
  final String wireName = 'ScimGroupListEnterpriseMeta';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimGroupListEnterpriseMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.resourceType != null) {
      result
        ..add('resourceType')
        ..add(serializers.serialize(object.resourceType,
            specifiedType: const FullType(String)));
    }
    if (object.created != null) {
      result
        ..add('created')
        ..add(serializers.serialize(object.created,
            specifiedType: const FullType(String)));
    }
    if (object.lastModified != null) {
      result
        ..add('lastModified')
        ..add(serializers.serialize(object.lastModified,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ScimGroupListEnterpriseMeta deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimGroupListEnterpriseMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'resourceType':
          result.resourceType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastModified':
          result.lastModified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ScimGroupListEnterpriseMeta extends ScimGroupListEnterpriseMeta {
  @override
  final String resourceType;
  @override
  final String created;
  @override
  final String lastModified;
  @override
  final String location;

  factory _$ScimGroupListEnterpriseMeta(
          [void Function(ScimGroupListEnterpriseMetaBuilder) updates]) =>
      (new ScimGroupListEnterpriseMetaBuilder()..update(updates)).build();

  _$ScimGroupListEnterpriseMeta._(
      {this.resourceType, this.created, this.lastModified, this.location})
      : super._();

  @override
  ScimGroupListEnterpriseMeta rebuild(
          void Function(ScimGroupListEnterpriseMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimGroupListEnterpriseMetaBuilder toBuilder() =>
      new ScimGroupListEnterpriseMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimGroupListEnterpriseMeta &&
        resourceType == other.resourceType &&
        created == other.created &&
        lastModified == other.lastModified &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, resourceType.hashCode), created.hashCode),
            lastModified.hashCode),
        location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimGroupListEnterpriseMeta')
          ..add('resourceType', resourceType)
          ..add('created', created)
          ..add('lastModified', lastModified)
          ..add('location', location))
        .toString();
  }
}

class ScimGroupListEnterpriseMetaBuilder
    implements
        Builder<ScimGroupListEnterpriseMeta,
            ScimGroupListEnterpriseMetaBuilder> {
  _$ScimGroupListEnterpriseMeta _$v;

  String _resourceType;
  String get resourceType => _$this._resourceType;
  set resourceType(String resourceType) => _$this._resourceType = resourceType;

  String _created;
  String get created => _$this._created;
  set created(String created) => _$this._created = created;

  String _lastModified;
  String get lastModified => _$this._lastModified;
  set lastModified(String lastModified) => _$this._lastModified = lastModified;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  ScimGroupListEnterpriseMetaBuilder() {
    ScimGroupListEnterpriseMeta._initializeBuilder(this);
  }

  ScimGroupListEnterpriseMetaBuilder get _$this {
    if (_$v != null) {
      _resourceType = _$v.resourceType;
      _created = _$v.created;
      _lastModified = _$v.lastModified;
      _location = _$v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimGroupListEnterpriseMeta other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimGroupListEnterpriseMeta;
  }

  @override
  void update(void Function(ScimGroupListEnterpriseMetaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimGroupListEnterpriseMeta build() {
    final _$result = _$v ??
        new _$ScimGroupListEnterpriseMeta._(
            resourceType: resourceType,
            created: created,
            lastModified: lastModified,
            location: location);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

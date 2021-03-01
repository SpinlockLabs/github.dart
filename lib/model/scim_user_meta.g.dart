// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_user_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimUserMeta> _$scimUserMetaSerializer =
    new _$ScimUserMetaSerializer();

class _$ScimUserMetaSerializer implements StructuredSerializer<ScimUserMeta> {
  @override
  final Iterable<Type> types = const [ScimUserMeta, _$ScimUserMeta];
  @override
  final String wireName = 'ScimUserMeta';

  @override
  Iterable<Object> serialize(Serializers serializers, ScimUserMeta object,
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
            specifiedType: const FullType(DateTime)));
    }
    if (object.lastModified != null) {
      result
        ..add('lastModified')
        ..add(serializers.serialize(object.lastModified,
            specifiedType: const FullType(DateTime)));
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
  ScimUserMeta deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimUserMetaBuilder();

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
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'lastModified':
          result.lastModified = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$ScimUserMeta extends ScimUserMeta {
  @override
  final String resourceType;
  @override
  final DateTime created;
  @override
  final DateTime lastModified;
  @override
  final String location;

  factory _$ScimUserMeta([void Function(ScimUserMetaBuilder) updates]) =>
      (new ScimUserMetaBuilder()..update(updates)).build();

  _$ScimUserMeta._(
      {this.resourceType, this.created, this.lastModified, this.location})
      : super._();

  @override
  ScimUserMeta rebuild(void Function(ScimUserMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimUserMetaBuilder toBuilder() => new ScimUserMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimUserMeta &&
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
    return (newBuiltValueToStringHelper('ScimUserMeta')
          ..add('resourceType', resourceType)
          ..add('created', created)
          ..add('lastModified', lastModified)
          ..add('location', location))
        .toString();
  }
}

class ScimUserMetaBuilder
    implements Builder<ScimUserMeta, ScimUserMetaBuilder> {
  _$ScimUserMeta _$v;

  String _resourceType;
  String get resourceType => _$this._resourceType;
  set resourceType(String resourceType) => _$this._resourceType = resourceType;

  DateTime _created;
  DateTime get created => _$this._created;
  set created(DateTime created) => _$this._created = created;

  DateTime _lastModified;
  DateTime get lastModified => _$this._lastModified;
  set lastModified(DateTime lastModified) =>
      _$this._lastModified = lastModified;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  ScimUserMetaBuilder() {
    ScimUserMeta._initializeBuilder(this);
  }

  ScimUserMetaBuilder get _$this {
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
  void replace(ScimUserMeta other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimUserMeta;
  }

  @override
  void update(void Function(ScimUserMetaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimUserMeta build() {
    final _$result = _$v ??
        new _$ScimUserMeta._(
            resourceType: resourceType,
            created: created,
            lastModified: lastModified,
            location: location);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

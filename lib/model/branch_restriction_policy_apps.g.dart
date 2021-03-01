// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_restriction_policy_apps.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchRestrictionPolicyApps>
    _$branchRestrictionPolicyAppsSerializer =
    new _$BranchRestrictionPolicyAppsSerializer();

class _$BranchRestrictionPolicyAppsSerializer
    implements StructuredSerializer<BranchRestrictionPolicyApps> {
  @override
  final Iterable<Type> types = const [
    BranchRestrictionPolicyApps,
    _$BranchRestrictionPolicyApps
  ];
  @override
  final String wireName = 'BranchRestrictionPolicyApps';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BranchRestrictionPolicyApps object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(BranchRestrictionPolicyOwner)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.externalUrl != null) {
      result
        ..add('external_url')
        ..add(serializers.serialize(object.externalUrl,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(BranchRestrictionPolicyPermissions)));
    }
    if (object.events != null) {
      result
        ..add('events')
        ..add(serializers.serialize(object.events,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  BranchRestrictionPolicyApps deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchRestrictionPolicyAppsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BranchRestrictionPolicyOwner))
              as BranchRestrictionPolicyOwner);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'external_url':
          result.externalUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BranchRestrictionPolicyPermissions))
              as BranchRestrictionPolicyPermissions);
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BranchRestrictionPolicyApps extends BranchRestrictionPolicyApps {
  @override
  final int id;
  @override
  final String slug;
  @override
  final String nodeId;
  @override
  final BranchRestrictionPolicyOwner owner;
  @override
  final String name;
  @override
  final String description;
  @override
  final String externalUrl;
  @override
  final String htmlUrl;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final BranchRestrictionPolicyPermissions permissions;
  @override
  final BuiltList<String> events;

  factory _$BranchRestrictionPolicyApps(
          [void Function(BranchRestrictionPolicyAppsBuilder) updates]) =>
      (new BranchRestrictionPolicyAppsBuilder()..update(updates)).build();

  _$BranchRestrictionPolicyApps._(
      {this.id,
      this.slug,
      this.nodeId,
      this.owner,
      this.name,
      this.description,
      this.externalUrl,
      this.htmlUrl,
      this.createdAt,
      this.updatedAt,
      this.permissions,
      this.events})
      : super._();

  @override
  BranchRestrictionPolicyApps rebuild(
          void Function(BranchRestrictionPolicyAppsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchRestrictionPolicyAppsBuilder toBuilder() =>
      new BranchRestrictionPolicyAppsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchRestrictionPolicyApps &&
        id == other.id &&
        slug == other.slug &&
        nodeId == other.nodeId &&
        owner == other.owner &&
        name == other.name &&
        description == other.description &&
        externalUrl == other.externalUrl &&
        htmlUrl == other.htmlUrl &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        permissions == other.permissions &&
        events == other.events;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                slug.hashCode),
                                            nodeId.hashCode),
                                        owner.hashCode),
                                    name.hashCode),
                                description.hashCode),
                            externalUrl.hashCode),
                        htmlUrl.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            permissions.hashCode),
        events.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchRestrictionPolicyApps')
          ..add('id', id)
          ..add('slug', slug)
          ..add('nodeId', nodeId)
          ..add('owner', owner)
          ..add('name', name)
          ..add('description', description)
          ..add('externalUrl', externalUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('permissions', permissions)
          ..add('events', events))
        .toString();
  }
}

class BranchRestrictionPolicyAppsBuilder
    implements
        Builder<BranchRestrictionPolicyApps,
            BranchRestrictionPolicyAppsBuilder> {
  _$BranchRestrictionPolicyApps _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  BranchRestrictionPolicyOwnerBuilder _owner;
  BranchRestrictionPolicyOwnerBuilder get owner =>
      _$this._owner ??= new BranchRestrictionPolicyOwnerBuilder();
  set owner(BranchRestrictionPolicyOwnerBuilder owner) => _$this._owner = owner;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _externalUrl;
  String get externalUrl => _$this._externalUrl;
  set externalUrl(String externalUrl) => _$this._externalUrl = externalUrl;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  BranchRestrictionPolicyPermissionsBuilder _permissions;
  BranchRestrictionPolicyPermissionsBuilder get permissions =>
      _$this._permissions ??= new BranchRestrictionPolicyPermissionsBuilder();
  set permissions(BranchRestrictionPolicyPermissionsBuilder permissions) =>
      _$this._permissions = permissions;

  ListBuilder<String> _events;
  ListBuilder<String> get events =>
      _$this._events ??= new ListBuilder<String>();
  set events(ListBuilder<String> events) => _$this._events = events;

  BranchRestrictionPolicyAppsBuilder() {
    BranchRestrictionPolicyApps._initializeBuilder(this);
  }

  BranchRestrictionPolicyAppsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _slug = _$v.slug;
      _nodeId = _$v.nodeId;
      _owner = _$v.owner?.toBuilder();
      _name = _$v.name;
      _description = _$v.description;
      _externalUrl = _$v.externalUrl;
      _htmlUrl = _$v.htmlUrl;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _permissions = _$v.permissions?.toBuilder();
      _events = _$v.events?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchRestrictionPolicyApps other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchRestrictionPolicyApps;
  }

  @override
  void update(void Function(BranchRestrictionPolicyAppsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchRestrictionPolicyApps build() {
    _$BranchRestrictionPolicyApps _$result;
    try {
      _$result = _$v ??
          new _$BranchRestrictionPolicyApps._(
              id: id,
              slug: slug,
              nodeId: nodeId,
              owner: _owner?.build(),
              name: name,
              description: description,
              externalUrl: externalUrl,
              htmlUrl: htmlUrl,
              createdAt: createdAt,
              updatedAt: updatedAt,
              permissions: _permissions?.build(),
              events: _events?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'permissions';
        _permissions?.build();
        _$failedField = 'events';
        _events?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BranchRestrictionPolicyApps', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

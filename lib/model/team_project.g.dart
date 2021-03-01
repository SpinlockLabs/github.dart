// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'team_project.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamProject> _$teamProjectSerializer = new _$TeamProjectSerializer();

class _$TeamProjectSerializer implements StructuredSerializer<TeamProject> {
  @override
  final Iterable<Type> types = const [TeamProject, _$TeamProject];
  @override
  final String wireName = 'TeamProject';

  @override
  Iterable<Object> serialize(Serializers serializers, TeamProject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ownerUrl != null) {
      result
        ..add('owner_url')
        ..add(serializers.serialize(object.ownerUrl,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.columnsUrl != null) {
      result
        ..add('columns_url')
        ..add(serializers.serialize(object.columnsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.creator != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(object.creator,
            specifiedType: const FullType(SimpleUser)));
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
    if (object.organizationPermission != null) {
      result
        ..add('organization_permission')
        ..add(serializers.serialize(object.organizationPermission,
            specifiedType: const FullType(String)));
    }
    if (object.private != null) {
      result
        ..add('private')
        ..add(serializers.serialize(object.private,
            specifiedType: const FullType(bool)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(TeamProjectPermissions)));
    }
    return result;
  }

  @override
  TeamProject deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamProjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'owner_url':
          result.ownerUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'columns_url':
          result.columnsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creator':
          result.creator.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization_permission':
          result.organizationPermission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TeamProjectPermissions))
              as TeamProjectPermissions);
          break;
      }
    }

    return result.build();
  }
}

class _$TeamProject extends TeamProject {
  @override
  final String ownerUrl;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String columnsUrl;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final String body;
  @override
  final int number;
  @override
  final String state;
  @override
  final SimpleUser creator;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String organizationPermission;
  @override
  final bool private;
  @override
  final TeamProjectPermissions permissions;

  factory _$TeamProject([void Function(TeamProjectBuilder) updates]) =>
      (new TeamProjectBuilder()..update(updates)).build();

  _$TeamProject._(
      {this.ownerUrl,
      this.url,
      this.htmlUrl,
      this.columnsUrl,
      this.id,
      this.nodeId,
      this.name,
      this.body,
      this.number,
      this.state,
      this.creator,
      this.createdAt,
      this.updatedAt,
      this.organizationPermission,
      this.private,
      this.permissions})
      : super._();

  @override
  TeamProject rebuild(void Function(TeamProjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamProjectBuilder toBuilder() => new TeamProjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamProject &&
        ownerUrl == other.ownerUrl &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        columnsUrl == other.columnsUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        body == other.body &&
        number == other.number &&
        state == other.state &&
        creator == other.creator &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        organizationPermission == other.organizationPermission &&
        private == other.private &&
        permissions == other.permissions;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    ownerUrl
                                                                        .hashCode),
                                                                url.hashCode),
                                                            htmlUrl.hashCode),
                                                        columnsUrl.hashCode),
                                                    id.hashCode),
                                                nodeId.hashCode),
                                            name.hashCode),
                                        body.hashCode),
                                    number.hashCode),
                                state.hashCode),
                            creator.hashCode),
                        createdAt.hashCode),
                    updatedAt.hashCode),
                organizationPermission.hashCode),
            private.hashCode),
        permissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamProject')
          ..add('ownerUrl', ownerUrl)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('columnsUrl', columnsUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('body', body)
          ..add('number', number)
          ..add('state', state)
          ..add('creator', creator)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('organizationPermission', organizationPermission)
          ..add('private', private)
          ..add('permissions', permissions))
        .toString();
  }
}

class TeamProjectBuilder implements Builder<TeamProject, TeamProjectBuilder> {
  _$TeamProject _$v;

  String _ownerUrl;
  String get ownerUrl => _$this._ownerUrl;
  set ownerUrl(String ownerUrl) => _$this._ownerUrl = ownerUrl;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _columnsUrl;
  String get columnsUrl => _$this._columnsUrl;
  set columnsUrl(String columnsUrl) => _$this._columnsUrl = columnsUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  SimpleUserBuilder _creator;
  SimpleUserBuilder get creator => _$this._creator ??= new SimpleUserBuilder();
  set creator(SimpleUserBuilder creator) => _$this._creator = creator;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _organizationPermission;
  String get organizationPermission => _$this._organizationPermission;
  set organizationPermission(String organizationPermission) =>
      _$this._organizationPermission = organizationPermission;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  TeamProjectPermissionsBuilder _permissions;
  TeamProjectPermissionsBuilder get permissions =>
      _$this._permissions ??= new TeamProjectPermissionsBuilder();
  set permissions(TeamProjectPermissionsBuilder permissions) =>
      _$this._permissions = permissions;

  TeamProjectBuilder() {
    TeamProject._initializeBuilder(this);
  }

  TeamProjectBuilder get _$this {
    if (_$v != null) {
      _ownerUrl = _$v.ownerUrl;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _columnsUrl = _$v.columnsUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _body = _$v.body;
      _number = _$v.number;
      _state = _$v.state;
      _creator = _$v.creator?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _organizationPermission = _$v.organizationPermission;
      _private = _$v.private;
      _permissions = _$v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamProject other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamProject;
  }

  @override
  void update(void Function(TeamProjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamProject build() {
    _$TeamProject _$result;
    try {
      _$result = _$v ??
          new _$TeamProject._(
              ownerUrl: ownerUrl,
              url: url,
              htmlUrl: htmlUrl,
              columnsUrl: columnsUrl,
              id: id,
              nodeId: nodeId,
              name: name,
              body: body,
              number: number,
              state: state,
              creator: _creator?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              organizationPermission: organizationPermission,
              private: private,
              permissions: _permissions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'creator';
        _creator?.build();

        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamProject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

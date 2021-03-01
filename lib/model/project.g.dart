// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectOrganizationPermissionEnum
    _$projectOrganizationPermissionEnum_read =
    const ProjectOrganizationPermissionEnum._('read');
const ProjectOrganizationPermissionEnum
    _$projectOrganizationPermissionEnum_write =
    const ProjectOrganizationPermissionEnum._('write');
const ProjectOrganizationPermissionEnum
    _$projectOrganizationPermissionEnum_admin =
    const ProjectOrganizationPermissionEnum._('admin');
const ProjectOrganizationPermissionEnum
    _$projectOrganizationPermissionEnum_none =
    const ProjectOrganizationPermissionEnum._('none');

ProjectOrganizationPermissionEnum _$projectOrganizationPermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'read':
      return _$projectOrganizationPermissionEnum_read;
    case 'write':
      return _$projectOrganizationPermissionEnum_write;
    case 'admin':
      return _$projectOrganizationPermissionEnum_admin;
    case 'none':
      return _$projectOrganizationPermissionEnum_none;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ProjectOrganizationPermissionEnum>
    _$projectOrganizationPermissionEnumValues =
    new BuiltSet<ProjectOrganizationPermissionEnum>(const <
        ProjectOrganizationPermissionEnum>[
  _$projectOrganizationPermissionEnum_read,
  _$projectOrganizationPermissionEnum_write,
  _$projectOrganizationPermissionEnum_admin,
  _$projectOrganizationPermissionEnum_none,
]);

Serializer<Project> _$projectSerializer = new _$ProjectSerializer();
Serializer<ProjectOrganizationPermissionEnum>
    _$projectOrganizationPermissionEnumSerializer =
    new _$ProjectOrganizationPermissionEnumSerializer();

class _$ProjectSerializer implements StructuredSerializer<Project> {
  @override
  final Iterable<Type> types = const [Project, _$Project];
  @override
  final String wireName = 'Project';

  @override
  Iterable<Object> serialize(Serializers serializers, Project object,
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
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.organizationPermission != null) {
      result
        ..add('organization_permission')
        ..add(serializers.serialize(object.organizationPermission,
            specifiedType: const FullType(ProjectOrganizationPermissionEnum)));
    }
    if (object.private != null) {
      result
        ..add('private')
        ..add(serializers.serialize(object.private,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Project deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectBuilder();

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
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'organization_permission':
          result.organizationPermission = serializers.deserialize(value,
                  specifiedType:
                      const FullType(ProjectOrganizationPermissionEnum))
              as ProjectOrganizationPermissionEnum;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectOrganizationPermissionEnumSerializer
    implements PrimitiveSerializer<ProjectOrganizationPermissionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[ProjectOrganizationPermissionEnum];
  @override
  final String wireName = 'ProjectOrganizationPermissionEnum';

  @override
  Object serialize(
          Serializers serializers, ProjectOrganizationPermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectOrganizationPermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectOrganizationPermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$Project extends Project {
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
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final ProjectOrganizationPermissionEnum organizationPermission;
  @override
  final bool private;

  factory _$Project([void Function(ProjectBuilder) updates]) =>
      (new ProjectBuilder()..update(updates)).build();

  _$Project._(
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
      this.private})
      : super._();

  @override
  Project rebuild(void Function(ProjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBuilder toBuilder() => new ProjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Project &&
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
        private == other.private;
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
        private.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Project')
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
          ..add('private', private))
        .toString();
  }
}

class ProjectBuilder implements Builder<Project, ProjectBuilder> {
  _$Project _$v;

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

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  ProjectOrganizationPermissionEnum _organizationPermission;
  ProjectOrganizationPermissionEnum get organizationPermission =>
      _$this._organizationPermission;
  set organizationPermission(
          ProjectOrganizationPermissionEnum organizationPermission) =>
      _$this._organizationPermission = organizationPermission;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  ProjectBuilder() {
    Project._initializeBuilder(this);
  }

  ProjectBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Project other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Project;
  }

  @override
  void update(void Function(ProjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Project build() {
    _$Project _$result;
    try {
      _$result = _$v ??
          new _$Project._(
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
              private: private);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'creator';
        _creator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Project', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

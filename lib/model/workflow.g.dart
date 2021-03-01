// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'workflow.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WorkflowStateEnum _$workflowStateEnum_active =
    const WorkflowStateEnum._('active');
const WorkflowStateEnum _$workflowStateEnum_deleted =
    const WorkflowStateEnum._('deleted');

WorkflowStateEnum _$workflowStateEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$workflowStateEnum_active;
    case 'deleted':
      return _$workflowStateEnum_deleted;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<WorkflowStateEnum> _$workflowStateEnumValues =
    new BuiltSet<WorkflowStateEnum>(const <WorkflowStateEnum>[
  _$workflowStateEnum_active,
  _$workflowStateEnum_deleted,
]);

Serializer<Workflow> _$workflowSerializer = new _$WorkflowSerializer();
Serializer<WorkflowStateEnum> _$workflowStateEnumSerializer =
    new _$WorkflowStateEnumSerializer();

class _$WorkflowSerializer implements StructuredSerializer<Workflow> {
  @override
  final Iterable<Type> types = const [Workflow, _$Workflow];
  @override
  final String wireName = 'Workflow';

  @override
  Iterable<Object> serialize(Serializers serializers, Workflow object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(WorkflowStateEnum)));
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
    if (object.badgeUrl != null) {
      result
        ..add('badge_url')
        ..add(serializers.serialize(object.badgeUrl,
            specifiedType: const FullType(String)));
    }
    if (object.deletedAt != null) {
      result
        ..add('deleted_at')
        ..add(serializers.serialize(object.deletedAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  Workflow deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkflowBuilder();

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
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(WorkflowStateEnum))
              as WorkflowStateEnum;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'badge_url':
          result.badgeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deleted_at':
          result.deletedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$WorkflowStateEnumSerializer
    implements PrimitiveSerializer<WorkflowStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'deleted': 'deleted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'deleted': 'deleted',
  };

  @override
  final Iterable<Type> types = const <Type>[WorkflowStateEnum];
  @override
  final String wireName = 'WorkflowStateEnum';

  @override
  Object serialize(Serializers serializers, WorkflowStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WorkflowStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WorkflowStateEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

class _$Workflow extends Workflow {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final String path;
  @override
  final WorkflowStateEnum state;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String badgeUrl;
  @override
  final DateTime deletedAt;

  factory _$Workflow([void Function(WorkflowBuilder) updates]) =>
      (new WorkflowBuilder()..update(updates)).build();

  _$Workflow._(
      {this.id,
      this.nodeId,
      this.name,
      this.path,
      this.state,
      this.createdAt,
      this.updatedAt,
      this.url,
      this.htmlUrl,
      this.badgeUrl,
      this.deletedAt})
      : super._();

  @override
  Workflow rebuild(void Function(WorkflowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowBuilder toBuilder() => new WorkflowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Workflow &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        path == other.path &&
        state == other.state &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        badgeUrl == other.badgeUrl &&
        deletedAt == other.deletedAt;
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
                                        $jc($jc(0, id.hashCode),
                                            nodeId.hashCode),
                                        name.hashCode),
                                    path.hashCode),
                                state.hashCode),
                            createdAt.hashCode),
                        updatedAt.hashCode),
                    url.hashCode),
                htmlUrl.hashCode),
            badgeUrl.hashCode),
        deletedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Workflow')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('path', path)
          ..add('state', state)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('badgeUrl', badgeUrl)
          ..add('deletedAt', deletedAt))
        .toString();
  }
}

class WorkflowBuilder implements Builder<Workflow, WorkflowBuilder> {
  _$Workflow _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  WorkflowStateEnum _state;
  WorkflowStateEnum get state => _$this._state;
  set state(WorkflowStateEnum state) => _$this._state = state;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _badgeUrl;
  String get badgeUrl => _$this._badgeUrl;
  set badgeUrl(String badgeUrl) => _$this._badgeUrl = badgeUrl;

  DateTime _deletedAt;
  DateTime get deletedAt => _$this._deletedAt;
  set deletedAt(DateTime deletedAt) => _$this._deletedAt = deletedAt;

  WorkflowBuilder() {
    Workflow._initializeBuilder(this);
  }

  WorkflowBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _path = _$v.path;
      _state = _$v.state;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _badgeUrl = _$v.badgeUrl;
      _deletedAt = _$v.deletedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Workflow other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Workflow;
  }

  @override
  void update(void Function(WorkflowBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Workflow build() {
    final _$result = _$v ??
        new _$Workflow._(
            id: id,
            nodeId: nodeId,
            name: name,
            path: path,
            state: state,
            createdAt: createdAt,
            updatedAt: updatedAt,
            url: url,
            htmlUrl: htmlUrl,
            badgeUrl: badgeUrl,
            deletedAt: deletedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

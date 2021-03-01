// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_column.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectColumn> _$projectColumnSerializer =
    new _$ProjectColumnSerializer();

class _$ProjectColumnSerializer implements StructuredSerializer<ProjectColumn> {
  @override
  final Iterable<Type> types = const [ProjectColumn, _$ProjectColumn];
  @override
  final String wireName = 'ProjectColumn';

  @override
  Iterable<Object> serialize(Serializers serializers, ProjectColumn object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.projectUrl != null) {
      result
        ..add('project_url')
        ..add(serializers.serialize(object.projectUrl,
            specifiedType: const FullType(String)));
    }
    if (object.cardsUrl != null) {
      result
        ..add('cards_url')
        ..add(serializers.serialize(object.cardsUrl,
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
    return result;
  }

  @override
  ProjectColumn deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectColumnBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project_url':
          result.projectUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cards_url':
          result.cardsUrl = serializers.deserialize(value,
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
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectColumn extends ProjectColumn {
  @override
  final String url;
  @override
  final String projectUrl;
  @override
  final String cardsUrl;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$ProjectColumn([void Function(ProjectColumnBuilder) updates]) =>
      (new ProjectColumnBuilder()..update(updates)).build();

  _$ProjectColumn._(
      {this.url,
      this.projectUrl,
      this.cardsUrl,
      this.id,
      this.nodeId,
      this.name,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  ProjectColumn rebuild(void Function(ProjectColumnBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectColumnBuilder toBuilder() => new ProjectColumnBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectColumn &&
        url == other.url &&
        projectUrl == other.projectUrl &&
        cardsUrl == other.cardsUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, url.hashCode), projectUrl.hashCode),
                            cardsUrl.hashCode),
                        id.hashCode),
                    nodeId.hashCode),
                name.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectColumn')
          ..add('url', url)
          ..add('projectUrl', projectUrl)
          ..add('cardsUrl', cardsUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ProjectColumnBuilder
    implements Builder<ProjectColumn, ProjectColumnBuilder> {
  _$ProjectColumn _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _projectUrl;
  String get projectUrl => _$this._projectUrl;
  set projectUrl(String projectUrl) => _$this._projectUrl = projectUrl;

  String _cardsUrl;
  String get cardsUrl => _$this._cardsUrl;
  set cardsUrl(String cardsUrl) => _$this._cardsUrl = cardsUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  ProjectColumnBuilder() {
    ProjectColumn._initializeBuilder(this);
  }

  ProjectColumnBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _projectUrl = _$v.projectUrl;
      _cardsUrl = _$v.cardsUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectColumn other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProjectColumn;
  }

  @override
  void update(void Function(ProjectColumnBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectColumn build() {
    final _$result = _$v ??
        new _$ProjectColumn._(
            url: url,
            projectUrl: projectUrl,
            cardsUrl: cardsUrl,
            id: id,
            nodeId: nodeId,
            name: name,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

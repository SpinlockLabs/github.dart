// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectCard> _$projectCardSerializer = new _$ProjectCardSerializer();

class _$ProjectCardSerializer implements StructuredSerializer<ProjectCard> {
  @override
  final Iterable<Type> types = const [ProjectCard, _$ProjectCard];
  @override
  final String wireName = 'ProjectCard';

  @override
  Iterable<Object> serialize(Serializers serializers, ProjectCard object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
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
    if (object.note != null) {
      result
        ..add('note')
        ..add(serializers.serialize(object.note,
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
    if (object.archived != null) {
      result
        ..add('archived')
        ..add(serializers.serialize(object.archived,
            specifiedType: const FullType(bool)));
    }
    if (object.columnUrl != null) {
      result
        ..add('column_url')
        ..add(serializers.serialize(object.columnUrl,
            specifiedType: const FullType(String)));
    }
    if (object.contentUrl != null) {
      result
        ..add('content_url')
        ..add(serializers.serialize(object.contentUrl,
            specifiedType: const FullType(String)));
    }
    if (object.projectUrl != null) {
      result
        ..add('project_url')
        ..add(serializers.serialize(object.projectUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProjectCard deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectCardBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
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
        case 'archived':
          result.archived = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'column_url':
          result.columnUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content_url':
          result.contentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project_url':
          result.projectUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectCard extends ProjectCard {
  @override
  final String url;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String note;
  @override
  final SimpleUser creator;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool archived;
  @override
  final String columnUrl;
  @override
  final String contentUrl;
  @override
  final String projectUrl;

  factory _$ProjectCard([void Function(ProjectCardBuilder) updates]) =>
      (new ProjectCardBuilder()..update(updates)).build();

  _$ProjectCard._(
      {this.url,
      this.id,
      this.nodeId,
      this.note,
      this.creator,
      this.createdAt,
      this.updatedAt,
      this.archived,
      this.columnUrl,
      this.contentUrl,
      this.projectUrl})
      : super._();

  @override
  ProjectCard rebuild(void Function(ProjectCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectCardBuilder toBuilder() => new ProjectCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectCard &&
        url == other.url &&
        id == other.id &&
        nodeId == other.nodeId &&
        note == other.note &&
        creator == other.creator &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        archived == other.archived &&
        columnUrl == other.columnUrl &&
        contentUrl == other.contentUrl &&
        projectUrl == other.projectUrl;
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
                                    $jc($jc($jc(0, url.hashCode), id.hashCode),
                                        nodeId.hashCode),
                                    note.hashCode),
                                creator.hashCode),
                            createdAt.hashCode),
                        updatedAt.hashCode),
                    archived.hashCode),
                columnUrl.hashCode),
            contentUrl.hashCode),
        projectUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectCard')
          ..add('url', url)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('note', note)
          ..add('creator', creator)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('archived', archived)
          ..add('columnUrl', columnUrl)
          ..add('contentUrl', contentUrl)
          ..add('projectUrl', projectUrl))
        .toString();
  }
}

class ProjectCardBuilder implements Builder<ProjectCard, ProjectCardBuilder> {
  _$ProjectCard _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  SimpleUserBuilder _creator;
  SimpleUserBuilder get creator => _$this._creator ??= new SimpleUserBuilder();
  set creator(SimpleUserBuilder creator) => _$this._creator = creator;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  bool _archived;
  bool get archived => _$this._archived;
  set archived(bool archived) => _$this._archived = archived;

  String _columnUrl;
  String get columnUrl => _$this._columnUrl;
  set columnUrl(String columnUrl) => _$this._columnUrl = columnUrl;

  String _contentUrl;
  String get contentUrl => _$this._contentUrl;
  set contentUrl(String contentUrl) => _$this._contentUrl = contentUrl;

  String _projectUrl;
  String get projectUrl => _$this._projectUrl;
  set projectUrl(String projectUrl) => _$this._projectUrl = projectUrl;

  ProjectCardBuilder() {
    ProjectCard._initializeBuilder(this);
  }

  ProjectCardBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _note = _$v.note;
      _creator = _$v.creator?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _archived = _$v.archived;
      _columnUrl = _$v.columnUrl;
      _contentUrl = _$v.contentUrl;
      _projectUrl = _$v.projectUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectCard other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProjectCard;
  }

  @override
  void update(void Function(ProjectCardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectCard build() {
    _$ProjectCard _$result;
    try {
      _$result = _$v ??
          new _$ProjectCard._(
              url: url,
              id: id,
              nodeId: nodeId,
              note: note,
              creator: _creator?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              archived: archived,
              columnUrl: columnUrl,
              contentUrl: contentUrl,
              projectUrl: projectUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'creator';
        _creator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectCard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

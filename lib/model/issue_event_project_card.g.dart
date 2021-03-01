// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_event_project_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueEventProjectCard> _$issueEventProjectCardSerializer =
    new _$IssueEventProjectCardSerializer();

class _$IssueEventProjectCardSerializer
    implements StructuredSerializer<IssueEventProjectCard> {
  @override
  final Iterable<Type> types = const [
    IssueEventProjectCard,
    _$IssueEventProjectCard
  ];
  @override
  final String wireName = 'IssueEventProjectCard';

  @override
  Iterable<Object> serialize(
      Serializers serializers, IssueEventProjectCard object,
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
    if (object.projectUrl != null) {
      result
        ..add('project_url')
        ..add(serializers.serialize(object.projectUrl,
            specifiedType: const FullType(String)));
    }
    if (object.projectId != null) {
      result
        ..add('project_id')
        ..add(serializers.serialize(object.projectId,
            specifiedType: const FullType(int)));
    }
    if (object.columnName != null) {
      result
        ..add('column_name')
        ..add(serializers.serialize(object.columnName,
            specifiedType: const FullType(String)));
    }
    if (object.previousColumnName != null) {
      result
        ..add('previous_column_name')
        ..add(serializers.serialize(object.previousColumnName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IssueEventProjectCard deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueEventProjectCardBuilder();

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
        case 'project_url':
          result.projectUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project_id':
          result.projectId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'column_name':
          result.columnName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'previous_column_name':
          result.previousColumnName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IssueEventProjectCard extends IssueEventProjectCard {
  @override
  final String url;
  @override
  final int id;
  @override
  final String projectUrl;
  @override
  final int projectId;
  @override
  final String columnName;
  @override
  final String previousColumnName;

  factory _$IssueEventProjectCard(
          [void Function(IssueEventProjectCardBuilder) updates]) =>
      (new IssueEventProjectCardBuilder()..update(updates)).build();

  _$IssueEventProjectCard._(
      {this.url,
      this.id,
      this.projectUrl,
      this.projectId,
      this.columnName,
      this.previousColumnName})
      : super._();

  @override
  IssueEventProjectCard rebuild(
          void Function(IssueEventProjectCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueEventProjectCardBuilder toBuilder() =>
      new IssueEventProjectCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueEventProjectCard &&
        url == other.url &&
        id == other.id &&
        projectUrl == other.projectUrl &&
        projectId == other.projectId &&
        columnName == other.columnName &&
        previousColumnName == other.previousColumnName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, url.hashCode), id.hashCode),
                    projectUrl.hashCode),
                projectId.hashCode),
            columnName.hashCode),
        previousColumnName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueEventProjectCard')
          ..add('url', url)
          ..add('id', id)
          ..add('projectUrl', projectUrl)
          ..add('projectId', projectId)
          ..add('columnName', columnName)
          ..add('previousColumnName', previousColumnName))
        .toString();
  }
}

class IssueEventProjectCardBuilder
    implements Builder<IssueEventProjectCard, IssueEventProjectCardBuilder> {
  _$IssueEventProjectCard _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _projectUrl;
  String get projectUrl => _$this._projectUrl;
  set projectUrl(String projectUrl) => _$this._projectUrl = projectUrl;

  int _projectId;
  int get projectId => _$this._projectId;
  set projectId(int projectId) => _$this._projectId = projectId;

  String _columnName;
  String get columnName => _$this._columnName;
  set columnName(String columnName) => _$this._columnName = columnName;

  String _previousColumnName;
  String get previousColumnName => _$this._previousColumnName;
  set previousColumnName(String previousColumnName) =>
      _$this._previousColumnName = previousColumnName;

  IssueEventProjectCardBuilder() {
    IssueEventProjectCard._initializeBuilder(this);
  }

  IssueEventProjectCardBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _id = _$v.id;
      _projectUrl = _$v.projectUrl;
      _projectId = _$v.projectId;
      _columnName = _$v.columnName;
      _previousColumnName = _$v.previousColumnName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueEventProjectCard other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueEventProjectCard;
  }

  @override
  void update(void Function(IssueEventProjectCardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueEventProjectCard build() {
    final _$result = _$v ??
        new _$IssueEventProjectCard._(
            url: url,
            id: id,
            projectUrl: projectUrl,
            projectId: projectId,
            columnName: columnName,
            previousColumnName: previousColumnName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

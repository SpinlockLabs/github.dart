// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'topic_search_result_item_topic_relation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopicSearchResultItemTopicRelation>
    _$topicSearchResultItemTopicRelationSerializer =
    new _$TopicSearchResultItemTopicRelationSerializer();

class _$TopicSearchResultItemTopicRelationSerializer
    implements StructuredSerializer<TopicSearchResultItemTopicRelation> {
  @override
  final Iterable<Type> types = const [
    TopicSearchResultItemTopicRelation,
    _$TopicSearchResultItemTopicRelation
  ];
  @override
  final String wireName = 'TopicSearchResultItemTopicRelation';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TopicSearchResultItemTopicRelation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.topicId != null) {
      result
        ..add('topic_id')
        ..add(serializers.serialize(object.topicId,
            specifiedType: const FullType(int)));
    }
    if (object.relationType != null) {
      result
        ..add('relation_type')
        ..add(serializers.serialize(object.relationType,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TopicSearchResultItemTopicRelation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicSearchResultItemTopicRelationBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'topic_id':
          result.topicId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'relation_type':
          result.relationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TopicSearchResultItemTopicRelation
    extends TopicSearchResultItemTopicRelation {
  @override
  final int id;
  @override
  final String name;
  @override
  final int topicId;
  @override
  final String relationType;

  factory _$TopicSearchResultItemTopicRelation(
          [void Function(TopicSearchResultItemTopicRelationBuilder) updates]) =>
      (new TopicSearchResultItemTopicRelationBuilder()..update(updates))
          .build();

  _$TopicSearchResultItemTopicRelation._(
      {this.id, this.name, this.topicId, this.relationType})
      : super._();

  @override
  TopicSearchResultItemTopicRelation rebuild(
          void Function(TopicSearchResultItemTopicRelationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicSearchResultItemTopicRelationBuilder toBuilder() =>
      new TopicSearchResultItemTopicRelationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopicSearchResultItemTopicRelation &&
        id == other.id &&
        name == other.name &&
        topicId == other.topicId &&
        relationType == other.relationType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), topicId.hashCode),
        relationType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TopicSearchResultItemTopicRelation')
          ..add('id', id)
          ..add('name', name)
          ..add('topicId', topicId)
          ..add('relationType', relationType))
        .toString();
  }
}

class TopicSearchResultItemTopicRelationBuilder
    implements
        Builder<TopicSearchResultItemTopicRelation,
            TopicSearchResultItemTopicRelationBuilder> {
  _$TopicSearchResultItemTopicRelation _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _topicId;
  int get topicId => _$this._topicId;
  set topicId(int topicId) => _$this._topicId = topicId;

  String _relationType;
  String get relationType => _$this._relationType;
  set relationType(String relationType) => _$this._relationType = relationType;

  TopicSearchResultItemTopicRelationBuilder() {
    TopicSearchResultItemTopicRelation._initializeBuilder(this);
  }

  TopicSearchResultItemTopicRelationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _topicId = _$v.topicId;
      _relationType = _$v.relationType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopicSearchResultItemTopicRelation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TopicSearchResultItemTopicRelation;
  }

  @override
  void update(
      void Function(TopicSearchResultItemTopicRelationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopicSearchResultItemTopicRelation build() {
    final _$result = _$v ??
        new _$TopicSearchResultItemTopicRelation._(
            id: id, name: name, topicId: topicId, relationType: relationType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

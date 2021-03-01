// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'topic_search_result_item_related.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopicSearchResultItemRelated>
    _$topicSearchResultItemRelatedSerializer =
    new _$TopicSearchResultItemRelatedSerializer();

class _$TopicSearchResultItemRelatedSerializer
    implements StructuredSerializer<TopicSearchResultItemRelated> {
  @override
  final Iterable<Type> types = const [
    TopicSearchResultItemRelated,
    _$TopicSearchResultItemRelated
  ];
  @override
  final String wireName = 'TopicSearchResultItemRelated';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TopicSearchResultItemRelated object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.topicRelation != null) {
      result
        ..add('topic_relation')
        ..add(serializers.serialize(object.topicRelation,
            specifiedType: const FullType(TopicSearchResultItemTopicRelation)));
    }
    return result;
  }

  @override
  TopicSearchResultItemRelated deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicSearchResultItemRelatedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'topic_relation':
          result.topicRelation.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(TopicSearchResultItemTopicRelation))
              as TopicSearchResultItemTopicRelation);
          break;
      }
    }

    return result.build();
  }
}

class _$TopicSearchResultItemRelated extends TopicSearchResultItemRelated {
  @override
  final TopicSearchResultItemTopicRelation topicRelation;

  factory _$TopicSearchResultItemRelated(
          [void Function(TopicSearchResultItemRelatedBuilder) updates]) =>
      (new TopicSearchResultItemRelatedBuilder()..update(updates)).build();

  _$TopicSearchResultItemRelated._({this.topicRelation}) : super._();

  @override
  TopicSearchResultItemRelated rebuild(
          void Function(TopicSearchResultItemRelatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicSearchResultItemRelatedBuilder toBuilder() =>
      new TopicSearchResultItemRelatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopicSearchResultItemRelated &&
        topicRelation == other.topicRelation;
  }

  @override
  int get hashCode {
    return $jf($jc(0, topicRelation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TopicSearchResultItemRelated')
          ..add('topicRelation', topicRelation))
        .toString();
  }
}

class TopicSearchResultItemRelatedBuilder
    implements
        Builder<TopicSearchResultItemRelated,
            TopicSearchResultItemRelatedBuilder> {
  _$TopicSearchResultItemRelated _$v;

  TopicSearchResultItemTopicRelationBuilder _topicRelation;
  TopicSearchResultItemTopicRelationBuilder get topicRelation =>
      _$this._topicRelation ??= new TopicSearchResultItemTopicRelationBuilder();
  set topicRelation(TopicSearchResultItemTopicRelationBuilder topicRelation) =>
      _$this._topicRelation = topicRelation;

  TopicSearchResultItemRelatedBuilder() {
    TopicSearchResultItemRelated._initializeBuilder(this);
  }

  TopicSearchResultItemRelatedBuilder get _$this {
    if (_$v != null) {
      _topicRelation = _$v.topicRelation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopicSearchResultItemRelated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TopicSearchResultItemRelated;
  }

  @override
  void update(void Function(TopicSearchResultItemRelatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopicSearchResultItemRelated build() {
    _$TopicSearchResultItemRelated _$result;
    try {
      _$result = _$v ??
          new _$TopicSearchResultItemRelated._(
              topicRelation: _topicRelation?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'topicRelation';
        _topicRelation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TopicSearchResultItemRelated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

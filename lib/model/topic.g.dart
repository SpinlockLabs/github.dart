// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'topic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Topic> _$topicSerializer = new _$TopicSerializer();

class _$TopicSerializer implements StructuredSerializer<Topic> {
  @override
  final Iterable<Type> types = const [Topic, _$Topic];
  @override
  final String wireName = 'Topic';

  @override
  Iterable<Object> serialize(Serializers serializers, Topic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.names != null) {
      result
        ..add('names')
        ..add(serializers.serialize(object.names,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Topic deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'names':
          result.names.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Topic extends Topic {
  @override
  final BuiltList<String> names;

  factory _$Topic([void Function(TopicBuilder) updates]) =>
      (new TopicBuilder()..update(updates)).build();

  _$Topic._({this.names}) : super._();

  @override
  Topic rebuild(void Function(TopicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicBuilder toBuilder() => new TopicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Topic && names == other.names;
  }

  @override
  int get hashCode {
    return $jf($jc(0, names.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Topic')..add('names', names))
        .toString();
  }
}

class TopicBuilder implements Builder<Topic, TopicBuilder> {
  _$Topic _$v;

  ListBuilder<String> _names;
  ListBuilder<String> get names => _$this._names ??= new ListBuilder<String>();
  set names(ListBuilder<String> names) => _$this._names = names;

  TopicBuilder() {
    Topic._initializeBuilder(this);
  }

  TopicBuilder get _$this {
    if (_$v != null) {
      _names = _$v.names?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Topic other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Topic;
  }

  @override
  void update(void Function(TopicBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Topic build() {
    _$Topic _$result;
    try {
      _$result = _$v ?? new _$Topic._(names: _names?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'names';
        _names?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Topic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

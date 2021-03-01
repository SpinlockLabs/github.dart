// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object139.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject139EventEnum _$inlineObject139EventEnum_APPROVE =
    const InlineObject139EventEnum._('APPROVE');
const InlineObject139EventEnum _$inlineObject139EventEnum_REQUEST_CHANGES =
    const InlineObject139EventEnum._('REQUEST_CHANGES');
const InlineObject139EventEnum _$inlineObject139EventEnum_COMMENT =
    const InlineObject139EventEnum._('COMMENT');

InlineObject139EventEnum _$inlineObject139EventEnumValueOf(String name) {
  switch (name) {
    case 'APPROVE':
      return _$inlineObject139EventEnum_APPROVE;
    case 'REQUEST_CHANGES':
      return _$inlineObject139EventEnum_REQUEST_CHANGES;
    case 'COMMENT':
      return _$inlineObject139EventEnum_COMMENT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject139EventEnum> _$inlineObject139EventEnumValues =
    new BuiltSet<InlineObject139EventEnum>(const <InlineObject139EventEnum>[
  _$inlineObject139EventEnum_APPROVE,
  _$inlineObject139EventEnum_REQUEST_CHANGES,
  _$inlineObject139EventEnum_COMMENT,
]);

Serializer<InlineObject139> _$inlineObject139Serializer =
    new _$InlineObject139Serializer();
Serializer<InlineObject139EventEnum> _$inlineObject139EventEnumSerializer =
    new _$InlineObject139EventEnumSerializer();

class _$InlineObject139Serializer
    implements StructuredSerializer<InlineObject139> {
  @override
  final Iterable<Type> types = const [InlineObject139, _$InlineObject139];
  @override
  final String wireName = 'InlineObject139';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject139 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.commitId != null) {
      result
        ..add('commit_id')
        ..add(serializers.serialize(object.commitId,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.event != null) {
      result
        ..add('event')
        ..add(serializers.serialize(object.event,
            specifiedType: const FullType(InlineObject139EventEnum)));
    }
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType: const FullType(BuiltList, const [
              const FullType(ReposOwnerRepoPullsPullNumberReviewsComments)
            ])));
    }
    return result;
  }

  @override
  InlineObject139 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject139Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'commit_id':
          result.commitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'event':
          result.event = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject139EventEnum))
              as InlineObject139EventEnum;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ReposOwnerRepoPullsPullNumberReviewsComments)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject139EventEnumSerializer
    implements PrimitiveSerializer<InlineObject139EventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'APPROVE': 'APPROVE',
    'REQUEST_CHANGES': 'REQUEST_CHANGES',
    'COMMENT': 'COMMENT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'APPROVE': 'APPROVE',
    'REQUEST_CHANGES': 'REQUEST_CHANGES',
    'COMMENT': 'COMMENT',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject139EventEnum];
  @override
  final String wireName = 'InlineObject139EventEnum';

  @override
  Object serialize(Serializers serializers, InlineObject139EventEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject139EventEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject139EventEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject139 extends InlineObject139 {
  @override
  final String commitId;
  @override
  final String body;
  @override
  final InlineObject139EventEnum event;
  @override
  final BuiltList<ReposOwnerRepoPullsPullNumberReviewsComments> comments;

  factory _$InlineObject139([void Function(InlineObject139Builder) updates]) =>
      (new InlineObject139Builder()..update(updates)).build();

  _$InlineObject139._({this.commitId, this.body, this.event, this.comments})
      : super._();

  @override
  InlineObject139 rebuild(void Function(InlineObject139Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject139Builder toBuilder() =>
      new InlineObject139Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject139 &&
        commitId == other.commitId &&
        body == other.body &&
        event == other.event &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, commitId.hashCode), body.hashCode), event.hashCode),
        comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject139')
          ..add('commitId', commitId)
          ..add('body', body)
          ..add('event', event)
          ..add('comments', comments))
        .toString();
  }
}

class InlineObject139Builder
    implements Builder<InlineObject139, InlineObject139Builder> {
  _$InlineObject139 _$v;

  String _commitId;
  String get commitId => _$this._commitId;
  set commitId(String commitId) => _$this._commitId = commitId;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject139EventEnum _event;
  InlineObject139EventEnum get event => _$this._event;
  set event(InlineObject139EventEnum event) => _$this._event = event;

  ListBuilder<ReposOwnerRepoPullsPullNumberReviewsComments> _comments;
  ListBuilder<ReposOwnerRepoPullsPullNumberReviewsComments> get comments =>
      _$this._comments ??=
          new ListBuilder<ReposOwnerRepoPullsPullNumberReviewsComments>();
  set comments(
          ListBuilder<ReposOwnerRepoPullsPullNumberReviewsComments> comments) =>
      _$this._comments = comments;

  InlineObject139Builder() {
    InlineObject139._initializeBuilder(this);
  }

  InlineObject139Builder get _$this {
    if (_$v != null) {
      _commitId = _$v.commitId;
      _body = _$v.body;
      _event = _$v.event;
      _comments = _$v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject139 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject139;
  }

  @override
  void update(void Function(InlineObject139Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject139 build() {
    _$InlineObject139 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject139._(
              commitId: commitId,
              body: body,
              event: event,
              comments: _comments?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comments';
        _comments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject139', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

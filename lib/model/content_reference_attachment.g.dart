// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'content_reference_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentReferenceAttachment> _$contentReferenceAttachmentSerializer =
    new _$ContentReferenceAttachmentSerializer();

class _$ContentReferenceAttachmentSerializer
    implements StructuredSerializer<ContentReferenceAttachment> {
  @override
  final Iterable<Type> types = const [
    ContentReferenceAttachment,
    _$ContentReferenceAttachment
  ];
  @override
  final String wireName = 'ContentReferenceAttachment';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ContentReferenceAttachment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContentReferenceAttachment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentReferenceAttachmentBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContentReferenceAttachment extends ContentReferenceAttachment {
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String nodeId;

  factory _$ContentReferenceAttachment(
          [void Function(ContentReferenceAttachmentBuilder) updates]) =>
      (new ContentReferenceAttachmentBuilder()..update(updates)).build();

  _$ContentReferenceAttachment._({this.id, this.title, this.body, this.nodeId})
      : super._();

  @override
  ContentReferenceAttachment rebuild(
          void Function(ContentReferenceAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentReferenceAttachmentBuilder toBuilder() =>
      new ContentReferenceAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentReferenceAttachment &&
        id == other.id &&
        title == other.title &&
        body == other.body &&
        nodeId == other.nodeId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), title.hashCode), body.hashCode),
        nodeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentReferenceAttachment')
          ..add('id', id)
          ..add('title', title)
          ..add('body', body)
          ..add('nodeId', nodeId))
        .toString();
  }
}

class ContentReferenceAttachmentBuilder
    implements
        Builder<ContentReferenceAttachment, ContentReferenceAttachmentBuilder> {
  _$ContentReferenceAttachment _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  ContentReferenceAttachmentBuilder() {
    ContentReferenceAttachment._initializeBuilder(this);
  }

  ContentReferenceAttachmentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _body = _$v.body;
      _nodeId = _$v.nodeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentReferenceAttachment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentReferenceAttachment;
  }

  @override
  void update(void Function(ContentReferenceAttachmentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentReferenceAttachment build() {
    final _$result = _$v ??
        new _$ContentReferenceAttachment._(
            id: id, title: title, body: body, nodeId: nodeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

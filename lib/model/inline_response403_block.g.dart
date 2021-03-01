// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response403_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse403Block> _$inlineResponse403BlockSerializer =
    new _$InlineResponse403BlockSerializer();

class _$InlineResponse403BlockSerializer
    implements StructuredSerializer<InlineResponse403Block> {
  @override
  final Iterable<Type> types = const [
    InlineResponse403Block,
    _$InlineResponse403Block
  ];
  @override
  final String wireName = 'InlineResponse403Block';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse403Block object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.reason != null) {
      result
        ..add('reason')
        ..add(serializers.serialize(object.reason,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineResponse403Block deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse403BlockBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse403Block extends InlineResponse403Block {
  @override
  final String reason;
  @override
  final String createdAt;
  @override
  final String htmlUrl;

  factory _$InlineResponse403Block(
          [void Function(InlineResponse403BlockBuilder) updates]) =>
      (new InlineResponse403BlockBuilder()..update(updates)).build();

  _$InlineResponse403Block._({this.reason, this.createdAt, this.htmlUrl})
      : super._();

  @override
  InlineResponse403Block rebuild(
          void Function(InlineResponse403BlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse403BlockBuilder toBuilder() =>
      new InlineResponse403BlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse403Block &&
        reason == other.reason &&
        createdAt == other.createdAt &&
        htmlUrl == other.htmlUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, reason.hashCode), createdAt.hashCode), htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse403Block')
          ..add('reason', reason)
          ..add('createdAt', createdAt)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class InlineResponse403BlockBuilder
    implements Builder<InlineResponse403Block, InlineResponse403BlockBuilder> {
  _$InlineResponse403Block _$v;

  String _reason;
  String get reason => _$this._reason;
  set reason(String reason) => _$this._reason = reason;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  InlineResponse403BlockBuilder() {
    InlineResponse403Block._initializeBuilder(this);
  }

  InlineResponse403BlockBuilder get _$this {
    if (_$v != null) {
      _reason = _$v.reason;
      _createdAt = _$v.createdAt;
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse403Block other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse403Block;
  }

  @override
  void update(void Function(InlineResponse403BlockBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse403Block build() {
    final _$result = _$v ??
        new _$InlineResponse403Block._(
            reason: reason, createdAt: createdAt, htmlUrl: htmlUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

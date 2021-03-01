// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object142.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject142EventEnum _$inlineObject142EventEnum_APPROVE =
    const InlineObject142EventEnum._('APPROVE');
const InlineObject142EventEnum _$inlineObject142EventEnum_REQUEST_CHANGES =
    const InlineObject142EventEnum._('REQUEST_CHANGES');
const InlineObject142EventEnum _$inlineObject142EventEnum_COMMENT =
    const InlineObject142EventEnum._('COMMENT');

InlineObject142EventEnum _$inlineObject142EventEnumValueOf(String name) {
  switch (name) {
    case 'APPROVE':
      return _$inlineObject142EventEnum_APPROVE;
    case 'REQUEST_CHANGES':
      return _$inlineObject142EventEnum_REQUEST_CHANGES;
    case 'COMMENT':
      return _$inlineObject142EventEnum_COMMENT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject142EventEnum> _$inlineObject142EventEnumValues =
    new BuiltSet<InlineObject142EventEnum>(const <InlineObject142EventEnum>[
  _$inlineObject142EventEnum_APPROVE,
  _$inlineObject142EventEnum_REQUEST_CHANGES,
  _$inlineObject142EventEnum_COMMENT,
]);

Serializer<InlineObject142> _$inlineObject142Serializer =
    new _$InlineObject142Serializer();
Serializer<InlineObject142EventEnum> _$inlineObject142EventEnumSerializer =
    new _$InlineObject142EventEnumSerializer();

class _$InlineObject142Serializer
    implements StructuredSerializer<InlineObject142> {
  @override
  final Iterable<Type> types = const [InlineObject142, _$InlineObject142];
  @override
  final String wireName = 'InlineObject142';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject142 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
            specifiedType: const FullType(InlineObject142EventEnum)));
    }
    return result;
  }

  @override
  InlineObject142 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject142Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'event':
          result.event = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject142EventEnum))
              as InlineObject142EventEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject142EventEnumSerializer
    implements PrimitiveSerializer<InlineObject142EventEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject142EventEnum];
  @override
  final String wireName = 'InlineObject142EventEnum';

  @override
  Object serialize(Serializers serializers, InlineObject142EventEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject142EventEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject142EventEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject142 extends InlineObject142 {
  @override
  final String body;
  @override
  final InlineObject142EventEnum event;

  factory _$InlineObject142([void Function(InlineObject142Builder) updates]) =>
      (new InlineObject142Builder()..update(updates)).build();

  _$InlineObject142._({this.body, this.event}) : super._();

  @override
  InlineObject142 rebuild(void Function(InlineObject142Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject142Builder toBuilder() =>
      new InlineObject142Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject142 &&
        body == other.body &&
        event == other.event;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, body.hashCode), event.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject142')
          ..add('body', body)
          ..add('event', event))
        .toString();
  }
}

class InlineObject142Builder
    implements Builder<InlineObject142, InlineObject142Builder> {
  _$InlineObject142 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject142EventEnum _event;
  InlineObject142EventEnum get event => _$this._event;
  set event(InlineObject142EventEnum event) => _$this._event = event;

  InlineObject142Builder() {
    InlineObject142._initializeBuilder(this);
  }

  InlineObject142Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _event = _$v.event;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject142 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject142;
  }

  @override
  void update(void Function(InlineObject142Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject142 build() {
    final _$result = _$v ?? new _$InlineObject142._(body: body, event: event);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

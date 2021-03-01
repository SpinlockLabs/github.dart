// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object93.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject93> _$inlineObject93Serializer =
    new _$InlineObject93Serializer();

class _$InlineObject93Serializer
    implements StructuredSerializer<InlineObject93> {
  @override
  final Iterable<Type> types = const [InlineObject93, _$InlineObject93];
  @override
  final String wireName = 'InlineObject93';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject93 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.eventType != null) {
      result
        ..add('event_type')
        ..add(serializers.serialize(object.eventType,
            specifiedType: const FullType(String)));
    }
    if (object.clientPayload != null) {
      result
        ..add('client_payload')
        ..add(serializers.serialize(object.clientPayload,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(JsonObject)])));
    }
    return result;
  }

  @override
  InlineObject93 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject93Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'event_type':
          result.eventType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client_payload':
          result.clientPayload.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(JsonObject)])));
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject93 extends InlineObject93 {
  @override
  final String eventType;
  @override
  final BuiltMap<String, JsonObject> clientPayload;

  factory _$InlineObject93([void Function(InlineObject93Builder) updates]) =>
      (new InlineObject93Builder()..update(updates)).build();

  _$InlineObject93._({this.eventType, this.clientPayload}) : super._();

  @override
  InlineObject93 rebuild(void Function(InlineObject93Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject93Builder toBuilder() =>
      new InlineObject93Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject93 &&
        eventType == other.eventType &&
        clientPayload == other.clientPayload;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, eventType.hashCode), clientPayload.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject93')
          ..add('eventType', eventType)
          ..add('clientPayload', clientPayload))
        .toString();
  }
}

class InlineObject93Builder
    implements Builder<InlineObject93, InlineObject93Builder> {
  _$InlineObject93 _$v;

  String _eventType;
  String get eventType => _$this._eventType;
  set eventType(String eventType) => _$this._eventType = eventType;

  MapBuilder<String, JsonObject> _clientPayload;
  MapBuilder<String, JsonObject> get clientPayload =>
      _$this._clientPayload ??= new MapBuilder<String, JsonObject>();
  set clientPayload(MapBuilder<String, JsonObject> clientPayload) =>
      _$this._clientPayload = clientPayload;

  InlineObject93Builder() {
    InlineObject93._initializeBuilder(this);
  }

  InlineObject93Builder get _$this {
    if (_$v != null) {
      _eventType = _$v.eventType;
      _clientPayload = _$v.clientPayload?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject93 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject93;
  }

  @override
  void update(void Function(InlineObject93Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject93 build() {
    _$InlineObject93 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject93._(
              eventType: eventType, clientPayload: _clientPayload?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'clientPayload';
        _clientPayload?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject93', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

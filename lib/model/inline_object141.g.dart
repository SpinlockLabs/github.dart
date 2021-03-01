// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object141.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject141> _$inlineObject141Serializer =
    new _$InlineObject141Serializer();

class _$InlineObject141Serializer
    implements StructuredSerializer<InlineObject141> {
  @override
  final Iterable<Type> types = const [InlineObject141, _$InlineObject141];
  @override
  final String wireName = 'InlineObject141';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject141 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.event != null) {
      result
        ..add('event')
        ..add(serializers.serialize(object.event,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject141 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject141Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'event':
          result.event = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject141 extends InlineObject141 {
  @override
  final String message;
  @override
  final String event;

  factory _$InlineObject141([void Function(InlineObject141Builder) updates]) =>
      (new InlineObject141Builder()..update(updates)).build();

  _$InlineObject141._({this.message, this.event}) : super._();

  @override
  InlineObject141 rebuild(void Function(InlineObject141Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject141Builder toBuilder() =>
      new InlineObject141Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject141 &&
        message == other.message &&
        event == other.event;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), event.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject141')
          ..add('message', message)
          ..add('event', event))
        .toString();
  }
}

class InlineObject141Builder
    implements Builder<InlineObject141, InlineObject141Builder> {
  _$InlineObject141 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _event;
  String get event => _$this._event;
  set event(String event) => _$this._event = event;

  InlineObject141Builder() {
    InlineObject141._initializeBuilder(this);
  }

  InlineObject141Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _event = _$v.event;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject141 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject141;
  }

  @override
  void update(void Function(InlineObject141Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject141 build() {
    final _$result =
        _$v ?? new _$InlineObject141._(message: message, event: event);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

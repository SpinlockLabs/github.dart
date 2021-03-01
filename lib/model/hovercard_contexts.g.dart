// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'hovercard_contexts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HovercardContexts> _$hovercardContextsSerializer =
    new _$HovercardContextsSerializer();

class _$HovercardContextsSerializer
    implements StructuredSerializer<HovercardContexts> {
  @override
  final Iterable<Type> types = const [HovercardContexts, _$HovercardContexts];
  @override
  final String wireName = 'HovercardContexts';

  @override
  Iterable<Object> serialize(Serializers serializers, HovercardContexts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.octicon != null) {
      result
        ..add('octicon')
        ..add(serializers.serialize(object.octicon,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HovercardContexts deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HovercardContextsBuilder();

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
        case 'octicon':
          result.octicon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HovercardContexts extends HovercardContexts {
  @override
  final String message;
  @override
  final String octicon;

  factory _$HovercardContexts(
          [void Function(HovercardContextsBuilder) updates]) =>
      (new HovercardContextsBuilder()..update(updates)).build();

  _$HovercardContexts._({this.message, this.octicon}) : super._();

  @override
  HovercardContexts rebuild(void Function(HovercardContextsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HovercardContextsBuilder toBuilder() =>
      new HovercardContextsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HovercardContexts &&
        message == other.message &&
        octicon == other.octicon;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), octicon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HovercardContexts')
          ..add('message', message)
          ..add('octicon', octicon))
        .toString();
  }
}

class HovercardContextsBuilder
    implements Builder<HovercardContexts, HovercardContextsBuilder> {
  _$HovercardContexts _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _octicon;
  String get octicon => _$this._octicon;
  set octicon(String octicon) => _$this._octicon = octicon;

  HovercardContextsBuilder() {
    HovercardContexts._initializeBuilder(this);
  }

  HovercardContextsBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _octicon = _$v.octicon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HovercardContexts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HovercardContexts;
  }

  @override
  void update(void Function(HovercardContextsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HovercardContexts build() {
    final _$result =
        _$v ?? new _$HovercardContexts._(message: message, octicon: octicon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

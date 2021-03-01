// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object178.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject178StateEnum _$inlineObject178StateEnum_active =
    const InlineObject178StateEnum._('active');

InlineObject178StateEnum _$inlineObject178StateEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$inlineObject178StateEnum_active;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject178StateEnum> _$inlineObject178StateEnumValues =
    new BuiltSet<InlineObject178StateEnum>(const <InlineObject178StateEnum>[
  _$inlineObject178StateEnum_active,
]);

Serializer<InlineObject178> _$inlineObject178Serializer =
    new _$InlineObject178Serializer();
Serializer<InlineObject178StateEnum> _$inlineObject178StateEnumSerializer =
    new _$InlineObject178StateEnumSerializer();

class _$InlineObject178Serializer
    implements StructuredSerializer<InlineObject178> {
  @override
  final Iterable<Type> types = const [InlineObject178, _$InlineObject178];
  @override
  final String wireName = 'InlineObject178';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject178 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(InlineObject178StateEnum)));
    }
    return result;
  }

  @override
  InlineObject178 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject178Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject178StateEnum))
              as InlineObject178StateEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject178StateEnumSerializer
    implements PrimitiveSerializer<InlineObject178StateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject178StateEnum];
  @override
  final String wireName = 'InlineObject178StateEnum';

  @override
  Object serialize(Serializers serializers, InlineObject178StateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject178StateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject178StateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject178 extends InlineObject178 {
  @override
  final InlineObject178StateEnum state;

  factory _$InlineObject178([void Function(InlineObject178Builder) updates]) =>
      (new InlineObject178Builder()..update(updates)).build();

  _$InlineObject178._({this.state}) : super._();

  @override
  InlineObject178 rebuild(void Function(InlineObject178Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject178Builder toBuilder() =>
      new InlineObject178Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject178 && state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc(0, state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject178')..add('state', state))
        .toString();
  }
}

class InlineObject178Builder
    implements Builder<InlineObject178, InlineObject178Builder> {
  _$InlineObject178 _$v;

  InlineObject178StateEnum _state;
  InlineObject178StateEnum get state => _$this._state;
  set state(InlineObject178StateEnum state) => _$this._state = state;

  InlineObject178Builder() {
    InlineObject178._initializeBuilder(this);
  }

  InlineObject178Builder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject178 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject178;
  }

  @override
  void update(void Function(InlineObject178Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject178 build() {
    final _$result = _$v ?? new _$InlineObject178._(state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

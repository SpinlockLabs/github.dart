// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object108.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject108UseLfsEnum _$inlineObject108UseLfsEnum_in_ =
    const InlineObject108UseLfsEnum._('in_');
const InlineObject108UseLfsEnum _$inlineObject108UseLfsEnum_out_ =
    const InlineObject108UseLfsEnum._('out_');

InlineObject108UseLfsEnum _$inlineObject108UseLfsEnumValueOf(String name) {
  switch (name) {
    case 'in_':
      return _$inlineObject108UseLfsEnum_in_;
    case 'out_':
      return _$inlineObject108UseLfsEnum_out_;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject108UseLfsEnum> _$inlineObject108UseLfsEnumValues =
    new BuiltSet<InlineObject108UseLfsEnum>(const <InlineObject108UseLfsEnum>[
  _$inlineObject108UseLfsEnum_in_,
  _$inlineObject108UseLfsEnum_out_,
]);

Serializer<InlineObject108> _$inlineObject108Serializer =
    new _$InlineObject108Serializer();
Serializer<InlineObject108UseLfsEnum> _$inlineObject108UseLfsEnumSerializer =
    new _$InlineObject108UseLfsEnumSerializer();

class _$InlineObject108Serializer
    implements StructuredSerializer<InlineObject108> {
  @override
  final Iterable<Type> types = const [InlineObject108, _$InlineObject108];
  @override
  final String wireName = 'InlineObject108';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject108 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.useLfs != null) {
      result
        ..add('use_lfs')
        ..add(serializers.serialize(object.useLfs,
            specifiedType: const FullType(InlineObject108UseLfsEnum)));
    }
    return result;
  }

  @override
  InlineObject108 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject108Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'use_lfs':
          result.useLfs = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject108UseLfsEnum))
              as InlineObject108UseLfsEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject108UseLfsEnumSerializer
    implements PrimitiveSerializer<InlineObject108UseLfsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'in_': 'opt_in',
    'out_': 'opt_out',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'opt_in': 'in_',
    'opt_out': 'out_',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject108UseLfsEnum];
  @override
  final String wireName = 'InlineObject108UseLfsEnum';

  @override
  Object serialize(Serializers serializers, InlineObject108UseLfsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject108UseLfsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject108UseLfsEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject108 extends InlineObject108 {
  @override
  final InlineObject108UseLfsEnum useLfs;

  factory _$InlineObject108([void Function(InlineObject108Builder) updates]) =>
      (new InlineObject108Builder()..update(updates)).build();

  _$InlineObject108._({this.useLfs}) : super._();

  @override
  InlineObject108 rebuild(void Function(InlineObject108Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject108Builder toBuilder() =>
      new InlineObject108Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject108 && useLfs == other.useLfs;
  }

  @override
  int get hashCode {
    return $jf($jc(0, useLfs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject108')
          ..add('useLfs', useLfs))
        .toString();
  }
}

class InlineObject108Builder
    implements Builder<InlineObject108, InlineObject108Builder> {
  _$InlineObject108 _$v;

  InlineObject108UseLfsEnum _useLfs;
  InlineObject108UseLfsEnum get useLfs => _$this._useLfs;
  set useLfs(InlineObject108UseLfsEnum useLfs) => _$this._useLfs = useLfs;

  InlineObject108Builder() {
    InlineObject108._initializeBuilder(this);
  }

  InlineObject108Builder get _$this {
    if (_$v != null) {
      _useLfs = _$v.useLfs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject108 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject108;
  }

  @override
  void update(void Function(InlineObject108Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject108 build() {
    final _$result = _$v ?? new _$InlineObject108._(useLfs: useLfs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object87.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject87ContentEnum _$inlineObject87ContentEnum_plus1 =
    const InlineObject87ContentEnum._('plus1');
const InlineObject87ContentEnum _$inlineObject87ContentEnum_n1 =
    const InlineObject87ContentEnum._('n1');
const InlineObject87ContentEnum _$inlineObject87ContentEnum_laugh =
    const InlineObject87ContentEnum._('laugh');
const InlineObject87ContentEnum _$inlineObject87ContentEnum_confused =
    const InlineObject87ContentEnum._('confused');
const InlineObject87ContentEnum _$inlineObject87ContentEnum_heart =
    const InlineObject87ContentEnum._('heart');
const InlineObject87ContentEnum _$inlineObject87ContentEnum_hooray =
    const InlineObject87ContentEnum._('hooray');
const InlineObject87ContentEnum _$inlineObject87ContentEnum_rocket =
    const InlineObject87ContentEnum._('rocket');
const InlineObject87ContentEnum _$inlineObject87ContentEnum_eyes =
    const InlineObject87ContentEnum._('eyes');

InlineObject87ContentEnum _$inlineObject87ContentEnumValueOf(String name) {
  switch (name) {
    case 'plus1':
      return _$inlineObject87ContentEnum_plus1;
    case 'n1':
      return _$inlineObject87ContentEnum_n1;
    case 'laugh':
      return _$inlineObject87ContentEnum_laugh;
    case 'confused':
      return _$inlineObject87ContentEnum_confused;
    case 'heart':
      return _$inlineObject87ContentEnum_heart;
    case 'hooray':
      return _$inlineObject87ContentEnum_hooray;
    case 'rocket':
      return _$inlineObject87ContentEnum_rocket;
    case 'eyes':
      return _$inlineObject87ContentEnum_eyes;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject87ContentEnum> _$inlineObject87ContentEnumValues =
    new BuiltSet<InlineObject87ContentEnum>(const <InlineObject87ContentEnum>[
  _$inlineObject87ContentEnum_plus1,
  _$inlineObject87ContentEnum_n1,
  _$inlineObject87ContentEnum_laugh,
  _$inlineObject87ContentEnum_confused,
  _$inlineObject87ContentEnum_heart,
  _$inlineObject87ContentEnum_hooray,
  _$inlineObject87ContentEnum_rocket,
  _$inlineObject87ContentEnum_eyes,
]);

Serializer<InlineObject87> _$inlineObject87Serializer =
    new _$InlineObject87Serializer();
Serializer<InlineObject87ContentEnum> _$inlineObject87ContentEnumSerializer =
    new _$InlineObject87ContentEnumSerializer();

class _$InlineObject87Serializer
    implements StructuredSerializer<InlineObject87> {
  @override
  final Iterable<Type> types = const [InlineObject87, _$InlineObject87];
  @override
  final String wireName = 'InlineObject87';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject87 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(InlineObject87ContentEnum)));
    }
    return result;
  }

  @override
  InlineObject87 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject87Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject87ContentEnum))
              as InlineObject87ContentEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject87ContentEnumSerializer
    implements PrimitiveSerializer<InlineObject87ContentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'plus1': '+1',
    'n1': '-1',
    'laugh': 'laugh',
    'confused': 'confused',
    'heart': 'heart',
    'hooray': 'hooray',
    'rocket': 'rocket',
    'eyes': 'eyes',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '+1': 'plus1',
    '-1': 'n1',
    'laugh': 'laugh',
    'confused': 'confused',
    'heart': 'heart',
    'hooray': 'hooray',
    'rocket': 'rocket',
    'eyes': 'eyes',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject87ContentEnum];
  @override
  final String wireName = 'InlineObject87ContentEnum';

  @override
  Object serialize(Serializers serializers, InlineObject87ContentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject87ContentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject87ContentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject87 extends InlineObject87 {
  @override
  final InlineObject87ContentEnum content;

  factory _$InlineObject87([void Function(InlineObject87Builder) updates]) =>
      (new InlineObject87Builder()..update(updates)).build();

  _$InlineObject87._({this.content}) : super._();

  @override
  InlineObject87 rebuild(void Function(InlineObject87Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject87Builder toBuilder() =>
      new InlineObject87Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject87 && content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(0, content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject87')
          ..add('content', content))
        .toString();
  }
}

class InlineObject87Builder
    implements Builder<InlineObject87, InlineObject87Builder> {
  _$InlineObject87 _$v;

  InlineObject87ContentEnum _content;
  InlineObject87ContentEnum get content => _$this._content;
  set content(InlineObject87ContentEnum content) => _$this._content = content;

  InlineObject87Builder() {
    InlineObject87._initializeBuilder(this);
  }

  InlineObject87Builder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject87 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject87;
  }

  @override
  void update(void Function(InlineObject87Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject87 build() {
    final _$result = _$v ?? new _$InlineObject87._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

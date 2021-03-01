// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object120.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject120ContentEnum _$inlineObject120ContentEnum_plus1 =
    const InlineObject120ContentEnum._('plus1');
const InlineObject120ContentEnum _$inlineObject120ContentEnum_n1 =
    const InlineObject120ContentEnum._('n1');
const InlineObject120ContentEnum _$inlineObject120ContentEnum_laugh =
    const InlineObject120ContentEnum._('laugh');
const InlineObject120ContentEnum _$inlineObject120ContentEnum_confused =
    const InlineObject120ContentEnum._('confused');
const InlineObject120ContentEnum _$inlineObject120ContentEnum_heart =
    const InlineObject120ContentEnum._('heart');
const InlineObject120ContentEnum _$inlineObject120ContentEnum_hooray =
    const InlineObject120ContentEnum._('hooray');
const InlineObject120ContentEnum _$inlineObject120ContentEnum_rocket =
    const InlineObject120ContentEnum._('rocket');
const InlineObject120ContentEnum _$inlineObject120ContentEnum_eyes =
    const InlineObject120ContentEnum._('eyes');

InlineObject120ContentEnum _$inlineObject120ContentEnumValueOf(String name) {
  switch (name) {
    case 'plus1':
      return _$inlineObject120ContentEnum_plus1;
    case 'n1':
      return _$inlineObject120ContentEnum_n1;
    case 'laugh':
      return _$inlineObject120ContentEnum_laugh;
    case 'confused':
      return _$inlineObject120ContentEnum_confused;
    case 'heart':
      return _$inlineObject120ContentEnum_heart;
    case 'hooray':
      return _$inlineObject120ContentEnum_hooray;
    case 'rocket':
      return _$inlineObject120ContentEnum_rocket;
    case 'eyes':
      return _$inlineObject120ContentEnum_eyes;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject120ContentEnum> _$inlineObject120ContentEnumValues =
    new BuiltSet<InlineObject120ContentEnum>(const <InlineObject120ContentEnum>[
  _$inlineObject120ContentEnum_plus1,
  _$inlineObject120ContentEnum_n1,
  _$inlineObject120ContentEnum_laugh,
  _$inlineObject120ContentEnum_confused,
  _$inlineObject120ContentEnum_heart,
  _$inlineObject120ContentEnum_hooray,
  _$inlineObject120ContentEnum_rocket,
  _$inlineObject120ContentEnum_eyes,
]);

Serializer<InlineObject120> _$inlineObject120Serializer =
    new _$InlineObject120Serializer();
Serializer<InlineObject120ContentEnum> _$inlineObject120ContentEnumSerializer =
    new _$InlineObject120ContentEnumSerializer();

class _$InlineObject120Serializer
    implements StructuredSerializer<InlineObject120> {
  @override
  final Iterable<Type> types = const [InlineObject120, _$InlineObject120];
  @override
  final String wireName = 'InlineObject120';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject120 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(InlineObject120ContentEnum)));
    }
    return result;
  }

  @override
  InlineObject120 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject120Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject120ContentEnum))
              as InlineObject120ContentEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject120ContentEnumSerializer
    implements PrimitiveSerializer<InlineObject120ContentEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject120ContentEnum];
  @override
  final String wireName = 'InlineObject120ContentEnum';

  @override
  Object serialize(Serializers serializers, InlineObject120ContentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject120ContentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject120ContentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject120 extends InlineObject120 {
  @override
  final InlineObject120ContentEnum content;

  factory _$InlineObject120([void Function(InlineObject120Builder) updates]) =>
      (new InlineObject120Builder()..update(updates)).build();

  _$InlineObject120._({this.content}) : super._();

  @override
  InlineObject120 rebuild(void Function(InlineObject120Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject120Builder toBuilder() =>
      new InlineObject120Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject120 && content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(0, content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject120')
          ..add('content', content))
        .toString();
  }
}

class InlineObject120Builder
    implements Builder<InlineObject120, InlineObject120Builder> {
  _$InlineObject120 _$v;

  InlineObject120ContentEnum _content;
  InlineObject120ContentEnum get content => _$this._content;
  set content(InlineObject120ContentEnum content) => _$this._content = content;

  InlineObject120Builder() {
    InlineObject120._initializeBuilder(this);
  }

  InlineObject120Builder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject120 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject120;
  }

  @override
  void update(void Function(InlineObject120Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject120 build() {
    final _$result = _$v ?? new _$InlineObject120._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

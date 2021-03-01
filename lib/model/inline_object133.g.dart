// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object133.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject133ContentEnum _$inlineObject133ContentEnum_plus1 =
    const InlineObject133ContentEnum._('plus1');
const InlineObject133ContentEnum _$inlineObject133ContentEnum_n1 =
    const InlineObject133ContentEnum._('n1');
const InlineObject133ContentEnum _$inlineObject133ContentEnum_laugh =
    const InlineObject133ContentEnum._('laugh');
const InlineObject133ContentEnum _$inlineObject133ContentEnum_confused =
    const InlineObject133ContentEnum._('confused');
const InlineObject133ContentEnum _$inlineObject133ContentEnum_heart =
    const InlineObject133ContentEnum._('heart');
const InlineObject133ContentEnum _$inlineObject133ContentEnum_hooray =
    const InlineObject133ContentEnum._('hooray');
const InlineObject133ContentEnum _$inlineObject133ContentEnum_rocket =
    const InlineObject133ContentEnum._('rocket');
const InlineObject133ContentEnum _$inlineObject133ContentEnum_eyes =
    const InlineObject133ContentEnum._('eyes');

InlineObject133ContentEnum _$inlineObject133ContentEnumValueOf(String name) {
  switch (name) {
    case 'plus1':
      return _$inlineObject133ContentEnum_plus1;
    case 'n1':
      return _$inlineObject133ContentEnum_n1;
    case 'laugh':
      return _$inlineObject133ContentEnum_laugh;
    case 'confused':
      return _$inlineObject133ContentEnum_confused;
    case 'heart':
      return _$inlineObject133ContentEnum_heart;
    case 'hooray':
      return _$inlineObject133ContentEnum_hooray;
    case 'rocket':
      return _$inlineObject133ContentEnum_rocket;
    case 'eyes':
      return _$inlineObject133ContentEnum_eyes;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject133ContentEnum> _$inlineObject133ContentEnumValues =
    new BuiltSet<InlineObject133ContentEnum>(const <InlineObject133ContentEnum>[
  _$inlineObject133ContentEnum_plus1,
  _$inlineObject133ContentEnum_n1,
  _$inlineObject133ContentEnum_laugh,
  _$inlineObject133ContentEnum_confused,
  _$inlineObject133ContentEnum_heart,
  _$inlineObject133ContentEnum_hooray,
  _$inlineObject133ContentEnum_rocket,
  _$inlineObject133ContentEnum_eyes,
]);

Serializer<InlineObject133> _$inlineObject133Serializer =
    new _$InlineObject133Serializer();
Serializer<InlineObject133ContentEnum> _$inlineObject133ContentEnumSerializer =
    new _$InlineObject133ContentEnumSerializer();

class _$InlineObject133Serializer
    implements StructuredSerializer<InlineObject133> {
  @override
  final Iterable<Type> types = const [InlineObject133, _$InlineObject133];
  @override
  final String wireName = 'InlineObject133';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject133 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(InlineObject133ContentEnum)));
    }
    return result;
  }

  @override
  InlineObject133 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject133Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject133ContentEnum))
              as InlineObject133ContentEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject133ContentEnumSerializer
    implements PrimitiveSerializer<InlineObject133ContentEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject133ContentEnum];
  @override
  final String wireName = 'InlineObject133ContentEnum';

  @override
  Object serialize(Serializers serializers, InlineObject133ContentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject133ContentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject133ContentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject133 extends InlineObject133 {
  @override
  final InlineObject133ContentEnum content;

  factory _$InlineObject133([void Function(InlineObject133Builder) updates]) =>
      (new InlineObject133Builder()..update(updates)).build();

  _$InlineObject133._({this.content}) : super._();

  @override
  InlineObject133 rebuild(void Function(InlineObject133Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject133Builder toBuilder() =>
      new InlineObject133Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject133 && content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(0, content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject133')
          ..add('content', content))
        .toString();
  }
}

class InlineObject133Builder
    implements Builder<InlineObject133, InlineObject133Builder> {
  _$InlineObject133 _$v;

  InlineObject133ContentEnum _content;
  InlineObject133ContentEnum get content => _$this._content;
  set content(InlineObject133ContentEnum content) => _$this._content = content;

  InlineObject133Builder() {
    InlineObject133._initializeBuilder(this);
  }

  InlineObject133Builder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject133 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject133;
  }

  @override
  void update(void Function(InlineObject133Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject133 build() {
    final _$result = _$v ?? new _$InlineObject133._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

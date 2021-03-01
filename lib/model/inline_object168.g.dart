// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object168.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject168ContentEnum _$inlineObject168ContentEnum_plus1 =
    const InlineObject168ContentEnum._('plus1');
const InlineObject168ContentEnum _$inlineObject168ContentEnum_n1 =
    const InlineObject168ContentEnum._('n1');
const InlineObject168ContentEnum _$inlineObject168ContentEnum_laugh =
    const InlineObject168ContentEnum._('laugh');
const InlineObject168ContentEnum _$inlineObject168ContentEnum_confused =
    const InlineObject168ContentEnum._('confused');
const InlineObject168ContentEnum _$inlineObject168ContentEnum_heart =
    const InlineObject168ContentEnum._('heart');
const InlineObject168ContentEnum _$inlineObject168ContentEnum_hooray =
    const InlineObject168ContentEnum._('hooray');
const InlineObject168ContentEnum _$inlineObject168ContentEnum_rocket =
    const InlineObject168ContentEnum._('rocket');
const InlineObject168ContentEnum _$inlineObject168ContentEnum_eyes =
    const InlineObject168ContentEnum._('eyes');

InlineObject168ContentEnum _$inlineObject168ContentEnumValueOf(String name) {
  switch (name) {
    case 'plus1':
      return _$inlineObject168ContentEnum_plus1;
    case 'n1':
      return _$inlineObject168ContentEnum_n1;
    case 'laugh':
      return _$inlineObject168ContentEnum_laugh;
    case 'confused':
      return _$inlineObject168ContentEnum_confused;
    case 'heart':
      return _$inlineObject168ContentEnum_heart;
    case 'hooray':
      return _$inlineObject168ContentEnum_hooray;
    case 'rocket':
      return _$inlineObject168ContentEnum_rocket;
    case 'eyes':
      return _$inlineObject168ContentEnum_eyes;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject168ContentEnum> _$inlineObject168ContentEnumValues =
    new BuiltSet<InlineObject168ContentEnum>(const <InlineObject168ContentEnum>[
  _$inlineObject168ContentEnum_plus1,
  _$inlineObject168ContentEnum_n1,
  _$inlineObject168ContentEnum_laugh,
  _$inlineObject168ContentEnum_confused,
  _$inlineObject168ContentEnum_heart,
  _$inlineObject168ContentEnum_hooray,
  _$inlineObject168ContentEnum_rocket,
  _$inlineObject168ContentEnum_eyes,
]);

Serializer<InlineObject168> _$inlineObject168Serializer =
    new _$InlineObject168Serializer();
Serializer<InlineObject168ContentEnum> _$inlineObject168ContentEnumSerializer =
    new _$InlineObject168ContentEnumSerializer();

class _$InlineObject168Serializer
    implements StructuredSerializer<InlineObject168> {
  @override
  final Iterable<Type> types = const [InlineObject168, _$InlineObject168];
  @override
  final String wireName = 'InlineObject168';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject168 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(InlineObject168ContentEnum)));
    }
    return result;
  }

  @override
  InlineObject168 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject168Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject168ContentEnum))
              as InlineObject168ContentEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject168ContentEnumSerializer
    implements PrimitiveSerializer<InlineObject168ContentEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject168ContentEnum];
  @override
  final String wireName = 'InlineObject168ContentEnum';

  @override
  Object serialize(Serializers serializers, InlineObject168ContentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject168ContentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject168ContentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject168 extends InlineObject168 {
  @override
  final InlineObject168ContentEnum content;

  factory _$InlineObject168([void Function(InlineObject168Builder) updates]) =>
      (new InlineObject168Builder()..update(updates)).build();

  _$InlineObject168._({this.content}) : super._();

  @override
  InlineObject168 rebuild(void Function(InlineObject168Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject168Builder toBuilder() =>
      new InlineObject168Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject168 && content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(0, content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject168')
          ..add('content', content))
        .toString();
  }
}

class InlineObject168Builder
    implements Builder<InlineObject168, InlineObject168Builder> {
  _$InlineObject168 _$v;

  InlineObject168ContentEnum _content;
  InlineObject168ContentEnum get content => _$this._content;
  set content(InlineObject168ContentEnum content) => _$this._content = content;

  InlineObject168Builder() {
    InlineObject168._initializeBuilder(this);
  }

  InlineObject168Builder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject168 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject168;
  }

  @override
  void update(void Function(InlineObject168Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject168 build() {
    final _$result = _$v ?? new _$InlineObject168._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

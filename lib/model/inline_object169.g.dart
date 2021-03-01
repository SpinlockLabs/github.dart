// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object169.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject169ContentEnum _$inlineObject169ContentEnum_plus1 =
    const InlineObject169ContentEnum._('plus1');
const InlineObject169ContentEnum _$inlineObject169ContentEnum_n1 =
    const InlineObject169ContentEnum._('n1');
const InlineObject169ContentEnum _$inlineObject169ContentEnum_laugh =
    const InlineObject169ContentEnum._('laugh');
const InlineObject169ContentEnum _$inlineObject169ContentEnum_confused =
    const InlineObject169ContentEnum._('confused');
const InlineObject169ContentEnum _$inlineObject169ContentEnum_heart =
    const InlineObject169ContentEnum._('heart');
const InlineObject169ContentEnum _$inlineObject169ContentEnum_hooray =
    const InlineObject169ContentEnum._('hooray');
const InlineObject169ContentEnum _$inlineObject169ContentEnum_rocket =
    const InlineObject169ContentEnum._('rocket');
const InlineObject169ContentEnum _$inlineObject169ContentEnum_eyes =
    const InlineObject169ContentEnum._('eyes');

InlineObject169ContentEnum _$inlineObject169ContentEnumValueOf(String name) {
  switch (name) {
    case 'plus1':
      return _$inlineObject169ContentEnum_plus1;
    case 'n1':
      return _$inlineObject169ContentEnum_n1;
    case 'laugh':
      return _$inlineObject169ContentEnum_laugh;
    case 'confused':
      return _$inlineObject169ContentEnum_confused;
    case 'heart':
      return _$inlineObject169ContentEnum_heart;
    case 'hooray':
      return _$inlineObject169ContentEnum_hooray;
    case 'rocket':
      return _$inlineObject169ContentEnum_rocket;
    case 'eyes':
      return _$inlineObject169ContentEnum_eyes;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject169ContentEnum> _$inlineObject169ContentEnumValues =
    new BuiltSet<InlineObject169ContentEnum>(const <InlineObject169ContentEnum>[
  _$inlineObject169ContentEnum_plus1,
  _$inlineObject169ContentEnum_n1,
  _$inlineObject169ContentEnum_laugh,
  _$inlineObject169ContentEnum_confused,
  _$inlineObject169ContentEnum_heart,
  _$inlineObject169ContentEnum_hooray,
  _$inlineObject169ContentEnum_rocket,
  _$inlineObject169ContentEnum_eyes,
]);

Serializer<InlineObject169> _$inlineObject169Serializer =
    new _$InlineObject169Serializer();
Serializer<InlineObject169ContentEnum> _$inlineObject169ContentEnumSerializer =
    new _$InlineObject169ContentEnumSerializer();

class _$InlineObject169Serializer
    implements StructuredSerializer<InlineObject169> {
  @override
  final Iterable<Type> types = const [InlineObject169, _$InlineObject169];
  @override
  final String wireName = 'InlineObject169';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject169 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(InlineObject169ContentEnum)));
    }
    return result;
  }

  @override
  InlineObject169 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject169Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject169ContentEnum))
              as InlineObject169ContentEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject169ContentEnumSerializer
    implements PrimitiveSerializer<InlineObject169ContentEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject169ContentEnum];
  @override
  final String wireName = 'InlineObject169ContentEnum';

  @override
  Object serialize(Serializers serializers, InlineObject169ContentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject169ContentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject169ContentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject169 extends InlineObject169 {
  @override
  final InlineObject169ContentEnum content;

  factory _$InlineObject169([void Function(InlineObject169Builder) updates]) =>
      (new InlineObject169Builder()..update(updates)).build();

  _$InlineObject169._({this.content}) : super._();

  @override
  InlineObject169 rebuild(void Function(InlineObject169Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject169Builder toBuilder() =>
      new InlineObject169Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject169 && content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(0, content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject169')
          ..add('content', content))
        .toString();
  }
}

class InlineObject169Builder
    implements Builder<InlineObject169, InlineObject169Builder> {
  _$InlineObject169 _$v;

  InlineObject169ContentEnum _content;
  InlineObject169ContentEnum get content => _$this._content;
  set content(InlineObject169ContentEnum content) => _$this._content = content;

  InlineObject169Builder() {
    InlineObject169._initializeBuilder(this);
  }

  InlineObject169Builder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject169 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject169;
  }

  @override
  void update(void Function(InlineObject169Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject169 build() {
    final _$result = _$v ?? new _$InlineObject169._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

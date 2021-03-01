// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object112.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject112ContentEnum _$inlineObject112ContentEnum_plus1 =
    const InlineObject112ContentEnum._('plus1');
const InlineObject112ContentEnum _$inlineObject112ContentEnum_n1 =
    const InlineObject112ContentEnum._('n1');
const InlineObject112ContentEnum _$inlineObject112ContentEnum_laugh =
    const InlineObject112ContentEnum._('laugh');
const InlineObject112ContentEnum _$inlineObject112ContentEnum_confused =
    const InlineObject112ContentEnum._('confused');
const InlineObject112ContentEnum _$inlineObject112ContentEnum_heart =
    const InlineObject112ContentEnum._('heart');
const InlineObject112ContentEnum _$inlineObject112ContentEnum_hooray =
    const InlineObject112ContentEnum._('hooray');
const InlineObject112ContentEnum _$inlineObject112ContentEnum_rocket =
    const InlineObject112ContentEnum._('rocket');
const InlineObject112ContentEnum _$inlineObject112ContentEnum_eyes =
    const InlineObject112ContentEnum._('eyes');

InlineObject112ContentEnum _$inlineObject112ContentEnumValueOf(String name) {
  switch (name) {
    case 'plus1':
      return _$inlineObject112ContentEnum_plus1;
    case 'n1':
      return _$inlineObject112ContentEnum_n1;
    case 'laugh':
      return _$inlineObject112ContentEnum_laugh;
    case 'confused':
      return _$inlineObject112ContentEnum_confused;
    case 'heart':
      return _$inlineObject112ContentEnum_heart;
    case 'hooray':
      return _$inlineObject112ContentEnum_hooray;
    case 'rocket':
      return _$inlineObject112ContentEnum_rocket;
    case 'eyes':
      return _$inlineObject112ContentEnum_eyes;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject112ContentEnum> _$inlineObject112ContentEnumValues =
    new BuiltSet<InlineObject112ContentEnum>(const <InlineObject112ContentEnum>[
  _$inlineObject112ContentEnum_plus1,
  _$inlineObject112ContentEnum_n1,
  _$inlineObject112ContentEnum_laugh,
  _$inlineObject112ContentEnum_confused,
  _$inlineObject112ContentEnum_heart,
  _$inlineObject112ContentEnum_hooray,
  _$inlineObject112ContentEnum_rocket,
  _$inlineObject112ContentEnum_eyes,
]);

Serializer<InlineObject112> _$inlineObject112Serializer =
    new _$InlineObject112Serializer();
Serializer<InlineObject112ContentEnum> _$inlineObject112ContentEnumSerializer =
    new _$InlineObject112ContentEnumSerializer();

class _$InlineObject112Serializer
    implements StructuredSerializer<InlineObject112> {
  @override
  final Iterable<Type> types = const [InlineObject112, _$InlineObject112];
  @override
  final String wireName = 'InlineObject112';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject112 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(InlineObject112ContentEnum)));
    }
    return result;
  }

  @override
  InlineObject112 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject112Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject112ContentEnum))
              as InlineObject112ContentEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject112ContentEnumSerializer
    implements PrimitiveSerializer<InlineObject112ContentEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject112ContentEnum];
  @override
  final String wireName = 'InlineObject112ContentEnum';

  @override
  Object serialize(Serializers serializers, InlineObject112ContentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject112ContentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject112ContentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject112 extends InlineObject112 {
  @override
  final InlineObject112ContentEnum content;

  factory _$InlineObject112([void Function(InlineObject112Builder) updates]) =>
      (new InlineObject112Builder()..update(updates)).build();

  _$InlineObject112._({this.content}) : super._();

  @override
  InlineObject112 rebuild(void Function(InlineObject112Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject112Builder toBuilder() =>
      new InlineObject112Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject112 && content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(0, content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject112')
          ..add('content', content))
        .toString();
  }
}

class InlineObject112Builder
    implements Builder<InlineObject112, InlineObject112Builder> {
  _$InlineObject112 _$v;

  InlineObject112ContentEnum _content;
  InlineObject112ContentEnum get content => _$this._content;
  set content(InlineObject112ContentEnum content) => _$this._content = content;

  InlineObject112Builder() {
    InlineObject112._initializeBuilder(this);
  }

  InlineObject112Builder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject112 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject112;
  }

  @override
  void update(void Function(InlineObject112Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject112 build() {
    final _$result = _$v ?? new _$InlineObject112._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

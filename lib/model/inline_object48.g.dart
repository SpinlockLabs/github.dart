// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object48.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject48ContentEnum _$inlineObject48ContentEnum_plus1 =
    const InlineObject48ContentEnum._('plus1');
const InlineObject48ContentEnum _$inlineObject48ContentEnum_n1 =
    const InlineObject48ContentEnum._('n1');
const InlineObject48ContentEnum _$inlineObject48ContentEnum_laugh =
    const InlineObject48ContentEnum._('laugh');
const InlineObject48ContentEnum _$inlineObject48ContentEnum_confused =
    const InlineObject48ContentEnum._('confused');
const InlineObject48ContentEnum _$inlineObject48ContentEnum_heart =
    const InlineObject48ContentEnum._('heart');
const InlineObject48ContentEnum _$inlineObject48ContentEnum_hooray =
    const InlineObject48ContentEnum._('hooray');
const InlineObject48ContentEnum _$inlineObject48ContentEnum_rocket =
    const InlineObject48ContentEnum._('rocket');
const InlineObject48ContentEnum _$inlineObject48ContentEnum_eyes =
    const InlineObject48ContentEnum._('eyes');

InlineObject48ContentEnum _$inlineObject48ContentEnumValueOf(String name) {
  switch (name) {
    case 'plus1':
      return _$inlineObject48ContentEnum_plus1;
    case 'n1':
      return _$inlineObject48ContentEnum_n1;
    case 'laugh':
      return _$inlineObject48ContentEnum_laugh;
    case 'confused':
      return _$inlineObject48ContentEnum_confused;
    case 'heart':
      return _$inlineObject48ContentEnum_heart;
    case 'hooray':
      return _$inlineObject48ContentEnum_hooray;
    case 'rocket':
      return _$inlineObject48ContentEnum_rocket;
    case 'eyes':
      return _$inlineObject48ContentEnum_eyes;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject48ContentEnum> _$inlineObject48ContentEnumValues =
    new BuiltSet<InlineObject48ContentEnum>(const <InlineObject48ContentEnum>[
  _$inlineObject48ContentEnum_plus1,
  _$inlineObject48ContentEnum_n1,
  _$inlineObject48ContentEnum_laugh,
  _$inlineObject48ContentEnum_confused,
  _$inlineObject48ContentEnum_heart,
  _$inlineObject48ContentEnum_hooray,
  _$inlineObject48ContentEnum_rocket,
  _$inlineObject48ContentEnum_eyes,
]);

Serializer<InlineObject48> _$inlineObject48Serializer =
    new _$InlineObject48Serializer();
Serializer<InlineObject48ContentEnum> _$inlineObject48ContentEnumSerializer =
    new _$InlineObject48ContentEnumSerializer();

class _$InlineObject48Serializer
    implements StructuredSerializer<InlineObject48> {
  @override
  final Iterable<Type> types = const [InlineObject48, _$InlineObject48];
  @override
  final String wireName = 'InlineObject48';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject48 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(InlineObject48ContentEnum)));
    }
    return result;
  }

  @override
  InlineObject48 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject48Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject48ContentEnum))
              as InlineObject48ContentEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject48ContentEnumSerializer
    implements PrimitiveSerializer<InlineObject48ContentEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject48ContentEnum];
  @override
  final String wireName = 'InlineObject48ContentEnum';

  @override
  Object serialize(Serializers serializers, InlineObject48ContentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject48ContentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject48ContentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject48 extends InlineObject48 {
  @override
  final InlineObject48ContentEnum content;

  factory _$InlineObject48([void Function(InlineObject48Builder) updates]) =>
      (new InlineObject48Builder()..update(updates)).build();

  _$InlineObject48._({this.content}) : super._();

  @override
  InlineObject48 rebuild(void Function(InlineObject48Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject48Builder toBuilder() =>
      new InlineObject48Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject48 && content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(0, content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject48')
          ..add('content', content))
        .toString();
  }
}

class InlineObject48Builder
    implements Builder<InlineObject48, InlineObject48Builder> {
  _$InlineObject48 _$v;

  InlineObject48ContentEnum _content;
  InlineObject48ContentEnum get content => _$this._content;
  set content(InlineObject48ContentEnum content) => _$this._content = content;

  InlineObject48Builder() {
    InlineObject48._initializeBuilder(this);
  }

  InlineObject48Builder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject48 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject48;
  }

  @override
  void update(void Function(InlineObject48Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject48 build() {
    final _$result = _$v ?? new _$InlineObject48._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

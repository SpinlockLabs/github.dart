// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object47.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject47ContentEnum _$inlineObject47ContentEnum_plus1 =
    const InlineObject47ContentEnum._('plus1');
const InlineObject47ContentEnum _$inlineObject47ContentEnum_n1 =
    const InlineObject47ContentEnum._('n1');
const InlineObject47ContentEnum _$inlineObject47ContentEnum_laugh =
    const InlineObject47ContentEnum._('laugh');
const InlineObject47ContentEnum _$inlineObject47ContentEnum_confused =
    const InlineObject47ContentEnum._('confused');
const InlineObject47ContentEnum _$inlineObject47ContentEnum_heart =
    const InlineObject47ContentEnum._('heart');
const InlineObject47ContentEnum _$inlineObject47ContentEnum_hooray =
    const InlineObject47ContentEnum._('hooray');
const InlineObject47ContentEnum _$inlineObject47ContentEnum_rocket =
    const InlineObject47ContentEnum._('rocket');
const InlineObject47ContentEnum _$inlineObject47ContentEnum_eyes =
    const InlineObject47ContentEnum._('eyes');

InlineObject47ContentEnum _$inlineObject47ContentEnumValueOf(String name) {
  switch (name) {
    case 'plus1':
      return _$inlineObject47ContentEnum_plus1;
    case 'n1':
      return _$inlineObject47ContentEnum_n1;
    case 'laugh':
      return _$inlineObject47ContentEnum_laugh;
    case 'confused':
      return _$inlineObject47ContentEnum_confused;
    case 'heart':
      return _$inlineObject47ContentEnum_heart;
    case 'hooray':
      return _$inlineObject47ContentEnum_hooray;
    case 'rocket':
      return _$inlineObject47ContentEnum_rocket;
    case 'eyes':
      return _$inlineObject47ContentEnum_eyes;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject47ContentEnum> _$inlineObject47ContentEnumValues =
    new BuiltSet<InlineObject47ContentEnum>(const <InlineObject47ContentEnum>[
  _$inlineObject47ContentEnum_plus1,
  _$inlineObject47ContentEnum_n1,
  _$inlineObject47ContentEnum_laugh,
  _$inlineObject47ContentEnum_confused,
  _$inlineObject47ContentEnum_heart,
  _$inlineObject47ContentEnum_hooray,
  _$inlineObject47ContentEnum_rocket,
  _$inlineObject47ContentEnum_eyes,
]);

Serializer<InlineObject47> _$inlineObject47Serializer =
    new _$InlineObject47Serializer();
Serializer<InlineObject47ContentEnum> _$inlineObject47ContentEnumSerializer =
    new _$InlineObject47ContentEnumSerializer();

class _$InlineObject47Serializer
    implements StructuredSerializer<InlineObject47> {
  @override
  final Iterable<Type> types = const [InlineObject47, _$InlineObject47];
  @override
  final String wireName = 'InlineObject47';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject47 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(InlineObject47ContentEnum)));
    }
    return result;
  }

  @override
  InlineObject47 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject47Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject47ContentEnum))
              as InlineObject47ContentEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject47ContentEnumSerializer
    implements PrimitiveSerializer<InlineObject47ContentEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject47ContentEnum];
  @override
  final String wireName = 'InlineObject47ContentEnum';

  @override
  Object serialize(Serializers serializers, InlineObject47ContentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject47ContentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject47ContentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject47 extends InlineObject47 {
  @override
  final InlineObject47ContentEnum content;

  factory _$InlineObject47([void Function(InlineObject47Builder) updates]) =>
      (new InlineObject47Builder()..update(updates)).build();

  _$InlineObject47._({this.content}) : super._();

  @override
  InlineObject47 rebuild(void Function(InlineObject47Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject47Builder toBuilder() =>
      new InlineObject47Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject47 && content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(0, content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject47')
          ..add('content', content))
        .toString();
  }
}

class InlineObject47Builder
    implements Builder<InlineObject47, InlineObject47Builder> {
  _$InlineObject47 _$v;

  InlineObject47ContentEnum _content;
  InlineObject47ContentEnum get content => _$this._content;
  set content(InlineObject47ContentEnum content) => _$this._content = content;

  InlineObject47Builder() {
    InlineObject47._initializeBuilder(this);
  }

  InlineObject47Builder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject47 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject47;
  }

  @override
  void update(void Function(InlineObject47Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject47 build() {
    final _$result = _$v ?? new _$InlineObject47._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object21.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject21ModeEnum _$inlineObject21ModeEnum_markdown =
    const InlineObject21ModeEnum._('markdown');
const InlineObject21ModeEnum _$inlineObject21ModeEnum_gfm =
    const InlineObject21ModeEnum._('gfm');

InlineObject21ModeEnum _$inlineObject21ModeEnumValueOf(String name) {
  switch (name) {
    case 'markdown':
      return _$inlineObject21ModeEnum_markdown;
    case 'gfm':
      return _$inlineObject21ModeEnum_gfm;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject21ModeEnum> _$inlineObject21ModeEnumValues =
    new BuiltSet<InlineObject21ModeEnum>(const <InlineObject21ModeEnum>[
  _$inlineObject21ModeEnum_markdown,
  _$inlineObject21ModeEnum_gfm,
]);

Serializer<InlineObject21> _$inlineObject21Serializer =
    new _$InlineObject21Serializer();
Serializer<InlineObject21ModeEnum> _$inlineObject21ModeEnumSerializer =
    new _$InlineObject21ModeEnumSerializer();

class _$InlineObject21Serializer
    implements StructuredSerializer<InlineObject21> {
  @override
  final Iterable<Type> types = const [InlineObject21, _$InlineObject21];
  @override
  final String wireName = 'InlineObject21';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject21 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(InlineObject21ModeEnum)));
    }
    if (object.context != null) {
      result
        ..add('context')
        ..add(serializers.serialize(object.context,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject21 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject21Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject21ModeEnum))
              as InlineObject21ModeEnum;
          break;
        case 'context':
          result.context = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject21ModeEnumSerializer
    implements PrimitiveSerializer<InlineObject21ModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'markdown': 'markdown',
    'gfm': 'gfm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'markdown': 'markdown',
    'gfm': 'gfm',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject21ModeEnum];
  @override
  final String wireName = 'InlineObject21ModeEnum';

  @override
  Object serialize(Serializers serializers, InlineObject21ModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject21ModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject21ModeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject21 extends InlineObject21 {
  @override
  final String text;
  @override
  final InlineObject21ModeEnum mode;
  @override
  final String context;

  factory _$InlineObject21([void Function(InlineObject21Builder) updates]) =>
      (new InlineObject21Builder()..update(updates)).build();

  _$InlineObject21._({this.text, this.mode, this.context}) : super._();

  @override
  InlineObject21 rebuild(void Function(InlineObject21Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject21Builder toBuilder() =>
      new InlineObject21Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject21 &&
        text == other.text &&
        mode == other.mode &&
        context == other.context;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, text.hashCode), mode.hashCode), context.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject21')
          ..add('text', text)
          ..add('mode', mode)
          ..add('context', context))
        .toString();
  }
}

class InlineObject21Builder
    implements Builder<InlineObject21, InlineObject21Builder> {
  _$InlineObject21 _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  InlineObject21ModeEnum _mode;
  InlineObject21ModeEnum get mode => _$this._mode;
  set mode(InlineObject21ModeEnum mode) => _$this._mode = mode;

  String _context;
  String get context => _$this._context;
  set context(String context) => _$this._context = context;

  InlineObject21Builder() {
    InlineObject21._initializeBuilder(this);
  }

  InlineObject21Builder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _mode = _$v.mode;
      _context = _$v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject21 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject21;
  }

  @override
  void update(void Function(InlineObject21Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject21 build() {
    final _$result =
        _$v ?? new _$InlineObject21._(text: text, mode: mode, context: context);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object15.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject15VisibilityEnum _$inlineObject15VisibilityEnum_selected =
    const InlineObject15VisibilityEnum._('selected');
const InlineObject15VisibilityEnum _$inlineObject15VisibilityEnum_all =
    const InlineObject15VisibilityEnum._('all');

InlineObject15VisibilityEnum _$inlineObject15VisibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'selected':
      return _$inlineObject15VisibilityEnum_selected;
    case 'all':
      return _$inlineObject15VisibilityEnum_all;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject15VisibilityEnum>
    _$inlineObject15VisibilityEnumValues = new BuiltSet<
        InlineObject15VisibilityEnum>(const <InlineObject15VisibilityEnum>[
  _$inlineObject15VisibilityEnum_selected,
  _$inlineObject15VisibilityEnum_all,
]);

Serializer<InlineObject15> _$inlineObject15Serializer =
    new _$InlineObject15Serializer();
Serializer<InlineObject15VisibilityEnum>
    _$inlineObject15VisibilityEnumSerializer =
    new _$InlineObject15VisibilityEnumSerializer();

class _$InlineObject15Serializer
    implements StructuredSerializer<InlineObject15> {
  @override
  final Iterable<Type> types = const [InlineObject15, _$InlineObject15];
  @override
  final String wireName = 'InlineObject15';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject15 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(InlineObject15VisibilityEnum)));
    }
    return result;
  }

  @override
  InlineObject15 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject15Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject15VisibilityEnum))
              as InlineObject15VisibilityEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject15VisibilityEnumSerializer
    implements PrimitiveSerializer<InlineObject15VisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'selected': 'selected',
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'selected': 'selected',
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject15VisibilityEnum];
  @override
  final String wireName = 'InlineObject15VisibilityEnum';

  @override
  Object serialize(Serializers serializers, InlineObject15VisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject15VisibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject15VisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject15 extends InlineObject15 {
  @override
  final String name;
  @override
  final InlineObject15VisibilityEnum visibility;

  factory _$InlineObject15([void Function(InlineObject15Builder) updates]) =>
      (new InlineObject15Builder()..update(updates)).build();

  _$InlineObject15._({this.name, this.visibility}) : super._();

  @override
  InlineObject15 rebuild(void Function(InlineObject15Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject15Builder toBuilder() =>
      new InlineObject15Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject15 &&
        name == other.name &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), visibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject15')
          ..add('name', name)
          ..add('visibility', visibility))
        .toString();
  }
}

class InlineObject15Builder
    implements Builder<InlineObject15, InlineObject15Builder> {
  _$InlineObject15 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  InlineObject15VisibilityEnum _visibility;
  InlineObject15VisibilityEnum get visibility => _$this._visibility;
  set visibility(InlineObject15VisibilityEnum visibility) =>
      _$this._visibility = visibility;

  InlineObject15Builder() {
    InlineObject15._initializeBuilder(this);
  }

  InlineObject15Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _visibility = _$v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject15 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject15;
  }

  @override
  void update(void Function(InlineObject15Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject15 build() {
    final _$result =
        _$v ?? new _$InlineObject15._(name: name, visibility: visibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

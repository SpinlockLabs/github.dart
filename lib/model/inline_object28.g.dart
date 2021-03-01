// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object28.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject28VisibilityEnum _$inlineObject28VisibilityEnum_selected =
    const InlineObject28VisibilityEnum._('selected');
const InlineObject28VisibilityEnum _$inlineObject28VisibilityEnum_all =
    const InlineObject28VisibilityEnum._('all');
const InlineObject28VisibilityEnum _$inlineObject28VisibilityEnum_private =
    const InlineObject28VisibilityEnum._('private');

InlineObject28VisibilityEnum _$inlineObject28VisibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'selected':
      return _$inlineObject28VisibilityEnum_selected;
    case 'all':
      return _$inlineObject28VisibilityEnum_all;
    case 'private':
      return _$inlineObject28VisibilityEnum_private;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject28VisibilityEnum>
    _$inlineObject28VisibilityEnumValues = new BuiltSet<
        InlineObject28VisibilityEnum>(const <InlineObject28VisibilityEnum>[
  _$inlineObject28VisibilityEnum_selected,
  _$inlineObject28VisibilityEnum_all,
  _$inlineObject28VisibilityEnum_private,
]);

Serializer<InlineObject28> _$inlineObject28Serializer =
    new _$InlineObject28Serializer();
Serializer<InlineObject28VisibilityEnum>
    _$inlineObject28VisibilityEnumSerializer =
    new _$InlineObject28VisibilityEnumSerializer();

class _$InlineObject28Serializer
    implements StructuredSerializer<InlineObject28> {
  @override
  final Iterable<Type> types = const [InlineObject28, _$InlineObject28];
  @override
  final String wireName = 'InlineObject28';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject28 object,
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
            specifiedType: const FullType(InlineObject28VisibilityEnum)));
    }
    return result;
  }

  @override
  InlineObject28 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject28Builder();

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
                  specifiedType: const FullType(InlineObject28VisibilityEnum))
              as InlineObject28VisibilityEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject28VisibilityEnumSerializer
    implements PrimitiveSerializer<InlineObject28VisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'selected': 'selected',
    'all': 'all',
    'private': 'private',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'selected': 'selected',
    'all': 'all',
    'private': 'private',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject28VisibilityEnum];
  @override
  final String wireName = 'InlineObject28VisibilityEnum';

  @override
  Object serialize(Serializers serializers, InlineObject28VisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject28VisibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject28VisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject28 extends InlineObject28 {
  @override
  final String name;
  @override
  final InlineObject28VisibilityEnum visibility;

  factory _$InlineObject28([void Function(InlineObject28Builder) updates]) =>
      (new InlineObject28Builder()..update(updates)).build();

  _$InlineObject28._({this.name, this.visibility}) : super._();

  @override
  InlineObject28 rebuild(void Function(InlineObject28Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject28Builder toBuilder() =>
      new InlineObject28Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject28 &&
        name == other.name &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), visibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject28')
          ..add('name', name)
          ..add('visibility', visibility))
        .toString();
  }
}

class InlineObject28Builder
    implements Builder<InlineObject28, InlineObject28Builder> {
  _$InlineObject28 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  InlineObject28VisibilityEnum _visibility;
  InlineObject28VisibilityEnum get visibility => _$this._visibility;
  set visibility(InlineObject28VisibilityEnum visibility) =>
      _$this._visibility = visibility;

  InlineObject28Builder() {
    InlineObject28._initializeBuilder(this);
  }

  InlineObject28Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _visibility = _$v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject28 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject28;
  }

  @override
  void update(void Function(InlineObject28Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject28 build() {
    final _$result =
        _$v ?? new _$InlineObject28._(name: name, visibility: visibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

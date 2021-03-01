// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object170.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject170RoleEnum _$inlineObject170RoleEnum_member =
    const InlineObject170RoleEnum._('member');
const InlineObject170RoleEnum _$inlineObject170RoleEnum_maintainer =
    const InlineObject170RoleEnum._('maintainer');

InlineObject170RoleEnum _$inlineObject170RoleEnumValueOf(String name) {
  switch (name) {
    case 'member':
      return _$inlineObject170RoleEnum_member;
    case 'maintainer':
      return _$inlineObject170RoleEnum_maintainer;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject170RoleEnum> _$inlineObject170RoleEnumValues =
    new BuiltSet<InlineObject170RoleEnum>(const <InlineObject170RoleEnum>[
  _$inlineObject170RoleEnum_member,
  _$inlineObject170RoleEnum_maintainer,
]);

Serializer<InlineObject170> _$inlineObject170Serializer =
    new _$InlineObject170Serializer();
Serializer<InlineObject170RoleEnum> _$inlineObject170RoleEnumSerializer =
    new _$InlineObject170RoleEnumSerializer();

class _$InlineObject170Serializer
    implements StructuredSerializer<InlineObject170> {
  @override
  final Iterable<Type> types = const [InlineObject170, _$InlineObject170];
  @override
  final String wireName = 'InlineObject170';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject170 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(InlineObject170RoleEnum)));
    }
    return result;
  }

  @override
  InlineObject170 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject170Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject170RoleEnum))
              as InlineObject170RoleEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject170RoleEnumSerializer
    implements PrimitiveSerializer<InlineObject170RoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'member': 'member',
    'maintainer': 'maintainer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'member': 'member',
    'maintainer': 'maintainer',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject170RoleEnum];
  @override
  final String wireName = 'InlineObject170RoleEnum';

  @override
  Object serialize(Serializers serializers, InlineObject170RoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject170RoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject170RoleEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject170 extends InlineObject170 {
  @override
  final InlineObject170RoleEnum role;

  factory _$InlineObject170([void Function(InlineObject170Builder) updates]) =>
      (new InlineObject170Builder()..update(updates)).build();

  _$InlineObject170._({this.role}) : super._();

  @override
  InlineObject170 rebuild(void Function(InlineObject170Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject170Builder toBuilder() =>
      new InlineObject170Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject170 && role == other.role;
  }

  @override
  int get hashCode {
    return $jf($jc(0, role.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject170')..add('role', role))
        .toString();
  }
}

class InlineObject170Builder
    implements Builder<InlineObject170, InlineObject170Builder> {
  _$InlineObject170 _$v;

  InlineObject170RoleEnum _role;
  InlineObject170RoleEnum get role => _$this._role;
  set role(InlineObject170RoleEnum role) => _$this._role = role;

  InlineObject170Builder() {
    InlineObject170._initializeBuilder(this);
  }

  InlineObject170Builder get _$this {
    if (_$v != null) {
      _role = _$v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject170 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject170;
  }

  @override
  void update(void Function(InlineObject170Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject170 build() {
    final _$result = _$v ?? new _$InlineObject170._(role: role);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object49.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject49RoleEnum _$inlineObject49RoleEnum_member =
    const InlineObject49RoleEnum._('member');
const InlineObject49RoleEnum _$inlineObject49RoleEnum_maintainer =
    const InlineObject49RoleEnum._('maintainer');

InlineObject49RoleEnum _$inlineObject49RoleEnumValueOf(String name) {
  switch (name) {
    case 'member':
      return _$inlineObject49RoleEnum_member;
    case 'maintainer':
      return _$inlineObject49RoleEnum_maintainer;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject49RoleEnum> _$inlineObject49RoleEnumValues =
    new BuiltSet<InlineObject49RoleEnum>(const <InlineObject49RoleEnum>[
  _$inlineObject49RoleEnum_member,
  _$inlineObject49RoleEnum_maintainer,
]);

Serializer<InlineObject49> _$inlineObject49Serializer =
    new _$InlineObject49Serializer();
Serializer<InlineObject49RoleEnum> _$inlineObject49RoleEnumSerializer =
    new _$InlineObject49RoleEnumSerializer();

class _$InlineObject49Serializer
    implements StructuredSerializer<InlineObject49> {
  @override
  final Iterable<Type> types = const [InlineObject49, _$InlineObject49];
  @override
  final String wireName = 'InlineObject49';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject49 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(InlineObject49RoleEnum)));
    }
    return result;
  }

  @override
  InlineObject49 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject49Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject49RoleEnum))
              as InlineObject49RoleEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject49RoleEnumSerializer
    implements PrimitiveSerializer<InlineObject49RoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'member': 'member',
    'maintainer': 'maintainer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'member': 'member',
    'maintainer': 'maintainer',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject49RoleEnum];
  @override
  final String wireName = 'InlineObject49RoleEnum';

  @override
  Object serialize(Serializers serializers, InlineObject49RoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject49RoleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject49RoleEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject49 extends InlineObject49 {
  @override
  final InlineObject49RoleEnum role;

  factory _$InlineObject49([void Function(InlineObject49Builder) updates]) =>
      (new InlineObject49Builder()..update(updates)).build();

  _$InlineObject49._({this.role}) : super._();

  @override
  InlineObject49 rebuild(void Function(InlineObject49Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject49Builder toBuilder() =>
      new InlineObject49Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject49 && role == other.role;
  }

  @override
  int get hashCode {
    return $jf($jc(0, role.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject49')..add('role', role))
        .toString();
  }
}

class InlineObject49Builder
    implements Builder<InlineObject49, InlineObject49Builder> {
  _$InlineObject49 _$v;

  InlineObject49RoleEnum _role;
  InlineObject49RoleEnum get role => _$this._role;
  set role(InlineObject49RoleEnum role) => _$this._role = role;

  InlineObject49Builder() {
    InlineObject49._initializeBuilder(this);
  }

  InlineObject49Builder get _$this {
    if (_$v != null) {
      _role = _$v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject49 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject49;
  }

  @override
  void update(void Function(InlineObject49Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject49 build() {
    final _$result = _$v ?? new _$InlineObject49._(role: role);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

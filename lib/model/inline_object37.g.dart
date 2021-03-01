// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object37.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject37RoleEnum _$inlineObject37RoleEnum_admin =
    const InlineObject37RoleEnum._('admin');
const InlineObject37RoleEnum _$inlineObject37RoleEnum_member =
    const InlineObject37RoleEnum._('member');

InlineObject37RoleEnum _$inlineObject37RoleEnumValueOf(String name) {
  switch (name) {
    case 'admin':
      return _$inlineObject37RoleEnum_admin;
    case 'member':
      return _$inlineObject37RoleEnum_member;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject37RoleEnum> _$inlineObject37RoleEnumValues =
    new BuiltSet<InlineObject37RoleEnum>(const <InlineObject37RoleEnum>[
  _$inlineObject37RoleEnum_admin,
  _$inlineObject37RoleEnum_member,
]);

Serializer<InlineObject37> _$inlineObject37Serializer =
    new _$InlineObject37Serializer();
Serializer<InlineObject37RoleEnum> _$inlineObject37RoleEnumSerializer =
    new _$InlineObject37RoleEnumSerializer();

class _$InlineObject37Serializer
    implements StructuredSerializer<InlineObject37> {
  @override
  final Iterable<Type> types = const [InlineObject37, _$InlineObject37];
  @override
  final String wireName = 'InlineObject37';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject37 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(InlineObject37RoleEnum)));
    }
    return result;
  }

  @override
  InlineObject37 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject37Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject37RoleEnum))
              as InlineObject37RoleEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject37RoleEnumSerializer
    implements PrimitiveSerializer<InlineObject37RoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'admin': 'admin',
    'member': 'member',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'admin': 'admin',
    'member': 'member',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject37RoleEnum];
  @override
  final String wireName = 'InlineObject37RoleEnum';

  @override
  Object serialize(Serializers serializers, InlineObject37RoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject37RoleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject37RoleEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject37 extends InlineObject37 {
  @override
  final InlineObject37RoleEnum role;

  factory _$InlineObject37([void Function(InlineObject37Builder) updates]) =>
      (new InlineObject37Builder()..update(updates)).build();

  _$InlineObject37._({this.role}) : super._();

  @override
  InlineObject37 rebuild(void Function(InlineObject37Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject37Builder toBuilder() =>
      new InlineObject37Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject37 && role == other.role;
  }

  @override
  int get hashCode {
    return $jf($jc(0, role.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject37')..add('role', role))
        .toString();
  }
}

class InlineObject37Builder
    implements Builder<InlineObject37, InlineObject37Builder> {
  _$InlineObject37 _$v;

  InlineObject37RoleEnum _role;
  InlineObject37RoleEnum get role => _$this._role;
  set role(InlineObject37RoleEnum role) => _$this._role = role;

  InlineObject37Builder() {
    InlineObject37._initializeBuilder(this);
  }

  InlineObject37Builder get _$this {
    if (_$v != null) {
      _role = _$v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject37 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject37;
  }

  @override
  void update(void Function(InlineObject37Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject37 build() {
    final _$result = _$v ?? new _$InlineObject37._(role: role);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

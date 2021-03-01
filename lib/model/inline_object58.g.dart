// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object58.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject58PermissionEnum _$inlineObject58PermissionEnum_read =
    const InlineObject58PermissionEnum._('read');
const InlineObject58PermissionEnum _$inlineObject58PermissionEnum_write =
    const InlineObject58PermissionEnum._('write');
const InlineObject58PermissionEnum _$inlineObject58PermissionEnum_admin =
    const InlineObject58PermissionEnum._('admin');

InlineObject58PermissionEnum _$inlineObject58PermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'read':
      return _$inlineObject58PermissionEnum_read;
    case 'write':
      return _$inlineObject58PermissionEnum_write;
    case 'admin':
      return _$inlineObject58PermissionEnum_admin;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject58PermissionEnum>
    _$inlineObject58PermissionEnumValues = new BuiltSet<
        InlineObject58PermissionEnum>(const <InlineObject58PermissionEnum>[
  _$inlineObject58PermissionEnum_read,
  _$inlineObject58PermissionEnum_write,
  _$inlineObject58PermissionEnum_admin,
]);

Serializer<InlineObject58> _$inlineObject58Serializer =
    new _$InlineObject58Serializer();
Serializer<InlineObject58PermissionEnum>
    _$inlineObject58PermissionEnumSerializer =
    new _$InlineObject58PermissionEnumSerializer();

class _$InlineObject58Serializer
    implements StructuredSerializer<InlineObject58> {
  @override
  final Iterable<Type> types = const [InlineObject58, _$InlineObject58];
  @override
  final String wireName = 'InlineObject58';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject58 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(InlineObject58PermissionEnum)));
    }
    return result;
  }

  @override
  InlineObject58 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject58Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'permission':
          result.permission = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject58PermissionEnum))
              as InlineObject58PermissionEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject58PermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject58PermissionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject58PermissionEnum];
  @override
  final String wireName = 'InlineObject58PermissionEnum';

  @override
  Object serialize(Serializers serializers, InlineObject58PermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject58PermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject58PermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject58 extends InlineObject58 {
  @override
  final InlineObject58PermissionEnum permission;

  factory _$InlineObject58([void Function(InlineObject58Builder) updates]) =>
      (new InlineObject58Builder()..update(updates)).build();

  _$InlineObject58._({this.permission}) : super._();

  @override
  InlineObject58 rebuild(void Function(InlineObject58Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject58Builder toBuilder() =>
      new InlineObject58Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject58 && permission == other.permission;
  }

  @override
  int get hashCode {
    return $jf($jc(0, permission.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject58')
          ..add('permission', permission))
        .toString();
  }
}

class InlineObject58Builder
    implements Builder<InlineObject58, InlineObject58Builder> {
  _$InlineObject58 _$v;

  InlineObject58PermissionEnum _permission;
  InlineObject58PermissionEnum get permission => _$this._permission;
  set permission(InlineObject58PermissionEnum permission) =>
      _$this._permission = permission;

  InlineObject58Builder() {
    InlineObject58._initializeBuilder(this);
  }

  InlineObject58Builder get _$this {
    if (_$v != null) {
      _permission = _$v.permission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject58 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject58;
  }

  @override
  void update(void Function(InlineObject58Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject58 build() {
    final _$result = _$v ?? new _$InlineObject58._(permission: permission);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

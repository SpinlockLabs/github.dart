// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object171.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject171PermissionEnum _$inlineObject171PermissionEnum_read =
    const InlineObject171PermissionEnum._('read');
const InlineObject171PermissionEnum _$inlineObject171PermissionEnum_write =
    const InlineObject171PermissionEnum._('write');
const InlineObject171PermissionEnum _$inlineObject171PermissionEnum_admin =
    const InlineObject171PermissionEnum._('admin');

InlineObject171PermissionEnum _$inlineObject171PermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'read':
      return _$inlineObject171PermissionEnum_read;
    case 'write':
      return _$inlineObject171PermissionEnum_write;
    case 'admin':
      return _$inlineObject171PermissionEnum_admin;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject171PermissionEnum>
    _$inlineObject171PermissionEnumValues = new BuiltSet<
        InlineObject171PermissionEnum>(const <InlineObject171PermissionEnum>[
  _$inlineObject171PermissionEnum_read,
  _$inlineObject171PermissionEnum_write,
  _$inlineObject171PermissionEnum_admin,
]);

Serializer<InlineObject171> _$inlineObject171Serializer =
    new _$InlineObject171Serializer();
Serializer<InlineObject171PermissionEnum>
    _$inlineObject171PermissionEnumSerializer =
    new _$InlineObject171PermissionEnumSerializer();

class _$InlineObject171Serializer
    implements StructuredSerializer<InlineObject171> {
  @override
  final Iterable<Type> types = const [InlineObject171, _$InlineObject171];
  @override
  final String wireName = 'InlineObject171';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject171 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(InlineObject171PermissionEnum)));
    }
    return result;
  }

  @override
  InlineObject171 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject171Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'permission':
          result.permission = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject171PermissionEnum))
              as InlineObject171PermissionEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject171PermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject171PermissionEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject171PermissionEnum];
  @override
  final String wireName = 'InlineObject171PermissionEnum';

  @override
  Object serialize(
          Serializers serializers, InlineObject171PermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject171PermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject171PermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject171 extends InlineObject171 {
  @override
  final InlineObject171PermissionEnum permission;

  factory _$InlineObject171([void Function(InlineObject171Builder) updates]) =>
      (new InlineObject171Builder()..update(updates)).build();

  _$InlineObject171._({this.permission}) : super._();

  @override
  InlineObject171 rebuild(void Function(InlineObject171Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject171Builder toBuilder() =>
      new InlineObject171Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject171 && permission == other.permission;
  }

  @override
  int get hashCode {
    return $jf($jc(0, permission.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject171')
          ..add('permission', permission))
        .toString();
  }
}

class InlineObject171Builder
    implements Builder<InlineObject171, InlineObject171Builder> {
  _$InlineObject171 _$v;

  InlineObject171PermissionEnum _permission;
  InlineObject171PermissionEnum get permission => _$this._permission;
  set permission(InlineObject171PermissionEnum permission) =>
      _$this._permission = permission;

  InlineObject171Builder() {
    InlineObject171._initializeBuilder(this);
  }

  InlineObject171Builder get _$this {
    if (_$v != null) {
      _permission = _$v.permission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject171 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject171;
  }

  @override
  void update(void Function(InlineObject171Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject171 build() {
    final _$result = _$v ?? new _$InlineObject171._(permission: permission);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

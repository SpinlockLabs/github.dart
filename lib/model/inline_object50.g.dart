// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object50.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject50PermissionEnum _$inlineObject50PermissionEnum_read =
    const InlineObject50PermissionEnum._('read');
const InlineObject50PermissionEnum _$inlineObject50PermissionEnum_write =
    const InlineObject50PermissionEnum._('write');
const InlineObject50PermissionEnum _$inlineObject50PermissionEnum_admin =
    const InlineObject50PermissionEnum._('admin');

InlineObject50PermissionEnum _$inlineObject50PermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'read':
      return _$inlineObject50PermissionEnum_read;
    case 'write':
      return _$inlineObject50PermissionEnum_write;
    case 'admin':
      return _$inlineObject50PermissionEnum_admin;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject50PermissionEnum>
    _$inlineObject50PermissionEnumValues = new BuiltSet<
        InlineObject50PermissionEnum>(const <InlineObject50PermissionEnum>[
  _$inlineObject50PermissionEnum_read,
  _$inlineObject50PermissionEnum_write,
  _$inlineObject50PermissionEnum_admin,
]);

Serializer<InlineObject50> _$inlineObject50Serializer =
    new _$InlineObject50Serializer();
Serializer<InlineObject50PermissionEnum>
    _$inlineObject50PermissionEnumSerializer =
    new _$InlineObject50PermissionEnumSerializer();

class _$InlineObject50Serializer
    implements StructuredSerializer<InlineObject50> {
  @override
  final Iterable<Type> types = const [InlineObject50, _$InlineObject50];
  @override
  final String wireName = 'InlineObject50';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject50 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(InlineObject50PermissionEnum)));
    }
    return result;
  }

  @override
  InlineObject50 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject50Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'permission':
          result.permission = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject50PermissionEnum))
              as InlineObject50PermissionEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject50PermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject50PermissionEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject50PermissionEnum];
  @override
  final String wireName = 'InlineObject50PermissionEnum';

  @override
  Object serialize(Serializers serializers, InlineObject50PermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject50PermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject50PermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject50 extends InlineObject50 {
  @override
  final InlineObject50PermissionEnum permission;

  factory _$InlineObject50([void Function(InlineObject50Builder) updates]) =>
      (new InlineObject50Builder()..update(updates)).build();

  _$InlineObject50._({this.permission}) : super._();

  @override
  InlineObject50 rebuild(void Function(InlineObject50Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject50Builder toBuilder() =>
      new InlineObject50Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject50 && permission == other.permission;
  }

  @override
  int get hashCode {
    return $jf($jc(0, permission.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject50')
          ..add('permission', permission))
        .toString();
  }
}

class InlineObject50Builder
    implements Builder<InlineObject50, InlineObject50Builder> {
  _$InlineObject50 _$v;

  InlineObject50PermissionEnum _permission;
  InlineObject50PermissionEnum get permission => _$this._permission;
  set permission(InlineObject50PermissionEnum permission) =>
      _$this._permission = permission;

  InlineObject50Builder() {
    InlineObject50._initializeBuilder(this);
  }

  InlineObject50Builder get _$this {
    if (_$v != null) {
      _permission = _$v.permission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject50 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject50;
  }

  @override
  void update(void Function(InlineObject50Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject50 build() {
    final _$result = _$v ?? new _$InlineObject50._(permission: permission);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

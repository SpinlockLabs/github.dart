// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object109.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject109PermissionsEnum _$inlineObject109PermissionsEnum_read =
    const InlineObject109PermissionsEnum._('read');
const InlineObject109PermissionsEnum _$inlineObject109PermissionsEnum_write =
    const InlineObject109PermissionsEnum._('write');
const InlineObject109PermissionsEnum _$inlineObject109PermissionsEnum_maintain =
    const InlineObject109PermissionsEnum._('maintain');
const InlineObject109PermissionsEnum _$inlineObject109PermissionsEnum_triage =
    const InlineObject109PermissionsEnum._('triage');
const InlineObject109PermissionsEnum _$inlineObject109PermissionsEnum_admin =
    const InlineObject109PermissionsEnum._('admin');

InlineObject109PermissionsEnum _$inlineObject109PermissionsEnumValueOf(
    String name) {
  switch (name) {
    case 'read':
      return _$inlineObject109PermissionsEnum_read;
    case 'write':
      return _$inlineObject109PermissionsEnum_write;
    case 'maintain':
      return _$inlineObject109PermissionsEnum_maintain;
    case 'triage':
      return _$inlineObject109PermissionsEnum_triage;
    case 'admin':
      return _$inlineObject109PermissionsEnum_admin;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject109PermissionsEnum>
    _$inlineObject109PermissionsEnumValues = new BuiltSet<
        InlineObject109PermissionsEnum>(const <InlineObject109PermissionsEnum>[
  _$inlineObject109PermissionsEnum_read,
  _$inlineObject109PermissionsEnum_write,
  _$inlineObject109PermissionsEnum_maintain,
  _$inlineObject109PermissionsEnum_triage,
  _$inlineObject109PermissionsEnum_admin,
]);

Serializer<InlineObject109> _$inlineObject109Serializer =
    new _$InlineObject109Serializer();
Serializer<InlineObject109PermissionsEnum>
    _$inlineObject109PermissionsEnumSerializer =
    new _$InlineObject109PermissionsEnumSerializer();

class _$InlineObject109Serializer
    implements StructuredSerializer<InlineObject109> {
  @override
  final Iterable<Type> types = const [InlineObject109, _$InlineObject109];
  @override
  final String wireName = 'InlineObject109';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject109 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(InlineObject109PermissionsEnum)));
    }
    return result;
  }

  @override
  InlineObject109 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject109Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'permissions':
          result.permissions = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject109PermissionsEnum))
              as InlineObject109PermissionsEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject109PermissionsEnumSerializer
    implements PrimitiveSerializer<InlineObject109PermissionsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'write': 'write',
    'maintain': 'maintain',
    'triage': 'triage',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'write': 'write',
    'maintain': 'maintain',
    'triage': 'triage',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject109PermissionsEnum];
  @override
  final String wireName = 'InlineObject109PermissionsEnum';

  @override
  Object serialize(
          Serializers serializers, InlineObject109PermissionsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject109PermissionsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject109PermissionsEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject109 extends InlineObject109 {
  @override
  final InlineObject109PermissionsEnum permissions;

  factory _$InlineObject109([void Function(InlineObject109Builder) updates]) =>
      (new InlineObject109Builder()..update(updates)).build();

  _$InlineObject109._({this.permissions}) : super._();

  @override
  InlineObject109 rebuild(void Function(InlineObject109Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject109Builder toBuilder() =>
      new InlineObject109Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject109 && permissions == other.permissions;
  }

  @override
  int get hashCode {
    return $jf($jc(0, permissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject109')
          ..add('permissions', permissions))
        .toString();
  }
}

class InlineObject109Builder
    implements Builder<InlineObject109, InlineObject109Builder> {
  _$InlineObject109 _$v;

  InlineObject109PermissionsEnum _permissions;
  InlineObject109PermissionsEnum get permissions => _$this._permissions;
  set permissions(InlineObject109PermissionsEnum permissions) =>
      _$this._permissions = permissions;

  InlineObject109Builder() {
    InlineObject109._initializeBuilder(this);
  }

  InlineObject109Builder get _$this {
    if (_$v != null) {
      _permissions = _$v.permissions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject109 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject109;
  }

  @override
  void update(void Function(InlineObject109Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject109 build() {
    final _$result = _$v ?? new _$InlineObject109._(permissions: permissions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

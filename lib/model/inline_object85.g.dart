// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object85.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject85PermissionEnum _$inlineObject85PermissionEnum_pull =
    const InlineObject85PermissionEnum._('pull');
const InlineObject85PermissionEnum _$inlineObject85PermissionEnum_push =
    const InlineObject85PermissionEnum._('push');
const InlineObject85PermissionEnum _$inlineObject85PermissionEnum_admin =
    const InlineObject85PermissionEnum._('admin');
const InlineObject85PermissionEnum _$inlineObject85PermissionEnum_maintain =
    const InlineObject85PermissionEnum._('maintain');
const InlineObject85PermissionEnum _$inlineObject85PermissionEnum_triage =
    const InlineObject85PermissionEnum._('triage');

InlineObject85PermissionEnum _$inlineObject85PermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'pull':
      return _$inlineObject85PermissionEnum_pull;
    case 'push':
      return _$inlineObject85PermissionEnum_push;
    case 'admin':
      return _$inlineObject85PermissionEnum_admin;
    case 'maintain':
      return _$inlineObject85PermissionEnum_maintain;
    case 'triage':
      return _$inlineObject85PermissionEnum_triage;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject85PermissionEnum>
    _$inlineObject85PermissionEnumValues = new BuiltSet<
        InlineObject85PermissionEnum>(const <InlineObject85PermissionEnum>[
  _$inlineObject85PermissionEnum_pull,
  _$inlineObject85PermissionEnum_push,
  _$inlineObject85PermissionEnum_admin,
  _$inlineObject85PermissionEnum_maintain,
  _$inlineObject85PermissionEnum_triage,
]);

Serializer<InlineObject85> _$inlineObject85Serializer =
    new _$InlineObject85Serializer();
Serializer<InlineObject85PermissionEnum>
    _$inlineObject85PermissionEnumSerializer =
    new _$InlineObject85PermissionEnumSerializer();

class _$InlineObject85Serializer
    implements StructuredSerializer<InlineObject85> {
  @override
  final Iterable<Type> types = const [InlineObject85, _$InlineObject85];
  @override
  final String wireName = 'InlineObject85';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject85 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(InlineObject85PermissionEnum)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject85 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject85Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'permission':
          result.permission = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject85PermissionEnum))
              as InlineObject85PermissionEnum;
          break;
        case 'permissions':
          result.permissions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject85PermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject85PermissionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pull': 'pull',
    'push': 'push',
    'admin': 'admin',
    'maintain': 'maintain',
    'triage': 'triage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pull': 'pull',
    'push': 'push',
    'admin': 'admin',
    'maintain': 'maintain',
    'triage': 'triage',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject85PermissionEnum];
  @override
  final String wireName = 'InlineObject85PermissionEnum';

  @override
  Object serialize(Serializers serializers, InlineObject85PermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject85PermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject85PermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject85 extends InlineObject85 {
  @override
  final InlineObject85PermissionEnum permission;
  @override
  final String permissions;

  factory _$InlineObject85([void Function(InlineObject85Builder) updates]) =>
      (new InlineObject85Builder()..update(updates)).build();

  _$InlineObject85._({this.permission, this.permissions}) : super._();

  @override
  InlineObject85 rebuild(void Function(InlineObject85Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject85Builder toBuilder() =>
      new InlineObject85Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject85 &&
        permission == other.permission &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, permission.hashCode), permissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject85')
          ..add('permission', permission)
          ..add('permissions', permissions))
        .toString();
  }
}

class InlineObject85Builder
    implements Builder<InlineObject85, InlineObject85Builder> {
  _$InlineObject85 _$v;

  InlineObject85PermissionEnum _permission;
  InlineObject85PermissionEnum get permission => _$this._permission;
  set permission(InlineObject85PermissionEnum permission) =>
      _$this._permission = permission;

  String _permissions;
  String get permissions => _$this._permissions;
  set permissions(String permissions) => _$this._permissions = permissions;

  InlineObject85Builder() {
    InlineObject85._initializeBuilder(this);
  }

  InlineObject85Builder get _$this {
    if (_$v != null) {
      _permission = _$v.permission;
      _permissions = _$v.permissions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject85 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject85;
  }

  @override
  void update(void Function(InlineObject85Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject85 build() {
    final _$result = _$v ??
        new _$InlineObject85._(
            permission: permission, permissions: permissions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

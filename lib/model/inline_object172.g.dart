// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object172.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject172PermissionEnum _$inlineObject172PermissionEnum_pull =
    const InlineObject172PermissionEnum._('pull');
const InlineObject172PermissionEnum _$inlineObject172PermissionEnum_push =
    const InlineObject172PermissionEnum._('push');
const InlineObject172PermissionEnum _$inlineObject172PermissionEnum_admin =
    const InlineObject172PermissionEnum._('admin');

InlineObject172PermissionEnum _$inlineObject172PermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'pull':
      return _$inlineObject172PermissionEnum_pull;
    case 'push':
      return _$inlineObject172PermissionEnum_push;
    case 'admin':
      return _$inlineObject172PermissionEnum_admin;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject172PermissionEnum>
    _$inlineObject172PermissionEnumValues = new BuiltSet<
        InlineObject172PermissionEnum>(const <InlineObject172PermissionEnum>[
  _$inlineObject172PermissionEnum_pull,
  _$inlineObject172PermissionEnum_push,
  _$inlineObject172PermissionEnum_admin,
]);

Serializer<InlineObject172> _$inlineObject172Serializer =
    new _$InlineObject172Serializer();
Serializer<InlineObject172PermissionEnum>
    _$inlineObject172PermissionEnumSerializer =
    new _$InlineObject172PermissionEnumSerializer();

class _$InlineObject172Serializer
    implements StructuredSerializer<InlineObject172> {
  @override
  final Iterable<Type> types = const [InlineObject172, _$InlineObject172];
  @override
  final String wireName = 'InlineObject172';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject172 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(InlineObject172PermissionEnum)));
    }
    return result;
  }

  @override
  InlineObject172 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject172Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'permission':
          result.permission = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject172PermissionEnum))
              as InlineObject172PermissionEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject172PermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject172PermissionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pull': 'pull',
    'push': 'push',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pull': 'pull',
    'push': 'push',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject172PermissionEnum];
  @override
  final String wireName = 'InlineObject172PermissionEnum';

  @override
  Object serialize(
          Serializers serializers, InlineObject172PermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject172PermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject172PermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject172 extends InlineObject172 {
  @override
  final InlineObject172PermissionEnum permission;

  factory _$InlineObject172([void Function(InlineObject172Builder) updates]) =>
      (new InlineObject172Builder()..update(updates)).build();

  _$InlineObject172._({this.permission}) : super._();

  @override
  InlineObject172 rebuild(void Function(InlineObject172Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject172Builder toBuilder() =>
      new InlineObject172Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject172 && permission == other.permission;
  }

  @override
  int get hashCode {
    return $jf($jc(0, permission.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject172')
          ..add('permission', permission))
        .toString();
  }
}

class InlineObject172Builder
    implements Builder<InlineObject172, InlineObject172Builder> {
  _$InlineObject172 _$v;

  InlineObject172PermissionEnum _permission;
  InlineObject172PermissionEnum get permission => _$this._permission;
  set permission(InlineObject172PermissionEnum permission) =>
      _$this._permission = permission;

  InlineObject172Builder() {
    InlineObject172._initializeBuilder(this);
  }

  InlineObject172Builder get _$this {
    if (_$v != null) {
      _permission = _$v.permission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject172 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject172;
  }

  @override
  void update(void Function(InlineObject172Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject172 build() {
    final _$result = _$v ?? new _$InlineObject172._(permission: permission);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object51.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject51PermissionEnum _$inlineObject51PermissionEnum_pull =
    const InlineObject51PermissionEnum._('pull');
const InlineObject51PermissionEnum _$inlineObject51PermissionEnum_push =
    const InlineObject51PermissionEnum._('push');
const InlineObject51PermissionEnum _$inlineObject51PermissionEnum_admin =
    const InlineObject51PermissionEnum._('admin');
const InlineObject51PermissionEnum _$inlineObject51PermissionEnum_maintain =
    const InlineObject51PermissionEnum._('maintain');
const InlineObject51PermissionEnum _$inlineObject51PermissionEnum_triage =
    const InlineObject51PermissionEnum._('triage');

InlineObject51PermissionEnum _$inlineObject51PermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'pull':
      return _$inlineObject51PermissionEnum_pull;
    case 'push':
      return _$inlineObject51PermissionEnum_push;
    case 'admin':
      return _$inlineObject51PermissionEnum_admin;
    case 'maintain':
      return _$inlineObject51PermissionEnum_maintain;
    case 'triage':
      return _$inlineObject51PermissionEnum_triage;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject51PermissionEnum>
    _$inlineObject51PermissionEnumValues = new BuiltSet<
        InlineObject51PermissionEnum>(const <InlineObject51PermissionEnum>[
  _$inlineObject51PermissionEnum_pull,
  _$inlineObject51PermissionEnum_push,
  _$inlineObject51PermissionEnum_admin,
  _$inlineObject51PermissionEnum_maintain,
  _$inlineObject51PermissionEnum_triage,
]);

Serializer<InlineObject51> _$inlineObject51Serializer =
    new _$InlineObject51Serializer();
Serializer<InlineObject51PermissionEnum>
    _$inlineObject51PermissionEnumSerializer =
    new _$InlineObject51PermissionEnumSerializer();

class _$InlineObject51Serializer
    implements StructuredSerializer<InlineObject51> {
  @override
  final Iterable<Type> types = const [InlineObject51, _$InlineObject51];
  @override
  final String wireName = 'InlineObject51';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject51 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(InlineObject51PermissionEnum)));
    }
    return result;
  }

  @override
  InlineObject51 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject51Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'permission':
          result.permission = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject51PermissionEnum))
              as InlineObject51PermissionEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject51PermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject51PermissionEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject51PermissionEnum];
  @override
  final String wireName = 'InlineObject51PermissionEnum';

  @override
  Object serialize(Serializers serializers, InlineObject51PermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject51PermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject51PermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject51 extends InlineObject51 {
  @override
  final InlineObject51PermissionEnum permission;

  factory _$InlineObject51([void Function(InlineObject51Builder) updates]) =>
      (new InlineObject51Builder()..update(updates)).build();

  _$InlineObject51._({this.permission}) : super._();

  @override
  InlineObject51 rebuild(void Function(InlineObject51Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject51Builder toBuilder() =>
      new InlineObject51Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject51 && permission == other.permission;
  }

  @override
  int get hashCode {
    return $jf($jc(0, permission.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject51')
          ..add('permission', permission))
        .toString();
  }
}

class InlineObject51Builder
    implements Builder<InlineObject51, InlineObject51Builder> {
  _$InlineObject51 _$v;

  InlineObject51PermissionEnum _permission;
  InlineObject51PermissionEnum get permission => _$this._permission;
  set permission(InlineObject51PermissionEnum permission) =>
      _$this._permission = permission;

  InlineObject51Builder() {
    InlineObject51._initializeBuilder(this);
  }

  InlineObject51Builder get _$this {
    if (_$v != null) {
      _permission = _$v.permission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject51 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject51;
  }

  @override
  void update(void Function(InlineObject51Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject51 build() {
    final _$result = _$v ?? new _$InlineObject51._(permission: permission);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object57.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject57OrganizationPermissionEnum
    _$inlineObject57OrganizationPermissionEnum_read =
    const InlineObject57OrganizationPermissionEnum._('read');
const InlineObject57OrganizationPermissionEnum
    _$inlineObject57OrganizationPermissionEnum_write =
    const InlineObject57OrganizationPermissionEnum._('write');
const InlineObject57OrganizationPermissionEnum
    _$inlineObject57OrganizationPermissionEnum_admin =
    const InlineObject57OrganizationPermissionEnum._('admin');
const InlineObject57OrganizationPermissionEnum
    _$inlineObject57OrganizationPermissionEnum_none =
    const InlineObject57OrganizationPermissionEnum._('none');

InlineObject57OrganizationPermissionEnum
    _$inlineObject57OrganizationPermissionEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$inlineObject57OrganizationPermissionEnum_read;
    case 'write':
      return _$inlineObject57OrganizationPermissionEnum_write;
    case 'admin':
      return _$inlineObject57OrganizationPermissionEnum_admin;
    case 'none':
      return _$inlineObject57OrganizationPermissionEnum_none;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject57OrganizationPermissionEnum>
    _$inlineObject57OrganizationPermissionEnumValues =
    new BuiltSet<InlineObject57OrganizationPermissionEnum>(const <
        InlineObject57OrganizationPermissionEnum>[
  _$inlineObject57OrganizationPermissionEnum_read,
  _$inlineObject57OrganizationPermissionEnum_write,
  _$inlineObject57OrganizationPermissionEnum_admin,
  _$inlineObject57OrganizationPermissionEnum_none,
]);

Serializer<InlineObject57> _$inlineObject57Serializer =
    new _$InlineObject57Serializer();
Serializer<InlineObject57OrganizationPermissionEnum>
    _$inlineObject57OrganizationPermissionEnumSerializer =
    new _$InlineObject57OrganizationPermissionEnumSerializer();

class _$InlineObject57Serializer
    implements StructuredSerializer<InlineObject57> {
  @override
  final Iterable<Type> types = const [InlineObject57, _$InlineObject57];
  @override
  final String wireName = 'InlineObject57';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject57 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.organizationPermission != null) {
      result
        ..add('organization_permission')
        ..add(serializers.serialize(object.organizationPermission,
            specifiedType:
                const FullType(InlineObject57OrganizationPermissionEnum)));
    }
    if (object.private != null) {
      result
        ..add('private')
        ..add(serializers.serialize(object.private,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject57 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject57Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization_permission':
          result.organizationPermission = serializers.deserialize(value,
                  specifiedType:
                      const FullType(InlineObject57OrganizationPermissionEnum))
              as InlineObject57OrganizationPermissionEnum;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject57OrganizationPermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject57OrganizationPermissionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InlineObject57OrganizationPermissionEnum
  ];
  @override
  final String wireName = 'InlineObject57OrganizationPermissionEnum';

  @override
  Object serialize(Serializers serializers,
          InlineObject57OrganizationPermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject57OrganizationPermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject57OrganizationPermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject57 extends InlineObject57 {
  @override
  final String name;
  @override
  final String body;
  @override
  final String state;
  @override
  final InlineObject57OrganizationPermissionEnum organizationPermission;
  @override
  final bool private;

  factory _$InlineObject57([void Function(InlineObject57Builder) updates]) =>
      (new InlineObject57Builder()..update(updates)).build();

  _$InlineObject57._(
      {this.name,
      this.body,
      this.state,
      this.organizationPermission,
      this.private})
      : super._();

  @override
  InlineObject57 rebuild(void Function(InlineObject57Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject57Builder toBuilder() =>
      new InlineObject57Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject57 &&
        name == other.name &&
        body == other.body &&
        state == other.state &&
        organizationPermission == other.organizationPermission &&
        private == other.private;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), body.hashCode), state.hashCode),
            organizationPermission.hashCode),
        private.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject57')
          ..add('name', name)
          ..add('body', body)
          ..add('state', state)
          ..add('organizationPermission', organizationPermission)
          ..add('private', private))
        .toString();
  }
}

class InlineObject57Builder
    implements Builder<InlineObject57, InlineObject57Builder> {
  _$InlineObject57 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  InlineObject57OrganizationPermissionEnum _organizationPermission;
  InlineObject57OrganizationPermissionEnum get organizationPermission =>
      _$this._organizationPermission;
  set organizationPermission(
          InlineObject57OrganizationPermissionEnum organizationPermission) =>
      _$this._organizationPermission = organizationPermission;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  InlineObject57Builder() {
    InlineObject57._initializeBuilder(this);
  }

  InlineObject57Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _body = _$v.body;
      _state = _$v.state;
      _organizationPermission = _$v.organizationPermission;
      _private = _$v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject57 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject57;
  }

  @override
  void update(void Function(InlineObject57Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject57 build() {
    final _$result = _$v ??
        new _$InlineObject57._(
            name: name,
            body: body,
            state: state,
            organizationPermission: organizationPermission,
            private: private);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

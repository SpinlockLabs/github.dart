// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object163.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject163PrivacyEnum _$inlineObject163PrivacyEnum_secret =
    const InlineObject163PrivacyEnum._('secret');
const InlineObject163PrivacyEnum _$inlineObject163PrivacyEnum_closed =
    const InlineObject163PrivacyEnum._('closed');

InlineObject163PrivacyEnum _$inlineObject163PrivacyEnumValueOf(String name) {
  switch (name) {
    case 'secret':
      return _$inlineObject163PrivacyEnum_secret;
    case 'closed':
      return _$inlineObject163PrivacyEnum_closed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject163PrivacyEnum> _$inlineObject163PrivacyEnumValues =
    new BuiltSet<InlineObject163PrivacyEnum>(const <InlineObject163PrivacyEnum>[
  _$inlineObject163PrivacyEnum_secret,
  _$inlineObject163PrivacyEnum_closed,
]);

const InlineObject163PermissionEnum _$inlineObject163PermissionEnum_pull =
    const InlineObject163PermissionEnum._('pull');
const InlineObject163PermissionEnum _$inlineObject163PermissionEnum_push =
    const InlineObject163PermissionEnum._('push');
const InlineObject163PermissionEnum _$inlineObject163PermissionEnum_admin =
    const InlineObject163PermissionEnum._('admin');

InlineObject163PermissionEnum _$inlineObject163PermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'pull':
      return _$inlineObject163PermissionEnum_pull;
    case 'push':
      return _$inlineObject163PermissionEnum_push;
    case 'admin':
      return _$inlineObject163PermissionEnum_admin;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject163PermissionEnum>
    _$inlineObject163PermissionEnumValues = new BuiltSet<
        InlineObject163PermissionEnum>(const <InlineObject163PermissionEnum>[
  _$inlineObject163PermissionEnum_pull,
  _$inlineObject163PermissionEnum_push,
  _$inlineObject163PermissionEnum_admin,
]);

Serializer<InlineObject163> _$inlineObject163Serializer =
    new _$InlineObject163Serializer();
Serializer<InlineObject163PrivacyEnum> _$inlineObject163PrivacyEnumSerializer =
    new _$InlineObject163PrivacyEnumSerializer();
Serializer<InlineObject163PermissionEnum>
    _$inlineObject163PermissionEnumSerializer =
    new _$InlineObject163PermissionEnumSerializer();

class _$InlineObject163Serializer
    implements StructuredSerializer<InlineObject163> {
  @override
  final Iterable<Type> types = const [InlineObject163, _$InlineObject163];
  @override
  final String wireName = 'InlineObject163';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject163 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.privacy != null) {
      result
        ..add('privacy')
        ..add(serializers.serialize(object.privacy,
            specifiedType: const FullType(InlineObject163PrivacyEnum)));
    }
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(InlineObject163PermissionEnum)));
    }
    if (object.parentTeamId != null) {
      result
        ..add('parent_team_id')
        ..add(serializers.serialize(object.parentTeamId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  InlineObject163 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject163Builder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject163PrivacyEnum))
              as InlineObject163PrivacyEnum;
          break;
        case 'permission':
          result.permission = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject163PermissionEnum))
              as InlineObject163PermissionEnum;
          break;
        case 'parent_team_id':
          result.parentTeamId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject163PrivacyEnumSerializer
    implements PrimitiveSerializer<InlineObject163PrivacyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'secret': 'secret',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'secret': 'secret',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject163PrivacyEnum];
  @override
  final String wireName = 'InlineObject163PrivacyEnum';

  @override
  Object serialize(Serializers serializers, InlineObject163PrivacyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject163PrivacyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject163PrivacyEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject163PermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject163PermissionEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject163PermissionEnum];
  @override
  final String wireName = 'InlineObject163PermissionEnum';

  @override
  Object serialize(
          Serializers serializers, InlineObject163PermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject163PermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject163PermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject163 extends InlineObject163 {
  @override
  final String name;
  @override
  final String description;
  @override
  final InlineObject163PrivacyEnum privacy;
  @override
  final InlineObject163PermissionEnum permission;
  @override
  final int parentTeamId;

  factory _$InlineObject163([void Function(InlineObject163Builder) updates]) =>
      (new InlineObject163Builder()..update(updates)).build();

  _$InlineObject163._(
      {this.name,
      this.description,
      this.privacy,
      this.permission,
      this.parentTeamId})
      : super._();

  @override
  InlineObject163 rebuild(void Function(InlineObject163Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject163Builder toBuilder() =>
      new InlineObject163Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject163 &&
        name == other.name &&
        description == other.description &&
        privacy == other.privacy &&
        permission == other.permission &&
        parentTeamId == other.parentTeamId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), description.hashCode),
                privacy.hashCode),
            permission.hashCode),
        parentTeamId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject163')
          ..add('name', name)
          ..add('description', description)
          ..add('privacy', privacy)
          ..add('permission', permission)
          ..add('parentTeamId', parentTeamId))
        .toString();
  }
}

class InlineObject163Builder
    implements Builder<InlineObject163, InlineObject163Builder> {
  _$InlineObject163 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  InlineObject163PrivacyEnum _privacy;
  InlineObject163PrivacyEnum get privacy => _$this._privacy;
  set privacy(InlineObject163PrivacyEnum privacy) => _$this._privacy = privacy;

  InlineObject163PermissionEnum _permission;
  InlineObject163PermissionEnum get permission => _$this._permission;
  set permission(InlineObject163PermissionEnum permission) =>
      _$this._permission = permission;

  int _parentTeamId;
  int get parentTeamId => _$this._parentTeamId;
  set parentTeamId(int parentTeamId) => _$this._parentTeamId = parentTeamId;

  InlineObject163Builder() {
    InlineObject163._initializeBuilder(this);
  }

  InlineObject163Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _privacy = _$v.privacy;
      _permission = _$v.permission;
      _parentTeamId = _$v.parentTeamId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject163 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject163;
  }

  @override
  void update(void Function(InlineObject163Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject163 build() {
    final _$result = _$v ??
        new _$InlineObject163._(
            name: name,
            description: description,
            privacy: privacy,
            permission: permission,
            parentTeamId: parentTeamId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

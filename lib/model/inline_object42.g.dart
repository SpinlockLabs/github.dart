// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object42.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject42PrivacyEnum _$inlineObject42PrivacyEnum_secret =
    const InlineObject42PrivacyEnum._('secret');
const InlineObject42PrivacyEnum _$inlineObject42PrivacyEnum_closed =
    const InlineObject42PrivacyEnum._('closed');

InlineObject42PrivacyEnum _$inlineObject42PrivacyEnumValueOf(String name) {
  switch (name) {
    case 'secret':
      return _$inlineObject42PrivacyEnum_secret;
    case 'closed':
      return _$inlineObject42PrivacyEnum_closed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject42PrivacyEnum> _$inlineObject42PrivacyEnumValues =
    new BuiltSet<InlineObject42PrivacyEnum>(const <InlineObject42PrivacyEnum>[
  _$inlineObject42PrivacyEnum_secret,
  _$inlineObject42PrivacyEnum_closed,
]);

const InlineObject42PermissionEnum _$inlineObject42PermissionEnum_pull =
    const InlineObject42PermissionEnum._('pull');
const InlineObject42PermissionEnum _$inlineObject42PermissionEnum_push =
    const InlineObject42PermissionEnum._('push');
const InlineObject42PermissionEnum _$inlineObject42PermissionEnum_admin =
    const InlineObject42PermissionEnum._('admin');

InlineObject42PermissionEnum _$inlineObject42PermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'pull':
      return _$inlineObject42PermissionEnum_pull;
    case 'push':
      return _$inlineObject42PermissionEnum_push;
    case 'admin':
      return _$inlineObject42PermissionEnum_admin;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject42PermissionEnum>
    _$inlineObject42PermissionEnumValues = new BuiltSet<
        InlineObject42PermissionEnum>(const <InlineObject42PermissionEnum>[
  _$inlineObject42PermissionEnum_pull,
  _$inlineObject42PermissionEnum_push,
  _$inlineObject42PermissionEnum_admin,
]);

Serializer<InlineObject42> _$inlineObject42Serializer =
    new _$InlineObject42Serializer();
Serializer<InlineObject42PrivacyEnum> _$inlineObject42PrivacyEnumSerializer =
    new _$InlineObject42PrivacyEnumSerializer();
Serializer<InlineObject42PermissionEnum>
    _$inlineObject42PermissionEnumSerializer =
    new _$InlineObject42PermissionEnumSerializer();

class _$InlineObject42Serializer
    implements StructuredSerializer<InlineObject42> {
  @override
  final Iterable<Type> types = const [InlineObject42, _$InlineObject42];
  @override
  final String wireName = 'InlineObject42';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject42 object,
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
            specifiedType: const FullType(InlineObject42PrivacyEnum)));
    }
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(InlineObject42PermissionEnum)));
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
  InlineObject42 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject42Builder();

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
                  specifiedType: const FullType(InlineObject42PrivacyEnum))
              as InlineObject42PrivacyEnum;
          break;
        case 'permission':
          result.permission = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject42PermissionEnum))
              as InlineObject42PermissionEnum;
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

class _$InlineObject42PrivacyEnumSerializer
    implements PrimitiveSerializer<InlineObject42PrivacyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'secret': 'secret',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'secret': 'secret',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject42PrivacyEnum];
  @override
  final String wireName = 'InlineObject42PrivacyEnum';

  @override
  Object serialize(Serializers serializers, InlineObject42PrivacyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject42PrivacyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject42PrivacyEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject42PermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject42PermissionEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject42PermissionEnum];
  @override
  final String wireName = 'InlineObject42PermissionEnum';

  @override
  Object serialize(Serializers serializers, InlineObject42PermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject42PermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject42PermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject42 extends InlineObject42 {
  @override
  final String name;
  @override
  final String description;
  @override
  final InlineObject42PrivacyEnum privacy;
  @override
  final InlineObject42PermissionEnum permission;
  @override
  final int parentTeamId;

  factory _$InlineObject42([void Function(InlineObject42Builder) updates]) =>
      (new InlineObject42Builder()..update(updates)).build();

  _$InlineObject42._(
      {this.name,
      this.description,
      this.privacy,
      this.permission,
      this.parentTeamId})
      : super._();

  @override
  InlineObject42 rebuild(void Function(InlineObject42Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject42Builder toBuilder() =>
      new InlineObject42Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject42 &&
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
    return (newBuiltValueToStringHelper('InlineObject42')
          ..add('name', name)
          ..add('description', description)
          ..add('privacy', privacy)
          ..add('permission', permission)
          ..add('parentTeamId', parentTeamId))
        .toString();
  }
}

class InlineObject42Builder
    implements Builder<InlineObject42, InlineObject42Builder> {
  _$InlineObject42 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  InlineObject42PrivacyEnum _privacy;
  InlineObject42PrivacyEnum get privacy => _$this._privacy;
  set privacy(InlineObject42PrivacyEnum privacy) => _$this._privacy = privacy;

  InlineObject42PermissionEnum _permission;
  InlineObject42PermissionEnum get permission => _$this._permission;
  set permission(InlineObject42PermissionEnum permission) =>
      _$this._permission = permission;

  int _parentTeamId;
  int get parentTeamId => _$this._parentTeamId;
  set parentTeamId(int parentTeamId) => _$this._parentTeamId = parentTeamId;

  InlineObject42Builder() {
    InlineObject42._initializeBuilder(this);
  }

  InlineObject42Builder get _$this {
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
  void replace(InlineObject42 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject42;
  }

  @override
  void update(void Function(InlineObject42Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject42 build() {
    final _$result = _$v ??
        new _$InlineObject42._(
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

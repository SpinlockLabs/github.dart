// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object41.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject41PrivacyEnum _$inlineObject41PrivacyEnum_secret =
    const InlineObject41PrivacyEnum._('secret');
const InlineObject41PrivacyEnum _$inlineObject41PrivacyEnum_closed =
    const InlineObject41PrivacyEnum._('closed');

InlineObject41PrivacyEnum _$inlineObject41PrivacyEnumValueOf(String name) {
  switch (name) {
    case 'secret':
      return _$inlineObject41PrivacyEnum_secret;
    case 'closed':
      return _$inlineObject41PrivacyEnum_closed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject41PrivacyEnum> _$inlineObject41PrivacyEnumValues =
    new BuiltSet<InlineObject41PrivacyEnum>(const <InlineObject41PrivacyEnum>[
  _$inlineObject41PrivacyEnum_secret,
  _$inlineObject41PrivacyEnum_closed,
]);

const InlineObject41PermissionEnum _$inlineObject41PermissionEnum_pull =
    const InlineObject41PermissionEnum._('pull');
const InlineObject41PermissionEnum _$inlineObject41PermissionEnum_push =
    const InlineObject41PermissionEnum._('push');
const InlineObject41PermissionEnum _$inlineObject41PermissionEnum_admin =
    const InlineObject41PermissionEnum._('admin');

InlineObject41PermissionEnum _$inlineObject41PermissionEnumValueOf(
    String name) {
  switch (name) {
    case 'pull':
      return _$inlineObject41PermissionEnum_pull;
    case 'push':
      return _$inlineObject41PermissionEnum_push;
    case 'admin':
      return _$inlineObject41PermissionEnum_admin;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject41PermissionEnum>
    _$inlineObject41PermissionEnumValues = new BuiltSet<
        InlineObject41PermissionEnum>(const <InlineObject41PermissionEnum>[
  _$inlineObject41PermissionEnum_pull,
  _$inlineObject41PermissionEnum_push,
  _$inlineObject41PermissionEnum_admin,
]);

Serializer<InlineObject41> _$inlineObject41Serializer =
    new _$InlineObject41Serializer();
Serializer<InlineObject41PrivacyEnum> _$inlineObject41PrivacyEnumSerializer =
    new _$InlineObject41PrivacyEnumSerializer();
Serializer<InlineObject41PermissionEnum>
    _$inlineObject41PermissionEnumSerializer =
    new _$InlineObject41PermissionEnumSerializer();

class _$InlineObject41Serializer
    implements StructuredSerializer<InlineObject41> {
  @override
  final Iterable<Type> types = const [InlineObject41, _$InlineObject41];
  @override
  final String wireName = 'InlineObject41';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject41 object,
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
    if (object.maintainers != null) {
      result
        ..add('maintainers')
        ..add(serializers.serialize(object.maintainers,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.repoNames != null) {
      result
        ..add('repo_names')
        ..add(serializers.serialize(object.repoNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.privacy != null) {
      result
        ..add('privacy')
        ..add(serializers.serialize(object.privacy,
            specifiedType: const FullType(InlineObject41PrivacyEnum)));
    }
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(InlineObject41PermissionEnum)));
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
  InlineObject41 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject41Builder();

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
        case 'maintainers':
          result.maintainers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'repo_names':
          result.repoNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject41PrivacyEnum))
              as InlineObject41PrivacyEnum;
          break;
        case 'permission':
          result.permission = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject41PermissionEnum))
              as InlineObject41PermissionEnum;
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

class _$InlineObject41PrivacyEnumSerializer
    implements PrimitiveSerializer<InlineObject41PrivacyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'secret': 'secret',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'secret': 'secret',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject41PrivacyEnum];
  @override
  final String wireName = 'InlineObject41PrivacyEnum';

  @override
  Object serialize(Serializers serializers, InlineObject41PrivacyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject41PrivacyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject41PrivacyEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject41PermissionEnumSerializer
    implements PrimitiveSerializer<InlineObject41PermissionEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject41PermissionEnum];
  @override
  final String wireName = 'InlineObject41PermissionEnum';

  @override
  Object serialize(Serializers serializers, InlineObject41PermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject41PermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject41PermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject41 extends InlineObject41 {
  @override
  final String name;
  @override
  final String description;
  @override
  final BuiltList<String> maintainers;
  @override
  final BuiltList<String> repoNames;
  @override
  final InlineObject41PrivacyEnum privacy;
  @override
  final InlineObject41PermissionEnum permission;
  @override
  final int parentTeamId;

  factory _$InlineObject41([void Function(InlineObject41Builder) updates]) =>
      (new InlineObject41Builder()..update(updates)).build();

  _$InlineObject41._(
      {this.name,
      this.description,
      this.maintainers,
      this.repoNames,
      this.privacy,
      this.permission,
      this.parentTeamId})
      : super._();

  @override
  InlineObject41 rebuild(void Function(InlineObject41Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject41Builder toBuilder() =>
      new InlineObject41Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject41 &&
        name == other.name &&
        description == other.description &&
        maintainers == other.maintainers &&
        repoNames == other.repoNames &&
        privacy == other.privacy &&
        permission == other.permission &&
        parentTeamId == other.parentTeamId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), description.hashCode),
                        maintainers.hashCode),
                    repoNames.hashCode),
                privacy.hashCode),
            permission.hashCode),
        parentTeamId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject41')
          ..add('name', name)
          ..add('description', description)
          ..add('maintainers', maintainers)
          ..add('repoNames', repoNames)
          ..add('privacy', privacy)
          ..add('permission', permission)
          ..add('parentTeamId', parentTeamId))
        .toString();
  }
}

class InlineObject41Builder
    implements Builder<InlineObject41, InlineObject41Builder> {
  _$InlineObject41 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<String> _maintainers;
  ListBuilder<String> get maintainers =>
      _$this._maintainers ??= new ListBuilder<String>();
  set maintainers(ListBuilder<String> maintainers) =>
      _$this._maintainers = maintainers;

  ListBuilder<String> _repoNames;
  ListBuilder<String> get repoNames =>
      _$this._repoNames ??= new ListBuilder<String>();
  set repoNames(ListBuilder<String> repoNames) => _$this._repoNames = repoNames;

  InlineObject41PrivacyEnum _privacy;
  InlineObject41PrivacyEnum get privacy => _$this._privacy;
  set privacy(InlineObject41PrivacyEnum privacy) => _$this._privacy = privacy;

  InlineObject41PermissionEnum _permission;
  InlineObject41PermissionEnum get permission => _$this._permission;
  set permission(InlineObject41PermissionEnum permission) =>
      _$this._permission = permission;

  int _parentTeamId;
  int get parentTeamId => _$this._parentTeamId;
  set parentTeamId(int parentTeamId) => _$this._parentTeamId = parentTeamId;

  InlineObject41Builder() {
    InlineObject41._initializeBuilder(this);
  }

  InlineObject41Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _maintainers = _$v.maintainers?.toBuilder();
      _repoNames = _$v.repoNames?.toBuilder();
      _privacy = _$v.privacy;
      _permission = _$v.permission;
      _parentTeamId = _$v.parentTeamId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject41 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject41;
  }

  @override
  void update(void Function(InlineObject41Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject41 build() {
    _$InlineObject41 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject41._(
              name: name,
              description: description,
              maintainers: _maintainers?.build(),
              repoNames: _repoNames?.build(),
              privacy: privacy,
              permission: permission,
              parentTeamId: parentTeamId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'maintainers';
        _maintainers?.build();
        _$failedField = 'repoNames';
        _repoNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject41', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

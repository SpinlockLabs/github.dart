// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'organization_actions_secret.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrganizationActionsSecretVisibilityEnum
    _$organizationActionsSecretVisibilityEnum_all =
    const OrganizationActionsSecretVisibilityEnum._('all');
const OrganizationActionsSecretVisibilityEnum
    _$organizationActionsSecretVisibilityEnum_private =
    const OrganizationActionsSecretVisibilityEnum._('private');
const OrganizationActionsSecretVisibilityEnum
    _$organizationActionsSecretVisibilityEnum_selected =
    const OrganizationActionsSecretVisibilityEnum._('selected');

OrganizationActionsSecretVisibilityEnum
    _$organizationActionsSecretVisibilityEnumValueOf(String name) {
  switch (name) {
    case 'all':
      return _$organizationActionsSecretVisibilityEnum_all;
    case 'private':
      return _$organizationActionsSecretVisibilityEnum_private;
    case 'selected':
      return _$organizationActionsSecretVisibilityEnum_selected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OrganizationActionsSecretVisibilityEnum>
    _$organizationActionsSecretVisibilityEnumValues =
    new BuiltSet<OrganizationActionsSecretVisibilityEnum>(const <
        OrganizationActionsSecretVisibilityEnum>[
  _$organizationActionsSecretVisibilityEnum_all,
  _$organizationActionsSecretVisibilityEnum_private,
  _$organizationActionsSecretVisibilityEnum_selected,
]);

Serializer<OrganizationActionsSecret> _$organizationActionsSecretSerializer =
    new _$OrganizationActionsSecretSerializer();
Serializer<OrganizationActionsSecretVisibilityEnum>
    _$organizationActionsSecretVisibilityEnumSerializer =
    new _$OrganizationActionsSecretVisibilityEnumSerializer();

class _$OrganizationActionsSecretSerializer
    implements StructuredSerializer<OrganizationActionsSecret> {
  @override
  final Iterable<Type> types = const [
    OrganizationActionsSecret,
    _$OrganizationActionsSecret
  ];
  @override
  final String wireName = 'OrganizationActionsSecret';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrganizationActionsSecret object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType:
                const FullType(OrganizationActionsSecretVisibilityEnum)));
    }
    if (object.selectedRepositoriesUrl != null) {
      result
        ..add('selected_repositories_url')
        ..add(serializers.serialize(object.selectedRepositoriesUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrganizationActionsSecret deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrganizationActionsSecretBuilder();

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
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType:
                      const FullType(OrganizationActionsSecretVisibilityEnum))
              as OrganizationActionsSecretVisibilityEnum;
          break;
        case 'selected_repositories_url':
          result.selectedRepositoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrganizationActionsSecretVisibilityEnumSerializer
    implements PrimitiveSerializer<OrganizationActionsSecretVisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'private': 'private',
    'selected': 'selected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'private': 'private',
    'selected': 'selected',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OrganizationActionsSecretVisibilityEnum
  ];
  @override
  final String wireName = 'OrganizationActionsSecretVisibilityEnum';

  @override
  Object serialize(Serializers serializers,
          OrganizationActionsSecretVisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrganizationActionsSecretVisibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrganizationActionsSecretVisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$OrganizationActionsSecret extends OrganizationActionsSecret {
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final OrganizationActionsSecretVisibilityEnum visibility;
  @override
  final String selectedRepositoriesUrl;

  factory _$OrganizationActionsSecret(
          [void Function(OrganizationActionsSecretBuilder) updates]) =>
      (new OrganizationActionsSecretBuilder()..update(updates)).build();

  _$OrganizationActionsSecret._(
      {this.name,
      this.createdAt,
      this.updatedAt,
      this.visibility,
      this.selectedRepositoriesUrl})
      : super._();

  @override
  OrganizationActionsSecret rebuild(
          void Function(OrganizationActionsSecretBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationActionsSecretBuilder toBuilder() =>
      new OrganizationActionsSecretBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationActionsSecret &&
        name == other.name &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        visibility == other.visibility &&
        selectedRepositoriesUrl == other.selectedRepositoriesUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), createdAt.hashCode),
                updatedAt.hashCode),
            visibility.hashCode),
        selectedRepositoriesUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationActionsSecret')
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('visibility', visibility)
          ..add('selectedRepositoriesUrl', selectedRepositoriesUrl))
        .toString();
  }
}

class OrganizationActionsSecretBuilder
    implements
        Builder<OrganizationActionsSecret, OrganizationActionsSecretBuilder> {
  _$OrganizationActionsSecret _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  OrganizationActionsSecretVisibilityEnum _visibility;
  OrganizationActionsSecretVisibilityEnum get visibility => _$this._visibility;
  set visibility(OrganizationActionsSecretVisibilityEnum visibility) =>
      _$this._visibility = visibility;

  String _selectedRepositoriesUrl;
  String get selectedRepositoriesUrl => _$this._selectedRepositoriesUrl;
  set selectedRepositoriesUrl(String selectedRepositoriesUrl) =>
      _$this._selectedRepositoriesUrl = selectedRepositoriesUrl;

  OrganizationActionsSecretBuilder() {
    OrganizationActionsSecret._initializeBuilder(this);
  }

  OrganizationActionsSecretBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _visibility = _$v.visibility;
      _selectedRepositoriesUrl = _$v.selectedRepositoriesUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationActionsSecret other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrganizationActionsSecret;
  }

  @override
  void update(void Function(OrganizationActionsSecretBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationActionsSecret build() {
    final _$result = _$v ??
        new _$OrganizationActionsSecret._(
            name: name,
            createdAt: createdAt,
            updatedAt: updatedAt,
            visibility: visibility,
            selectedRepositoriesUrl: selectedRepositoriesUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

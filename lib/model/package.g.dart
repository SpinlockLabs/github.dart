// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'package.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PackagePackageTypeEnum _$packagePackageTypeEnum_npm =
    const PackagePackageTypeEnum._('npm');
const PackagePackageTypeEnum _$packagePackageTypeEnum_maven =
    const PackagePackageTypeEnum._('maven');
const PackagePackageTypeEnum _$packagePackageTypeEnum_rubygems =
    const PackagePackageTypeEnum._('rubygems');
const PackagePackageTypeEnum _$packagePackageTypeEnum_docker =
    const PackagePackageTypeEnum._('docker');
const PackagePackageTypeEnum _$packagePackageTypeEnum_nuget =
    const PackagePackageTypeEnum._('nuget');
const PackagePackageTypeEnum _$packagePackageTypeEnum_container =
    const PackagePackageTypeEnum._('container');

PackagePackageTypeEnum _$packagePackageTypeEnumValueOf(String name) {
  switch (name) {
    case 'npm':
      return _$packagePackageTypeEnum_npm;
    case 'maven':
      return _$packagePackageTypeEnum_maven;
    case 'rubygems':
      return _$packagePackageTypeEnum_rubygems;
    case 'docker':
      return _$packagePackageTypeEnum_docker;
    case 'nuget':
      return _$packagePackageTypeEnum_nuget;
    case 'container':
      return _$packagePackageTypeEnum_container;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PackagePackageTypeEnum> _$packagePackageTypeEnumValues =
    new BuiltSet<PackagePackageTypeEnum>(const <PackagePackageTypeEnum>[
  _$packagePackageTypeEnum_npm,
  _$packagePackageTypeEnum_maven,
  _$packagePackageTypeEnum_rubygems,
  _$packagePackageTypeEnum_docker,
  _$packagePackageTypeEnum_nuget,
  _$packagePackageTypeEnum_container,
]);

const PackageVisibilityEnum _$packageVisibilityEnum_private =
    const PackageVisibilityEnum._('private');
const PackageVisibilityEnum _$packageVisibilityEnum_public =
    const PackageVisibilityEnum._('public');

PackageVisibilityEnum _$packageVisibilityEnumValueOf(String name) {
  switch (name) {
    case 'private':
      return _$packageVisibilityEnum_private;
    case 'public':
      return _$packageVisibilityEnum_public;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PackageVisibilityEnum> _$packageVisibilityEnumValues =
    new BuiltSet<PackageVisibilityEnum>(const <PackageVisibilityEnum>[
  _$packageVisibilityEnum_private,
  _$packageVisibilityEnum_public,
]);

Serializer<Package> _$packageSerializer = new _$PackageSerializer();
Serializer<PackagePackageTypeEnum> _$packagePackageTypeEnumSerializer =
    new _$PackagePackageTypeEnumSerializer();
Serializer<PackageVisibilityEnum> _$packageVisibilityEnumSerializer =
    new _$PackageVisibilityEnumSerializer();

class _$PackageSerializer implements StructuredSerializer<Package> {
  @override
  final Iterable<Type> types = const [Package, _$Package];
  @override
  final String wireName = 'Package';

  @override
  Iterable<Object> serialize(Serializers serializers, Package object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.packageType != null) {
      result
        ..add('package_type')
        ..add(serializers.serialize(object.packageType,
            specifiedType: const FullType(PackagePackageTypeEnum)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.versionCount != null) {
      result
        ..add('version_count')
        ..add(serializers.serialize(object.versionCount,
            specifiedType: const FullType(int)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(PackageVisibilityEnum)));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(MinimalRepository)));
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
    return result;
  }

  @override
  Package deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PackageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'package_type':
          result.packageType = serializers.deserialize(value,
                  specifiedType: const FullType(PackagePackageTypeEnum))
              as PackagePackageTypeEnum;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version_count':
          result.versionCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(PackageVisibilityEnum))
              as PackageVisibilityEnum;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MinimalRepository))
              as MinimalRepository);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$PackagePackageTypeEnumSerializer
    implements PrimitiveSerializer<PackagePackageTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'npm': 'npm',
    'maven': 'maven',
    'rubygems': 'rubygems',
    'docker': 'docker',
    'nuget': 'nuget',
    'container': 'container',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'npm': 'npm',
    'maven': 'maven',
    'rubygems': 'rubygems',
    'docker': 'docker',
    'nuget': 'nuget',
    'container': 'container',
  };

  @override
  final Iterable<Type> types = const <Type>[PackagePackageTypeEnum];
  @override
  final String wireName = 'PackagePackageTypeEnum';

  @override
  Object serialize(Serializers serializers, PackagePackageTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PackagePackageTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PackagePackageTypeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$PackageVisibilityEnumSerializer
    implements PrimitiveSerializer<PackageVisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'private': 'private',
    'public': 'public',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'private': 'private',
    'public': 'public',
  };

  @override
  final Iterable<Type> types = const <Type>[PackageVisibilityEnum];
  @override
  final String wireName = 'PackageVisibilityEnum';

  @override
  Object serialize(Serializers serializers, PackageVisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PackageVisibilityEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PackageVisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$Package extends Package {
  @override
  final int id;
  @override
  final String name;
  @override
  final PackagePackageTypeEnum packageType;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final int versionCount;
  @override
  final PackageVisibilityEnum visibility;
  @override
  final SimpleUser owner;
  @override
  final MinimalRepository repository;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Package([void Function(PackageBuilder) updates]) =>
      (new PackageBuilder()..update(updates)).build();

  _$Package._(
      {this.id,
      this.name,
      this.packageType,
      this.url,
      this.htmlUrl,
      this.versionCount,
      this.visibility,
      this.owner,
      this.repository,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  Package rebuild(void Function(PackageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackageBuilder toBuilder() => new PackageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Package &&
        id == other.id &&
        name == other.name &&
        packageType == other.packageType &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        versionCount == other.versionCount &&
        visibility == other.visibility &&
        owner == other.owner &&
        repository == other.repository &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                                        packageType.hashCode),
                                    url.hashCode),
                                htmlUrl.hashCode),
                            versionCount.hashCode),
                        visibility.hashCode),
                    owner.hashCode),
                repository.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Package')
          ..add('id', id)
          ..add('name', name)
          ..add('packageType', packageType)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('versionCount', versionCount)
          ..add('visibility', visibility)
          ..add('owner', owner)
          ..add('repository', repository)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PackageBuilder implements Builder<Package, PackageBuilder> {
  _$Package _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  PackagePackageTypeEnum _packageType;
  PackagePackageTypeEnum get packageType => _$this._packageType;
  set packageType(PackagePackageTypeEnum packageType) =>
      _$this._packageType = packageType;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  int _versionCount;
  int get versionCount => _$this._versionCount;
  set versionCount(int versionCount) => _$this._versionCount = versionCount;

  PackageVisibilityEnum _visibility;
  PackageVisibilityEnum get visibility => _$this._visibility;
  set visibility(PackageVisibilityEnum visibility) =>
      _$this._visibility = visibility;

  SimpleUserBuilder _owner;
  SimpleUserBuilder get owner => _$this._owner ??= new SimpleUserBuilder();
  set owner(SimpleUserBuilder owner) => _$this._owner = owner;

  MinimalRepositoryBuilder _repository;
  MinimalRepositoryBuilder get repository =>
      _$this._repository ??= new MinimalRepositoryBuilder();
  set repository(MinimalRepositoryBuilder repository) =>
      _$this._repository = repository;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  PackageBuilder() {
    Package._initializeBuilder(this);
  }

  PackageBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _packageType = _$v.packageType;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _versionCount = _$v.versionCount;
      _visibility = _$v.visibility;
      _owner = _$v.owner?.toBuilder();
      _repository = _$v.repository?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Package other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Package;
  }

  @override
  void update(void Function(PackageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Package build() {
    _$Package _$result;
    try {
      _$result = _$v ??
          new _$Package._(
              id: id,
              name: name,
              packageType: packageType,
              url: url,
              htmlUrl: htmlUrl,
              versionCount: versionCount,
              visibility: visibility,
              owner: _owner?.build(),
              repository: _repository?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'repository';
        _repository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Package', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

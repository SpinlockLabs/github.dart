// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'package_version_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PackageVersionMetadataPackageTypeEnum
    _$packageVersionMetadataPackageTypeEnum_npm =
    const PackageVersionMetadataPackageTypeEnum._('npm');
const PackageVersionMetadataPackageTypeEnum
    _$packageVersionMetadataPackageTypeEnum_maven =
    const PackageVersionMetadataPackageTypeEnum._('maven');
const PackageVersionMetadataPackageTypeEnum
    _$packageVersionMetadataPackageTypeEnum_rubygems =
    const PackageVersionMetadataPackageTypeEnum._('rubygems');
const PackageVersionMetadataPackageTypeEnum
    _$packageVersionMetadataPackageTypeEnum_docker =
    const PackageVersionMetadataPackageTypeEnum._('docker');
const PackageVersionMetadataPackageTypeEnum
    _$packageVersionMetadataPackageTypeEnum_nuget =
    const PackageVersionMetadataPackageTypeEnum._('nuget');
const PackageVersionMetadataPackageTypeEnum
    _$packageVersionMetadataPackageTypeEnum_container =
    const PackageVersionMetadataPackageTypeEnum._('container');

PackageVersionMetadataPackageTypeEnum
    _$packageVersionMetadataPackageTypeEnumValueOf(String name) {
  switch (name) {
    case 'npm':
      return _$packageVersionMetadataPackageTypeEnum_npm;
    case 'maven':
      return _$packageVersionMetadataPackageTypeEnum_maven;
    case 'rubygems':
      return _$packageVersionMetadataPackageTypeEnum_rubygems;
    case 'docker':
      return _$packageVersionMetadataPackageTypeEnum_docker;
    case 'nuget':
      return _$packageVersionMetadataPackageTypeEnum_nuget;
    case 'container':
      return _$packageVersionMetadataPackageTypeEnum_container;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PackageVersionMetadataPackageTypeEnum>
    _$packageVersionMetadataPackageTypeEnumValues =
    new BuiltSet<PackageVersionMetadataPackageTypeEnum>(const <
        PackageVersionMetadataPackageTypeEnum>[
  _$packageVersionMetadataPackageTypeEnum_npm,
  _$packageVersionMetadataPackageTypeEnum_maven,
  _$packageVersionMetadataPackageTypeEnum_rubygems,
  _$packageVersionMetadataPackageTypeEnum_docker,
  _$packageVersionMetadataPackageTypeEnum_nuget,
  _$packageVersionMetadataPackageTypeEnum_container,
]);

Serializer<PackageVersionMetadata> _$packageVersionMetadataSerializer =
    new _$PackageVersionMetadataSerializer();
Serializer<PackageVersionMetadataPackageTypeEnum>
    _$packageVersionMetadataPackageTypeEnumSerializer =
    new _$PackageVersionMetadataPackageTypeEnumSerializer();

class _$PackageVersionMetadataSerializer
    implements StructuredSerializer<PackageVersionMetadata> {
  @override
  final Iterable<Type> types = const [
    PackageVersionMetadata,
    _$PackageVersionMetadata
  ];
  @override
  final String wireName = 'PackageVersionMetadata';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PackageVersionMetadata object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.packageType != null) {
      result
        ..add('package_type')
        ..add(serializers.serialize(object.packageType,
            specifiedType:
                const FullType(PackageVersionMetadataPackageTypeEnum)));
    }
    if (object.container != null) {
      result
        ..add('container')
        ..add(serializers.serialize(object.container,
            specifiedType: const FullType(ContainerMetadata)));
    }
    if (object.docker != null) {
      result
        ..add('docker')
        ..add(serializers.serialize(object.docker,
            specifiedType: const FullType(DockerMetadata)));
    }
    return result;
  }

  @override
  PackageVersionMetadata deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PackageVersionMetadataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'package_type':
          result.packageType = serializers.deserialize(value,
                  specifiedType:
                      const FullType(PackageVersionMetadataPackageTypeEnum))
              as PackageVersionMetadataPackageTypeEnum;
          break;
        case 'container':
          result.container.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ContainerMetadata))
              as ContainerMetadata);
          break;
        case 'docker':
          result.docker.replace(serializers.deserialize(value,
              specifiedType: const FullType(DockerMetadata)) as DockerMetadata);
          break;
      }
    }

    return result.build();
  }
}

class _$PackageVersionMetadataPackageTypeEnumSerializer
    implements PrimitiveSerializer<PackageVersionMetadataPackageTypeEnum> {
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
  final Iterable<Type> types = const <Type>[
    PackageVersionMetadataPackageTypeEnum
  ];
  @override
  final String wireName = 'PackageVersionMetadataPackageTypeEnum';

  @override
  Object serialize(
          Serializers serializers, PackageVersionMetadataPackageTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PackageVersionMetadataPackageTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PackageVersionMetadataPackageTypeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$PackageVersionMetadata extends PackageVersionMetadata {
  @override
  final PackageVersionMetadataPackageTypeEnum packageType;
  @override
  final ContainerMetadata container;
  @override
  final DockerMetadata docker;

  factory _$PackageVersionMetadata(
          [void Function(PackageVersionMetadataBuilder) updates]) =>
      (new PackageVersionMetadataBuilder()..update(updates)).build();

  _$PackageVersionMetadata._({this.packageType, this.container, this.docker})
      : super._();

  @override
  PackageVersionMetadata rebuild(
          void Function(PackageVersionMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackageVersionMetadataBuilder toBuilder() =>
      new PackageVersionMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackageVersionMetadata &&
        packageType == other.packageType &&
        container == other.container &&
        docker == other.docker;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, packageType.hashCode), container.hashCode),
        docker.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PackageVersionMetadata')
          ..add('packageType', packageType)
          ..add('container', container)
          ..add('docker', docker))
        .toString();
  }
}

class PackageVersionMetadataBuilder
    implements Builder<PackageVersionMetadata, PackageVersionMetadataBuilder> {
  _$PackageVersionMetadata _$v;

  PackageVersionMetadataPackageTypeEnum _packageType;
  PackageVersionMetadataPackageTypeEnum get packageType => _$this._packageType;
  set packageType(PackageVersionMetadataPackageTypeEnum packageType) =>
      _$this._packageType = packageType;

  ContainerMetadataBuilder _container;
  ContainerMetadataBuilder get container =>
      _$this._container ??= new ContainerMetadataBuilder();
  set container(ContainerMetadataBuilder container) =>
      _$this._container = container;

  DockerMetadataBuilder _docker;
  DockerMetadataBuilder get docker =>
      _$this._docker ??= new DockerMetadataBuilder();
  set docker(DockerMetadataBuilder docker) => _$this._docker = docker;

  PackageVersionMetadataBuilder() {
    PackageVersionMetadata._initializeBuilder(this);
  }

  PackageVersionMetadataBuilder get _$this {
    if (_$v != null) {
      _packageType = _$v.packageType;
      _container = _$v.container?.toBuilder();
      _docker = _$v.docker?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackageVersionMetadata other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PackageVersionMetadata;
  }

  @override
  void update(void Function(PackageVersionMetadataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PackageVersionMetadata build() {
    _$PackageVersionMetadata _$result;
    try {
      _$result = _$v ??
          new _$PackageVersionMetadata._(
              packageType: packageType,
              container: _container?.build(),
              docker: _docker?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'container';
        _container?.build();
        _$failedField = 'docker';
        _docker?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PackageVersionMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

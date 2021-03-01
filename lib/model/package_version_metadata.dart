//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/docker_metadata.dart';
import 'package:github/model/container_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'package_version_metadata.g.dart';

abstract class PackageVersionMetadata implements Built<PackageVersionMetadata, PackageVersionMetadataBuilder> {

    @nullable
    @BuiltValueField(wireName: r'package_type')
    PackageVersionMetadataPackageTypeEnum get packageType;
    // enum packageTypeEnum {  npm,  maven,  rubygems,  docker,  nuget,  container,  };

    @nullable
    @BuiltValueField(wireName: r'container')
    ContainerMetadata get container;

    @nullable
    @BuiltValueField(wireName: r'docker')
    DockerMetadata get docker;

    // Boilerplate code needed to wire-up generated code
    PackageVersionMetadata._();

    static void _initializeBuilder(PackageVersionMetadataBuilder b) => b;

    factory PackageVersionMetadata([void updates(PackageVersionMetadataBuilder b)]) = _$PackageVersionMetadata;
    static Serializer<PackageVersionMetadata> get serializer => _$packageVersionMetadataSerializer;
}

class PackageVersionMetadataPackageTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'npm')
  static const PackageVersionMetadataPackageTypeEnum npm = _$packageVersionMetadataPackageTypeEnum_npm;
  @BuiltValueEnumConst(wireName: r'maven')
  static const PackageVersionMetadataPackageTypeEnum maven = _$packageVersionMetadataPackageTypeEnum_maven;
  @BuiltValueEnumConst(wireName: r'rubygems')
  static const PackageVersionMetadataPackageTypeEnum rubygems = _$packageVersionMetadataPackageTypeEnum_rubygems;
  @BuiltValueEnumConst(wireName: r'docker')
  static const PackageVersionMetadataPackageTypeEnum docker = _$packageVersionMetadataPackageTypeEnum_docker;
  @BuiltValueEnumConst(wireName: r'nuget')
  static const PackageVersionMetadataPackageTypeEnum nuget = _$packageVersionMetadataPackageTypeEnum_nuget;
  @BuiltValueEnumConst(wireName: r'container')
  static const PackageVersionMetadataPackageTypeEnum container = _$packageVersionMetadataPackageTypeEnum_container;

  static Serializer<PackageVersionMetadataPackageTypeEnum> get serializer => _$packageVersionMetadataPackageTypeEnumSerializer;

  const PackageVersionMetadataPackageTypeEnum._(String name): super(name);

  static BuiltSet<PackageVersionMetadataPackageTypeEnum> get values => _$packageVersionMetadataPackageTypeEnumValues;
  static PackageVersionMetadataPackageTypeEnum valueOf(String name) => _$packageVersionMetadataPackageTypeEnumValueOf(name);
}


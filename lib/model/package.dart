//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/minimal_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'package.g.dart';

abstract class Package implements Built<Package, PackageBuilder> {

    /// Unique identifier of the package.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The name of the package.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'package_type')
    PackagePackageTypeEnum get packageType;
    // enum packageTypeEnum {  npm,  maven,  rubygems,  docker,  nuget,  container,  };

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    /// The number of versions of the package.
    @nullable
    @BuiltValueField(wireName: r'version_count')
    int get versionCount;

    @nullable
    @BuiltValueField(wireName: r'visibility')
    PackageVisibilityEnum get visibility;
    // enum visibilityEnum {  private,  public,  };

    @nullable
    @BuiltValueField(wireName: r'owner')
    SimpleUser get owner;

    @nullable
    @BuiltValueField(wireName: r'repository')
    MinimalRepository get repository;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    // Boilerplate code needed to wire-up generated code
    Package._();

    static void _initializeBuilder(PackageBuilder b) => b;

    factory Package([void updates(PackageBuilder b)]) = _$Package;
    static Serializer<Package> get serializer => _$packageSerializer;
}

class PackagePackageTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'npm')
  static const PackagePackageTypeEnum npm = _$packagePackageTypeEnum_npm;
  @BuiltValueEnumConst(wireName: r'maven')
  static const PackagePackageTypeEnum maven = _$packagePackageTypeEnum_maven;
  @BuiltValueEnumConst(wireName: r'rubygems')
  static const PackagePackageTypeEnum rubygems = _$packagePackageTypeEnum_rubygems;
  @BuiltValueEnumConst(wireName: r'docker')
  static const PackagePackageTypeEnum docker = _$packagePackageTypeEnum_docker;
  @BuiltValueEnumConst(wireName: r'nuget')
  static const PackagePackageTypeEnum nuget = _$packagePackageTypeEnum_nuget;
  @BuiltValueEnumConst(wireName: r'container')
  static const PackagePackageTypeEnum container = _$packagePackageTypeEnum_container;

  static Serializer<PackagePackageTypeEnum> get serializer => _$packagePackageTypeEnumSerializer;

  const PackagePackageTypeEnum._(String name): super(name);

  static BuiltSet<PackagePackageTypeEnum> get values => _$packagePackageTypeEnumValues;
  static PackagePackageTypeEnum valueOf(String name) => _$packagePackageTypeEnumValueOf(name);
}

class PackageVisibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'private')
  static const PackageVisibilityEnum private = _$packageVisibilityEnum_private;
  @BuiltValueEnumConst(wireName: r'public')
  static const PackageVisibilityEnum public = _$packageVisibilityEnum_public;

  static Serializer<PackageVisibilityEnum> get serializer => _$packageVisibilityEnumSerializer;

  const PackageVisibilityEnum._(String name): super(name);

  static BuiltSet<PackageVisibilityEnum> get values => _$packageVisibilityEnumValues;
  static PackageVisibilityEnum valueOf(String name) => _$packageVisibilityEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_pages_source.g.dart';

abstract class ReposOwnerRepoPagesSource implements Built<ReposOwnerRepoPagesSource, ReposOwnerRepoPagesSourceBuilder> {

    /// The repository branch used to publish your site's source files.
    @nullable
    @BuiltValueField(wireName: r'branch')
    String get branch;

    /// The repository directory that includes the source files for the Pages site. Allowed paths are `/` or `/docs`. Default: `/`
    @nullable
    @BuiltValueField(wireName: r'path')
    ReposOwnerRepoPagesSourcePathEnum get path;
    // enum pathEnum {  /,  /docs,  };

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoPagesSource._();

    static void _initializeBuilder(ReposOwnerRepoPagesSourceBuilder b) => b
        ..path = const ReposOwnerRepoPagesSourcePathEnum._('/');

    factory ReposOwnerRepoPagesSource([void updates(ReposOwnerRepoPagesSourceBuilder b)]) = _$ReposOwnerRepoPagesSource;
    static Serializer<ReposOwnerRepoPagesSource> get serializer => _$reposOwnerRepoPagesSourceSerializer;
}

class ReposOwnerRepoPagesSourcePathEnum extends EnumClass {

  /// The repository directory that includes the source files for the Pages site. Allowed paths are `/` or `/docs`. Default: `/`
  @BuiltValueEnumConst(wireName: r'/')
  static const ReposOwnerRepoPagesSourcePathEnum slash = _$reposOwnerRepoPagesSourcePathEnum_slash;
  /// The repository directory that includes the source files for the Pages site. Allowed paths are `/` or `/docs`. Default: `/`
  @BuiltValueEnumConst(wireName: r'/docs')
  static const ReposOwnerRepoPagesSourcePathEnum docs = _$reposOwnerRepoPagesSourcePathEnum_docs;

  static Serializer<ReposOwnerRepoPagesSourcePathEnum> get serializer => _$reposOwnerRepoPagesSourcePathEnumSerializer;

  const ReposOwnerRepoPagesSourcePathEnum._(String name): super(name);

  static BuiltSet<ReposOwnerRepoPagesSourcePathEnum> get values => _$reposOwnerRepoPagesSourcePathEnumValues;
  static ReposOwnerRepoPagesSourcePathEnum valueOf(String name) => _$reposOwnerRepoPagesSourcePathEnumValueOf(name);
}


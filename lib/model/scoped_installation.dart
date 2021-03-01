//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/app_permissions.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scoped_installation.g.dart';

abstract class ScopedInstallation implements Built<ScopedInstallation, ScopedInstallationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'permissions')
    AppPermissions get permissions;

    /// Describe whether all repositories have been selected or there's a selection involved
    @nullable
    @BuiltValueField(wireName: r'repository_selection')
    ScopedInstallationRepositorySelectionEnum get repositorySelection;
    // enum repositorySelectionEnum {  all,  selected,  };

    @nullable
    @BuiltValueField(wireName: r'single_file_name')
    String get singleFileName;

    @nullable
    @BuiltValueField(wireName: r'has_multiple_single_files')
    bool get hasMultipleSingleFiles;

    @nullable
    @BuiltValueField(wireName: r'single_file_paths')
    BuiltList<String> get singleFilePaths;

    @nullable
    @BuiltValueField(wireName: r'repositories_url')
    String get repositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'account')
    SimpleUser get account;

    // Boilerplate code needed to wire-up generated code
    ScopedInstallation._();

    static void _initializeBuilder(ScopedInstallationBuilder b) => b;

    factory ScopedInstallation([void updates(ScopedInstallationBuilder b)]) = _$ScopedInstallation;
    static Serializer<ScopedInstallation> get serializer => _$scopedInstallationSerializer;
}

class ScopedInstallationRepositorySelectionEnum extends EnumClass {

  /// Describe whether all repositories have been selected or there's a selection involved
  @BuiltValueEnumConst(wireName: r'all')
  static const ScopedInstallationRepositorySelectionEnum all = _$scopedInstallationRepositorySelectionEnum_all;
  /// Describe whether all repositories have been selected or there's a selection involved
  @BuiltValueEnumConst(wireName: r'selected')
  static const ScopedInstallationRepositorySelectionEnum selected = _$scopedInstallationRepositorySelectionEnum_selected;

  static Serializer<ScopedInstallationRepositorySelectionEnum> get serializer => _$scopedInstallationRepositorySelectionEnumSerializer;

  const ScopedInstallationRepositorySelectionEnum._(String name): super(name);

  static BuiltSet<ScopedInstallationRepositorySelectionEnum> get values => _$scopedInstallationRepositorySelectionEnumValues;
  static ScopedInstallationRepositorySelectionEnum valueOf(String name) => _$scopedInstallationRepositorySelectionEnumValueOf(name);
}


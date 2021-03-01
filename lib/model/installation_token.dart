//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/installation_token_permissions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'installation_token.g.dart';

abstract class InstallationToken implements Built<InstallationToken, InstallationTokenBuilder> {

    @nullable
    @BuiltValueField(wireName: r'token')
    String get token;

    @nullable
    @BuiltValueField(wireName: r'expires_at')
    String get expiresAt;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    InstallationTokenPermissions get permissions;

    @nullable
    @BuiltValueField(wireName: r'repository_selection')
    InstallationTokenRepositorySelectionEnum get repositorySelection;
    // enum repositorySelectionEnum {  all,  selected,  };

    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<Repository> get repositories;

    @nullable
    @BuiltValueField(wireName: r'single_file')
    String get singleFile;

    @nullable
    @BuiltValueField(wireName: r'has_multiple_single_files')
    bool get hasMultipleSingleFiles;

    @nullable
    @BuiltValueField(wireName: r'single_file_paths')
    BuiltList<String> get singleFilePaths;

    // Boilerplate code needed to wire-up generated code
    InstallationToken._();

    static void _initializeBuilder(InstallationTokenBuilder b) => b;

    factory InstallationToken([void updates(InstallationTokenBuilder b)]) = _$InstallationToken;
    static Serializer<InstallationToken> get serializer => _$installationTokenSerializer;
}

class InstallationTokenRepositorySelectionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all')
  static const InstallationTokenRepositorySelectionEnum all = _$installationTokenRepositorySelectionEnum_all;
  @BuiltValueEnumConst(wireName: r'selected')
  static const InstallationTokenRepositorySelectionEnum selected = _$installationTokenRepositorySelectionEnum_selected;

  static Serializer<InstallationTokenRepositorySelectionEnum> get serializer => _$installationTokenRepositorySelectionEnumSerializer;

  const InstallationTokenRepositorySelectionEnum._(String name): super(name);

  static BuiltSet<InstallationTokenRepositorySelectionEnum> get values => _$installationTokenRepositorySelectionEnumValues;
  static InstallationTokenRepositorySelectionEnum valueOf(String name) => _$installationTokenRepositorySelectionEnumValueOf(name);
}


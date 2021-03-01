//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/any_ofsimple_userenterprise.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/installation_permissions.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'installation.g.dart';

abstract class Installation implements Built<Installation, InstallationBuilder> {

    /// The ID of the installation.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'account')
    AnyOfsimpleUserenterprise get account;

    /// Describe whether all repositories have been selected or there's a selection involved
    @nullable
    @BuiltValueField(wireName: r'repository_selection')
    InstallationRepositorySelectionEnum get repositorySelection;
    // enum repositorySelectionEnum {  all,  selected,  };

    @nullable
    @BuiltValueField(wireName: r'access_tokens_url')
    String get accessTokensUrl;

    @nullable
    @BuiltValueField(wireName: r'repositories_url')
    String get repositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'app_id')
    int get appId;

    /// The ID of the user or organization this token is being scoped to.
    @nullable
    @BuiltValueField(wireName: r'target_id')
    int get targetId;

    @nullable
    @BuiltValueField(wireName: r'target_type')
    String get targetType;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    InstallationPermissions get permissions;

    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<String> get events;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

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
    @BuiltValueField(wireName: r'app_slug')
    String get appSlug;

    @nullable
    @BuiltValueField(wireName: r'suspended_by')
    SimpleUser get suspendedBy;

    @nullable
    @BuiltValueField(wireName: r'suspended_at')
    DateTime get suspendedAt;

    @nullable
    @BuiltValueField(wireName: r'contact_email')
    String get contactEmail;

    // Boilerplate code needed to wire-up generated code
    Installation._();

    static void _initializeBuilder(InstallationBuilder b) => b;

    factory Installation([void updates(InstallationBuilder b)]) = _$Installation;
    static Serializer<Installation> get serializer => _$installationSerializer;
}

class InstallationRepositorySelectionEnum extends EnumClass {

  /// Describe whether all repositories have been selected or there's a selection involved
  @BuiltValueEnumConst(wireName: r'all')
  static const InstallationRepositorySelectionEnum all = _$installationRepositorySelectionEnum_all;
  /// Describe whether all repositories have been selected or there's a selection involved
  @BuiltValueEnumConst(wireName: r'selected')
  static const InstallationRepositorySelectionEnum selected = _$installationRepositorySelectionEnum_selected;

  static Serializer<InstallationRepositorySelectionEnum> get serializer => _$installationRepositorySelectionEnumSerializer;

  const InstallationRepositorySelectionEnum._(String name): super(name);

  static BuiltSet<InstallationRepositorySelectionEnum> get values => _$installationRepositorySelectionEnumValues;
  static InstallationRepositorySelectionEnum valueOf(String name) => _$installationRepositorySelectionEnumValueOf(name);
}


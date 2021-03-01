//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_actions_secret.g.dart';

abstract class OrganizationActionsSecret implements Built<OrganizationActionsSecret, OrganizationActionsSecretBuilder> {

    /// The name of the secret.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    /// Visibility of a secret
    @nullable
    @BuiltValueField(wireName: r'visibility')
    OrganizationActionsSecretVisibilityEnum get visibility;
    // enum visibilityEnum {  all,  private,  selected,  };

    @nullable
    @BuiltValueField(wireName: r'selected_repositories_url')
    String get selectedRepositoriesUrl;

    // Boilerplate code needed to wire-up generated code
    OrganizationActionsSecret._();

    static void _initializeBuilder(OrganizationActionsSecretBuilder b) => b;

    factory OrganizationActionsSecret([void updates(OrganizationActionsSecretBuilder b)]) = _$OrganizationActionsSecret;
    static Serializer<OrganizationActionsSecret> get serializer => _$organizationActionsSecretSerializer;
}

class OrganizationActionsSecretVisibilityEnum extends EnumClass {

  /// Visibility of a secret
  @BuiltValueEnumConst(wireName: r'all')
  static const OrganizationActionsSecretVisibilityEnum all = _$organizationActionsSecretVisibilityEnum_all;
  /// Visibility of a secret
  @BuiltValueEnumConst(wireName: r'private')
  static const OrganizationActionsSecretVisibilityEnum private = _$organizationActionsSecretVisibilityEnum_private;
  /// Visibility of a secret
  @BuiltValueEnumConst(wireName: r'selected')
  static const OrganizationActionsSecretVisibilityEnum selected = _$organizationActionsSecretVisibilityEnum_selected;

  static Serializer<OrganizationActionsSecretVisibilityEnum> get serializer => _$organizationActionsSecretVisibilityEnumSerializer;

  const OrganizationActionsSecretVisibilityEnum._(String name): super(name);

  static BuiltSet<OrganizationActionsSecretVisibilityEnum> get values => _$organizationActionsSecretVisibilityEnumValues;
  static OrganizationActionsSecretVisibilityEnum valueOf(String name) => _$organizationActionsSecretVisibilityEnumValueOf(name);
}


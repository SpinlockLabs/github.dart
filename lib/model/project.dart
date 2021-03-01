//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project.g.dart';

abstract class Project implements Built<Project, ProjectBuilder> {

    @nullable
    @BuiltValueField(wireName: r'owner_url')
    String get ownerUrl;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'columns_url')
    String get columnsUrl;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// Name of the project
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Body of the project
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    /// State of the project; either 'open' or 'closed'
    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'creator')
    SimpleUser get creator;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    /// The baseline permission that all organization members have on this project. Only present if owner is an organization.
    @nullable
    @BuiltValueField(wireName: r'organization_permission')
    ProjectOrganizationPermissionEnum get organizationPermission;
    // enum organizationPermissionEnum {  read,  write,  admin,  none,  };

    /// Whether or not this project can be seen by everyone. Only present if owner is an organization.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    // Boilerplate code needed to wire-up generated code
    Project._();

    static void _initializeBuilder(ProjectBuilder b) => b;

    factory Project([void updates(ProjectBuilder b)]) = _$Project;
    static Serializer<Project> get serializer => _$projectSerializer;
}

class ProjectOrganizationPermissionEnum extends EnumClass {

  /// The baseline permission that all organization members have on this project. Only present if owner is an organization.
  @BuiltValueEnumConst(wireName: r'read')
  static const ProjectOrganizationPermissionEnum read = _$projectOrganizationPermissionEnum_read;
  /// The baseline permission that all organization members have on this project. Only present if owner is an organization.
  @BuiltValueEnumConst(wireName: r'write')
  static const ProjectOrganizationPermissionEnum write = _$projectOrganizationPermissionEnum_write;
  /// The baseline permission that all organization members have on this project. Only present if owner is an organization.
  @BuiltValueEnumConst(wireName: r'admin')
  static const ProjectOrganizationPermissionEnum admin = _$projectOrganizationPermissionEnum_admin;
  /// The baseline permission that all organization members have on this project. Only present if owner is an organization.
  @BuiltValueEnumConst(wireName: r'none')
  static const ProjectOrganizationPermissionEnum none = _$projectOrganizationPermissionEnum_none;

  static Serializer<ProjectOrganizationPermissionEnum> get serializer => _$projectOrganizationPermissionEnumSerializer;

  const ProjectOrganizationPermissionEnum._(String name): super(name);

  static BuiltSet<ProjectOrganizationPermissionEnum> get values => _$projectOrganizationPermissionEnumValues;
  static ProjectOrganizationPermissionEnum valueOf(String name) => _$projectOrganizationPermissionEnumValueOf(name);
}


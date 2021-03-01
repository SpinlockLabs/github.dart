//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object57.g.dart';

abstract class InlineObject57 implements Built<InlineObject57, InlineObject57Builder> {

    /// Name of the project
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Body of the project
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// State of the project; either 'open' or 'closed'
    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    /// The baseline permission that all organization members have on this project
    @nullable
    @BuiltValueField(wireName: r'organization_permission')
    InlineObject57OrganizationPermissionEnum get organizationPermission;
    // enum organizationPermissionEnum {  read,  write,  admin,  none,  };

    /// Whether or not this project can be seen by everyone.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    // Boilerplate code needed to wire-up generated code
    InlineObject57._();

    static void _initializeBuilder(InlineObject57Builder b) => b;

    factory InlineObject57([void updates(InlineObject57Builder b)]) = _$InlineObject57;
    static Serializer<InlineObject57> get serializer => _$inlineObject57Serializer;
}

class InlineObject57OrganizationPermissionEnum extends EnumClass {

  /// The baseline permission that all organization members have on this project
  @BuiltValueEnumConst(wireName: r'read')
  static const InlineObject57OrganizationPermissionEnum read = _$inlineObject57OrganizationPermissionEnum_read;
  /// The baseline permission that all organization members have on this project
  @BuiltValueEnumConst(wireName: r'write')
  static const InlineObject57OrganizationPermissionEnum write = _$inlineObject57OrganizationPermissionEnum_write;
  /// The baseline permission that all organization members have on this project
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject57OrganizationPermissionEnum admin = _$inlineObject57OrganizationPermissionEnum_admin;
  /// The baseline permission that all organization members have on this project
  @BuiltValueEnumConst(wireName: r'none')
  static const InlineObject57OrganizationPermissionEnum none = _$inlineObject57OrganizationPermissionEnum_none;

  static Serializer<InlineObject57OrganizationPermissionEnum> get serializer => _$inlineObject57OrganizationPermissionEnumSerializer;

  const InlineObject57OrganizationPermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject57OrganizationPermissionEnum> get values => _$inlineObject57OrganizationPermissionEnumValues;
  static InlineObject57OrganizationPermissionEnum valueOf(String name) => _$inlineObject57OrganizationPermissionEnumValueOf(name);
}


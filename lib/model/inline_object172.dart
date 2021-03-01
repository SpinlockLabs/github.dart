//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object172.g.dart';

abstract class InlineObject172 implements Built<InlineObject172, InlineObject172Builder> {

    /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
    @nullable
    @BuiltValueField(wireName: r'permission')
    InlineObject172PermissionEnum get permission;
    // enum permissionEnum {  pull,  push,  admin,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject172._();

    static void _initializeBuilder(InlineObject172Builder b) => b;

    factory InlineObject172([void updates(InlineObject172Builder b)]) = _$InlineObject172;
    static Serializer<InlineObject172> get serializer => _$inlineObject172Serializer;
}

class InlineObject172PermissionEnum extends EnumClass {

  /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
  @BuiltValueEnumConst(wireName: r'pull')
  static const InlineObject172PermissionEnum pull = _$inlineObject172PermissionEnum_pull;
  /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
  @BuiltValueEnumConst(wireName: r'push')
  static const InlineObject172PermissionEnum push = _$inlineObject172PermissionEnum_push;
  /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject172PermissionEnum admin = _$inlineObject172PermissionEnum_admin;

  static Serializer<InlineObject172PermissionEnum> get serializer => _$inlineObject172PermissionEnumSerializer;

  const InlineObject172PermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject172PermissionEnum> get values => _$inlineObject172PermissionEnumValues;
  static InlineObject172PermissionEnum valueOf(String name) => _$inlineObject172PermissionEnumValueOf(name);
}


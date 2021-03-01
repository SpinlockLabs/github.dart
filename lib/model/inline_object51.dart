//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object51.g.dart';

abstract class InlineObject51 implements Built<InlineObject51, InlineObject51Builder> {

    /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.   \\* `maintain` - team members can manage the repository without access to sensitive or destructive actions. Recommended for project managers. Only applies to repositories owned by organizations.   \\* `triage` - team members can proactively manage issues and pull requests without write access. Recommended for contributors who triage a repository. Only applies to repositories owned by organizations.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
    @nullable
    @BuiltValueField(wireName: r'permission')
    InlineObject51PermissionEnum get permission;
    // enum permissionEnum {  pull,  push,  admin,  maintain,  triage,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject51._();

    static void _initializeBuilder(InlineObject51Builder b) => b;

    factory InlineObject51([void updates(InlineObject51Builder b)]) = _$InlineObject51;
    static Serializer<InlineObject51> get serializer => _$inlineObject51Serializer;
}

class InlineObject51PermissionEnum extends EnumClass {

  /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.   \\* `maintain` - team members can manage the repository without access to sensitive or destructive actions. Recommended for project managers. Only applies to repositories owned by organizations.   \\* `triage` - team members can proactively manage issues and pull requests without write access. Recommended for contributors who triage a repository. Only applies to repositories owned by organizations.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
  @BuiltValueEnumConst(wireName: r'pull')
  static const InlineObject51PermissionEnum pull = _$inlineObject51PermissionEnum_pull;
  /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.   \\* `maintain` - team members can manage the repository without access to sensitive or destructive actions. Recommended for project managers. Only applies to repositories owned by organizations.   \\* `triage` - team members can proactively manage issues and pull requests without write access. Recommended for contributors who triage a repository. Only applies to repositories owned by organizations.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
  @BuiltValueEnumConst(wireName: r'push')
  static const InlineObject51PermissionEnum push = _$inlineObject51PermissionEnum_push;
  /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.   \\* `maintain` - team members can manage the repository without access to sensitive or destructive actions. Recommended for project managers. Only applies to repositories owned by organizations.   \\* `triage` - team members can proactively manage issues and pull requests without write access. Recommended for contributors who triage a repository. Only applies to repositories owned by organizations.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject51PermissionEnum admin = _$inlineObject51PermissionEnum_admin;
  /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.   \\* `maintain` - team members can manage the repository without access to sensitive or destructive actions. Recommended for project managers. Only applies to repositories owned by organizations.   \\* `triage` - team members can proactively manage issues and pull requests without write access. Recommended for contributors who triage a repository. Only applies to repositories owned by organizations.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
  @BuiltValueEnumConst(wireName: r'maintain')
  static const InlineObject51PermissionEnum maintain = _$inlineObject51PermissionEnum_maintain;
  /// The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.   \\* `maintain` - team members can manage the repository without access to sensitive or destructive actions. Recommended for project managers. Only applies to repositories owned by organizations.   \\* `triage` - team members can proactively manage issues and pull requests without write access. Recommended for contributors who triage a repository. Only applies to repositories owned by organizations.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
  @BuiltValueEnumConst(wireName: r'triage')
  static const InlineObject51PermissionEnum triage = _$inlineObject51PermissionEnum_triage;

  static Serializer<InlineObject51PermissionEnum> get serializer => _$inlineObject51PermissionEnumSerializer;

  const InlineObject51PermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject51PermissionEnum> get values => _$inlineObject51PermissionEnumValues;
  static InlineObject51PermissionEnum valueOf(String name) => _$inlineObject51PermissionEnumValueOf(name);
}


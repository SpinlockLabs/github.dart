//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object85.g.dart';

abstract class InlineObject85 implements Built<InlineObject85, InlineObject85Builder> {

    /// The permission to grant the collaborator. **Only valid on organization-owned repositories.** Can be one of:   \\* `pull` - can pull, but not push to or administer this repository.   \\* `push` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push and administer this repository.   \\* `maintain` - Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.   \\* `triage` - Recommended for contributors who need to proactively manage issues and pull requests without write access.
    @nullable
    @BuiltValueField(wireName: r'permission')
    InlineObject85PermissionEnum get permission;
    // enum permissionEnum {  pull,  push,  admin,  maintain,  triage,  };

    @nullable
    @BuiltValueField(wireName: r'permissions')
    String get permissions;

    // Boilerplate code needed to wire-up generated code
    InlineObject85._();

    static void _initializeBuilder(InlineObject85Builder b) => b
        ..permission = const InlineObject85PermissionEnum._('push');

    factory InlineObject85([void updates(InlineObject85Builder b)]) = _$InlineObject85;
    static Serializer<InlineObject85> get serializer => _$inlineObject85Serializer;
}

class InlineObject85PermissionEnum extends EnumClass {

  /// The permission to grant the collaborator. **Only valid on organization-owned repositories.** Can be one of:   \\* `pull` - can pull, but not push to or administer this repository.   \\* `push` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push and administer this repository.   \\* `maintain` - Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.   \\* `triage` - Recommended for contributors who need to proactively manage issues and pull requests without write access.
  @BuiltValueEnumConst(wireName: r'pull')
  static const InlineObject85PermissionEnum pull = _$inlineObject85PermissionEnum_pull;
  /// The permission to grant the collaborator. **Only valid on organization-owned repositories.** Can be one of:   \\* `pull` - can pull, but not push to or administer this repository.   \\* `push` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push and administer this repository.   \\* `maintain` - Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.   \\* `triage` - Recommended for contributors who need to proactively manage issues and pull requests without write access.
  @BuiltValueEnumConst(wireName: r'push')
  static const InlineObject85PermissionEnum push = _$inlineObject85PermissionEnum_push;
  /// The permission to grant the collaborator. **Only valid on organization-owned repositories.** Can be one of:   \\* `pull` - can pull, but not push to or administer this repository.   \\* `push` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push and administer this repository.   \\* `maintain` - Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.   \\* `triage` - Recommended for contributors who need to proactively manage issues and pull requests without write access.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject85PermissionEnum admin = _$inlineObject85PermissionEnum_admin;
  /// The permission to grant the collaborator. **Only valid on organization-owned repositories.** Can be one of:   \\* `pull` - can pull, but not push to or administer this repository.   \\* `push` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push and administer this repository.   \\* `maintain` - Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.   \\* `triage` - Recommended for contributors who need to proactively manage issues and pull requests without write access.
  @BuiltValueEnumConst(wireName: r'maintain')
  static const InlineObject85PermissionEnum maintain = _$inlineObject85PermissionEnum_maintain;
  /// The permission to grant the collaborator. **Only valid on organization-owned repositories.** Can be one of:   \\* `pull` - can pull, but not push to or administer this repository.   \\* `push` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push and administer this repository.   \\* `maintain` - Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.   \\* `triage` - Recommended for contributors who need to proactively manage issues and pull requests without write access.
  @BuiltValueEnumConst(wireName: r'triage')
  static const InlineObject85PermissionEnum triage = _$inlineObject85PermissionEnum_triage;

  static Serializer<InlineObject85PermissionEnum> get serializer => _$inlineObject85PermissionEnumSerializer;

  const InlineObject85PermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject85PermissionEnum> get values => _$inlineObject85PermissionEnumValues;
  static InlineObject85PermissionEnum valueOf(String name) => _$inlineObject85PermissionEnumValueOf(name);
}


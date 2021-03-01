//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object171.g.dart';

abstract class InlineObject171 implements Built<InlineObject171, InlineObject171Builder> {

    /// The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
    @nullable
    @BuiltValueField(wireName: r'permission')
    InlineObject171PermissionEnum get permission;
    // enum permissionEnum {  read,  write,  admin,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject171._();

    static void _initializeBuilder(InlineObject171Builder b) => b;

    factory InlineObject171([void updates(InlineObject171Builder b)]) = _$InlineObject171;
    static Serializer<InlineObject171> get serializer => _$inlineObject171Serializer;
}

class InlineObject171PermissionEnum extends EnumClass {

  /// The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
  @BuiltValueEnumConst(wireName: r'read')
  static const InlineObject171PermissionEnum read = _$inlineObject171PermissionEnum_read;
  /// The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
  @BuiltValueEnumConst(wireName: r'write')
  static const InlineObject171PermissionEnum write = _$inlineObject171PermissionEnum_write;
  /// The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject171PermissionEnum admin = _$inlineObject171PermissionEnum_admin;

  static Serializer<InlineObject171PermissionEnum> get serializer => _$inlineObject171PermissionEnumSerializer;

  const InlineObject171PermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject171PermissionEnum> get values => _$inlineObject171PermissionEnumValues;
  static InlineObject171PermissionEnum valueOf(String name) => _$inlineObject171PermissionEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object50.g.dart';

abstract class InlineObject50 implements Built<InlineObject50, InlineObject50Builder> {

    /// The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
    @nullable
    @BuiltValueField(wireName: r'permission')
    InlineObject50PermissionEnum get permission;
    // enum permissionEnum {  read,  write,  admin,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject50._();

    static void _initializeBuilder(InlineObject50Builder b) => b;

    factory InlineObject50([void updates(InlineObject50Builder b)]) = _$InlineObject50;
    static Serializer<InlineObject50> get serializer => _$inlineObject50Serializer;
}

class InlineObject50PermissionEnum extends EnumClass {

  /// The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
  @BuiltValueEnumConst(wireName: r'read')
  static const InlineObject50PermissionEnum read = _$inlineObject50PermissionEnum_read;
  /// The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
  @BuiltValueEnumConst(wireName: r'write')
  static const InlineObject50PermissionEnum write = _$inlineObject50PermissionEnum_write;
  /// The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject50PermissionEnum admin = _$inlineObject50PermissionEnum_admin;

  static Serializer<InlineObject50PermissionEnum> get serializer => _$inlineObject50PermissionEnumSerializer;

  const InlineObject50PermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject50PermissionEnum> get values => _$inlineObject50PermissionEnumValues;
  static InlineObject50PermissionEnum valueOf(String name) => _$inlineObject50PermissionEnumValueOf(name);
}


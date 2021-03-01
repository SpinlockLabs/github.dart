//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object37.g.dart';

abstract class InlineObject37 implements Built<InlineObject37, InlineObject37Builder> {

    /// The role to give the user in the organization. Can be one of:   \\* `admin` - The user will become an owner of the organization.   \\* `member` - The user will become a non-owner member of the organization.
    @nullable
    @BuiltValueField(wireName: r'role')
    InlineObject37RoleEnum get role;
    // enum roleEnum {  admin,  member,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject37._();

    static void _initializeBuilder(InlineObject37Builder b) => b
        ..role = const InlineObject37RoleEnum._('member');

    factory InlineObject37([void updates(InlineObject37Builder b)]) = _$InlineObject37;
    static Serializer<InlineObject37> get serializer => _$inlineObject37Serializer;
}

class InlineObject37RoleEnum extends EnumClass {

  /// The role to give the user in the organization. Can be one of:   \\* `admin` - The user will become an owner of the organization.   \\* `member` - The user will become a non-owner member of the organization.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject37RoleEnum admin = _$inlineObject37RoleEnum_admin;
  /// The role to give the user in the organization. Can be one of:   \\* `admin` - The user will become an owner of the organization.   \\* `member` - The user will become a non-owner member of the organization.
  @BuiltValueEnumConst(wireName: r'member')
  static const InlineObject37RoleEnum member = _$inlineObject37RoleEnum_member;

  static Serializer<InlineObject37RoleEnum> get serializer => _$inlineObject37RoleEnumSerializer;

  const InlineObject37RoleEnum._(String name): super(name);

  static BuiltSet<InlineObject37RoleEnum> get values => _$inlineObject37RoleEnumValues;
  static InlineObject37RoleEnum valueOf(String name) => _$inlineObject37RoleEnumValueOf(name);
}


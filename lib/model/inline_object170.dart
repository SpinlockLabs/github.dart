//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object170.g.dart';

abstract class InlineObject170 implements Built<InlineObject170, InlineObject170Builder> {

    /// The role that this user should have in the team. Can be one of:   \\* `member` - a normal member of the team.   \\* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.
    @nullable
    @BuiltValueField(wireName: r'role')
    InlineObject170RoleEnum get role;
    // enum roleEnum {  member,  maintainer,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject170._();

    static void _initializeBuilder(InlineObject170Builder b) => b
        ..role = const InlineObject170RoleEnum._('member');

    factory InlineObject170([void updates(InlineObject170Builder b)]) = _$InlineObject170;
    static Serializer<InlineObject170> get serializer => _$inlineObject170Serializer;
}

class InlineObject170RoleEnum extends EnumClass {

  /// The role that this user should have in the team. Can be one of:   \\* `member` - a normal member of the team.   \\* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.
  @BuiltValueEnumConst(wireName: r'member')
  static const InlineObject170RoleEnum member = _$inlineObject170RoleEnum_member;
  /// The role that this user should have in the team. Can be one of:   \\* `member` - a normal member of the team.   \\* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.
  @BuiltValueEnumConst(wireName: r'maintainer')
  static const InlineObject170RoleEnum maintainer = _$inlineObject170RoleEnum_maintainer;

  static Serializer<InlineObject170RoleEnum> get serializer => _$inlineObject170RoleEnumSerializer;

  const InlineObject170RoleEnum._(String name): super(name);

  static BuiltSet<InlineObject170RoleEnum> get values => _$inlineObject170RoleEnumValues;
  static InlineObject170RoleEnum valueOf(String name) => _$inlineObject170RoleEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object49.g.dart';

abstract class InlineObject49 implements Built<InlineObject49, InlineObject49Builder> {

    /// The role that this user should have in the team. Can be one of:   \\* `member` - a normal member of the team.   \\* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.
    @nullable
    @BuiltValueField(wireName: r'role')
    InlineObject49RoleEnum get role;
    // enum roleEnum {  member,  maintainer,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject49._();

    static void _initializeBuilder(InlineObject49Builder b) => b
        ..role = const InlineObject49RoleEnum._('member');

    factory InlineObject49([void updates(InlineObject49Builder b)]) = _$InlineObject49;
    static Serializer<InlineObject49> get serializer => _$inlineObject49Serializer;
}

class InlineObject49RoleEnum extends EnumClass {

  /// The role that this user should have in the team. Can be one of:   \\* `member` - a normal member of the team.   \\* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.
  @BuiltValueEnumConst(wireName: r'member')
  static const InlineObject49RoleEnum member = _$inlineObject49RoleEnum_member;
  /// The role that this user should have in the team. Can be one of:   \\* `member` - a normal member of the team.   \\* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.
  @BuiltValueEnumConst(wireName: r'maintainer')
  static const InlineObject49RoleEnum maintainer = _$inlineObject49RoleEnum_maintainer;

  static Serializer<InlineObject49RoleEnum> get serializer => _$inlineObject49RoleEnumSerializer;

  const InlineObject49RoleEnum._(String name): super(name);

  static BuiltSet<InlineObject49RoleEnum> get values => _$inlineObject49RoleEnumValues;
  static InlineObject49RoleEnum valueOf(String name) => _$inlineObject49RoleEnumValueOf(name);
}


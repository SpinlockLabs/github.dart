//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interaction_group.g.dart';

class InteractionGroup extends EnumClass {

  /// The type of GitHub user that can comment, open issues, or create pull requests while the interaction limit is in effect. Can be one of: `existing_users`, `contributors_only`, `collaborators_only`.
  @BuiltValueEnumConst(wireName: r'existing_users')
  static const InteractionGroup existingUsers = _$existingUsers;
  /// The type of GitHub user that can comment, open issues, or create pull requests while the interaction limit is in effect. Can be one of: `existing_users`, `contributors_only`, `collaborators_only`.
  @BuiltValueEnumConst(wireName: r'contributors_only')
  static const InteractionGroup contributorsOnly = _$contributorsOnly;
  /// The type of GitHub user that can comment, open issues, or create pull requests while the interaction limit is in effect. Can be one of: `existing_users`, `contributors_only`, `collaborators_only`.
  @BuiltValueEnumConst(wireName: r'collaborators_only')
  static const InteractionGroup collaboratorsOnly = _$collaboratorsOnly;

  static Serializer<InteractionGroup> get serializer => _$interactionGroupSerializer;

  const InteractionGroup._(String name): super(name);

  static BuiltSet<InteractionGroup> get values => _$values;
  static InteractionGroup valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class InteractionGroupMixin = Object with _$InteractionGroupMixin;


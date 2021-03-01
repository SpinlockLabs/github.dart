//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allowed_actions.g.dart';

class AllowedActions extends EnumClass {

  /// The permissions policy that controls the actions that are allowed to run. Can be one of: `all`, `local_only`, or `selected`.
  @BuiltValueEnumConst(wireName: r'all')
  static const AllowedActions all = _$all;
  /// The permissions policy that controls the actions that are allowed to run. Can be one of: `all`, `local_only`, or `selected`.
  @BuiltValueEnumConst(wireName: r'local_only')
  static const AllowedActions localOnly = _$localOnly;
  /// The permissions policy that controls the actions that are allowed to run. Can be one of: `all`, `local_only`, or `selected`.
  @BuiltValueEnumConst(wireName: r'selected')
  static const AllowedActions selected = _$selected;

  static Serializer<AllowedActions> get serializer => _$allowedActionsSerializer;

  const AllowedActions._(String name): super(name);

  static BuiltSet<AllowedActions> get values => _$values;
  static AllowedActions valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AllowedActionsMixin = Object with _$AllowedActionsMixin;


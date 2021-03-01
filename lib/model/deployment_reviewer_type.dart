//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deployment_reviewer_type.g.dart';

class DeploymentReviewerType extends EnumClass {

  /// The type of reviewer. Must be one of: `User` or `Team`
  @BuiltValueEnumConst(wireName: r'User')
  static const DeploymentReviewerType user = _$user;
  /// The type of reviewer. Must be one of: `User` or `Team`
  @BuiltValueEnumConst(wireName: r'Team')
  static const DeploymentReviewerType team = _$team;

  static Serializer<DeploymentReviewerType> get serializer => _$deploymentReviewerTypeSerializer;

  const DeploymentReviewerType._(String name): super(name);

  static BuiltSet<DeploymentReviewerType> get values => _$values;
  static DeploymentReviewerType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DeploymentReviewerTypeMixin = Object with _$DeploymentReviewerTypeMixin;


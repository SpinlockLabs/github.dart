//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enabled_repositories.g.dart';

class EnabledRepositories extends EnumClass {

  /// The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: `all`, `none`, or `selected`.
  @BuiltValueEnumConst(wireName: r'all')
  static const EnabledRepositories all = _$all;
  /// The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: `all`, `none`, or `selected`.
  @BuiltValueEnumConst(wireName: r'none')
  static const EnabledRepositories none = _$none;
  /// The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: `all`, `none`, or `selected`.
  @BuiltValueEnumConst(wireName: r'selected')
  static const EnabledRepositories selected = _$selected;

  static Serializer<EnabledRepositories> get serializer => _$enabledRepositoriesSerializer;

  const EnabledRepositories._(String name): super(name);

  static BuiltSet<EnabledRepositories> get values => _$values;
  static EnabledRepositories valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EnabledRepositoriesMixin = Object with _$EnabledRepositoriesMixin;


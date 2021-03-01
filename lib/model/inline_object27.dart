//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object27.g.dart';

abstract class InlineObject27 implements Built<InlineObject27, InlineObject27Builder> {

    /// Name of the runner group.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Visibility of a runner group. You can select all repositories, select individual repositories, or limit access to private repositories. Can be one of: `all`, `selected`, or `private`.
    @nullable
    @BuiltValueField(wireName: r'visibility')
    InlineObject27VisibilityEnum get visibility;
    // enum visibilityEnum {  selected,  all,  private,  };

    /// List of repository IDs that can access the runner group.
    @nullable
    @BuiltValueField(wireName: r'selected_repository_ids')
    BuiltList<int> get selectedRepositoryIds;

    /// List of runner IDs to add to the runner group.
    @nullable
    @BuiltValueField(wireName: r'runners')
    BuiltList<int> get runners;

    // Boilerplate code needed to wire-up generated code
    InlineObject27._();

    static void _initializeBuilder(InlineObject27Builder b) => b
        ..visibility = const InlineObject27VisibilityEnum._('all');

    factory InlineObject27([void updates(InlineObject27Builder b)]) = _$InlineObject27;
    static Serializer<InlineObject27> get serializer => _$inlineObject27Serializer;
}

class InlineObject27VisibilityEnum extends EnumClass {

  /// Visibility of a runner group. You can select all repositories, select individual repositories, or limit access to private repositories. Can be one of: `all`, `selected`, or `private`.
  @BuiltValueEnumConst(wireName: r'selected')
  static const InlineObject27VisibilityEnum selected = _$inlineObject27VisibilityEnum_selected;
  /// Visibility of a runner group. You can select all repositories, select individual repositories, or limit access to private repositories. Can be one of: `all`, `selected`, or `private`.
  @BuiltValueEnumConst(wireName: r'all')
  static const InlineObject27VisibilityEnum all = _$inlineObject27VisibilityEnum_all;
  /// Visibility of a runner group. You can select all repositories, select individual repositories, or limit access to private repositories. Can be one of: `all`, `selected`, or `private`.
  @BuiltValueEnumConst(wireName: r'private')
  static const InlineObject27VisibilityEnum private = _$inlineObject27VisibilityEnum_private;

  static Serializer<InlineObject27VisibilityEnum> get serializer => _$inlineObject27VisibilityEnumSerializer;

  const InlineObject27VisibilityEnum._(String name): super(name);

  static BuiltSet<InlineObject27VisibilityEnum> get values => _$inlineObject27VisibilityEnumValues;
  static InlineObject27VisibilityEnum valueOf(String name) => _$inlineObject27VisibilityEnumValueOf(name);
}


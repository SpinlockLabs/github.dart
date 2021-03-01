//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object14.g.dart';

abstract class InlineObject14 implements Built<InlineObject14, InlineObject14Builder> {

    /// Name of the runner group.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Visibility of a runner group. You can select all organizations or select individual organization. Can be one of: `all` or `selected`
    @nullable
    @BuiltValueField(wireName: r'visibility')
    InlineObject14VisibilityEnum get visibility;
    // enum visibilityEnum {  selected,  all,  };

    /// List of organization IDs that can access the runner group.
    @nullable
    @BuiltValueField(wireName: r'selected_organization_ids')
    BuiltList<int> get selectedOrganizationIds;

    /// List of runner IDs to add to the runner group.
    @nullable
    @BuiltValueField(wireName: r'runners')
    BuiltList<int> get runners;

    // Boilerplate code needed to wire-up generated code
    InlineObject14._();

    static void _initializeBuilder(InlineObject14Builder b) => b;

    factory InlineObject14([void updates(InlineObject14Builder b)]) = _$InlineObject14;
    static Serializer<InlineObject14> get serializer => _$inlineObject14Serializer;
}

class InlineObject14VisibilityEnum extends EnumClass {

  /// Visibility of a runner group. You can select all organizations or select individual organization. Can be one of: `all` or `selected`
  @BuiltValueEnumConst(wireName: r'selected')
  static const InlineObject14VisibilityEnum selected = _$inlineObject14VisibilityEnum_selected;
  /// Visibility of a runner group. You can select all organizations or select individual organization. Can be one of: `all` or `selected`
  @BuiltValueEnumConst(wireName: r'all')
  static const InlineObject14VisibilityEnum all = _$inlineObject14VisibilityEnum_all;

  static Serializer<InlineObject14VisibilityEnum> get serializer => _$inlineObject14VisibilityEnumSerializer;

  const InlineObject14VisibilityEnum._(String name): super(name);

  static BuiltSet<InlineObject14VisibilityEnum> get values => _$inlineObject14VisibilityEnumValues;
  static InlineObject14VisibilityEnum valueOf(String name) => _$inlineObject14VisibilityEnumValueOf(name);
}


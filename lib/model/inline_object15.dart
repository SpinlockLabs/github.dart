//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object15.g.dart';

abstract class InlineObject15 implements Built<InlineObject15, InlineObject15Builder> {

    /// Name of the runner group.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Visibility of a runner group. You can select all organizations or select individual organizations. Can be one of: `all` or `selected`
    @nullable
    @BuiltValueField(wireName: r'visibility')
    InlineObject15VisibilityEnum get visibility;
    // enum visibilityEnum {  selected,  all,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject15._();

    static void _initializeBuilder(InlineObject15Builder b) => b
        ..visibility = const InlineObject15VisibilityEnum._('all');

    factory InlineObject15([void updates(InlineObject15Builder b)]) = _$InlineObject15;
    static Serializer<InlineObject15> get serializer => _$inlineObject15Serializer;
}

class InlineObject15VisibilityEnum extends EnumClass {

  /// Visibility of a runner group. You can select all organizations or select individual organizations. Can be one of: `all` or `selected`
  @BuiltValueEnumConst(wireName: r'selected')
  static const InlineObject15VisibilityEnum selected = _$inlineObject15VisibilityEnum_selected;
  /// Visibility of a runner group. You can select all organizations or select individual organizations. Can be one of: `all` or `selected`
  @BuiltValueEnumConst(wireName: r'all')
  static const InlineObject15VisibilityEnum all = _$inlineObject15VisibilityEnum_all;

  static Serializer<InlineObject15VisibilityEnum> get serializer => _$inlineObject15VisibilityEnumSerializer;

  const InlineObject15VisibilityEnum._(String name): super(name);

  static BuiltSet<InlineObject15VisibilityEnum> get values => _$inlineObject15VisibilityEnumValues;
  static InlineObject15VisibilityEnum valueOf(String name) => _$inlineObject15VisibilityEnumValueOf(name);
}


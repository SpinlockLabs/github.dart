//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object28.g.dart';

abstract class InlineObject28 implements Built<InlineObject28, InlineObject28Builder> {

    /// Name of the runner group.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Visibility of a runner group. You can select all repositories, select individual repositories, or all private repositories. Can be one of: `all`, `selected`, or `private`.
    @nullable
    @BuiltValueField(wireName: r'visibility')
    InlineObject28VisibilityEnum get visibility;
    // enum visibilityEnum {  selected,  all,  private,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject28._();

    static void _initializeBuilder(InlineObject28Builder b) => b;

    factory InlineObject28([void updates(InlineObject28Builder b)]) = _$InlineObject28;
    static Serializer<InlineObject28> get serializer => _$inlineObject28Serializer;
}

class InlineObject28VisibilityEnum extends EnumClass {

  /// Visibility of a runner group. You can select all repositories, select individual repositories, or all private repositories. Can be one of: `all`, `selected`, or `private`.
  @BuiltValueEnumConst(wireName: r'selected')
  static const InlineObject28VisibilityEnum selected = _$inlineObject28VisibilityEnum_selected;
  /// Visibility of a runner group. You can select all repositories, select individual repositories, or all private repositories. Can be one of: `all`, `selected`, or `private`.
  @BuiltValueEnumConst(wireName: r'all')
  static const InlineObject28VisibilityEnum all = _$inlineObject28VisibilityEnum_all;
  /// Visibility of a runner group. You can select all repositories, select individual repositories, or all private repositories. Can be one of: `all`, `selected`, or `private`.
  @BuiltValueEnumConst(wireName: r'private')
  static const InlineObject28VisibilityEnum private = _$inlineObject28VisibilityEnum_private;

  static Serializer<InlineObject28VisibilityEnum> get serializer => _$inlineObject28VisibilityEnumSerializer;

  const InlineObject28VisibilityEnum._(String name): super(name);

  static BuiltSet<InlineObject28VisibilityEnum> get values => _$inlineObject28VisibilityEnumValues;
  static InlineObject28VisibilityEnum valueOf(String name) => _$inlineObject28VisibilityEnumValueOf(name);
}


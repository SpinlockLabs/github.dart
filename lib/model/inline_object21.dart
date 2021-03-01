//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object21.g.dart';

abstract class InlineObject21 implements Built<InlineObject21, InlineObject21Builder> {

    /// The Markdown text to render in HTML.
    @nullable
    @BuiltValueField(wireName: r'text')
    String get text;

    /// The rendering mode.
    @nullable
    @BuiltValueField(wireName: r'mode')
    InlineObject21ModeEnum get mode;
    // enum modeEnum {  markdown,  gfm,  };

    /// The repository context to use when creating references in `gfm` mode.
    @nullable
    @BuiltValueField(wireName: r'context')
    String get context;

    // Boilerplate code needed to wire-up generated code
    InlineObject21._();

    static void _initializeBuilder(InlineObject21Builder b) => b
        ..mode = const InlineObject21ModeEnum._('markdown');

    factory InlineObject21([void updates(InlineObject21Builder b)]) = _$InlineObject21;
    static Serializer<InlineObject21> get serializer => _$inlineObject21Serializer;
}

class InlineObject21ModeEnum extends EnumClass {

  /// The rendering mode.
  @BuiltValueEnumConst(wireName: r'markdown')
  static const InlineObject21ModeEnum markdown = _$inlineObject21ModeEnum_markdown;
  /// The rendering mode.
  @BuiltValueEnumConst(wireName: r'gfm')
  static const InlineObject21ModeEnum gfm = _$inlineObject21ModeEnum_gfm;

  static Serializer<InlineObject21ModeEnum> get serializer => _$inlineObject21ModeEnumSerializer;

  const InlineObject21ModeEnum._(String name): super(name);

  static BuiltSet<InlineObject21ModeEnum> get values => _$inlineObject21ModeEnumValues;
  static InlineObject21ModeEnum valueOf(String name) => _$inlineObject21ModeEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object169.g.dart';

abstract class InlineObject169 implements Built<InlineObject169, InlineObject169Builder> {

    /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
    @nullable
    @BuiltValueField(wireName: r'content')
    InlineObject169ContentEnum get content;
    // enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject169._();

    static void _initializeBuilder(InlineObject169Builder b) => b;

    factory InlineObject169([void updates(InlineObject169Builder b)]) = _$InlineObject169;
    static Serializer<InlineObject169> get serializer => _$inlineObject169Serializer;
}

class InlineObject169ContentEnum extends EnumClass {

  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'+1')
  static const InlineObject169ContentEnum plus1 = _$inlineObject169ContentEnum_plus1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'-1')
  static const InlineObject169ContentEnum n1 = _$inlineObject169ContentEnum_n1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'laugh')
  static const InlineObject169ContentEnum laugh = _$inlineObject169ContentEnum_laugh;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'confused')
  static const InlineObject169ContentEnum confused = _$inlineObject169ContentEnum_confused;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'heart')
  static const InlineObject169ContentEnum heart = _$inlineObject169ContentEnum_heart;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'hooray')
  static const InlineObject169ContentEnum hooray = _$inlineObject169ContentEnum_hooray;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'rocket')
  static const InlineObject169ContentEnum rocket = _$inlineObject169ContentEnum_rocket;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'eyes')
  static const InlineObject169ContentEnum eyes = _$inlineObject169ContentEnum_eyes;

  static Serializer<InlineObject169ContentEnum> get serializer => _$inlineObject169ContentEnumSerializer;

  const InlineObject169ContentEnum._(String name): super(name);

  static BuiltSet<InlineObject169ContentEnum> get values => _$inlineObject169ContentEnumValues;
  static InlineObject169ContentEnum valueOf(String name) => _$inlineObject169ContentEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object168.g.dart';

abstract class InlineObject168 implements Built<InlineObject168, InlineObject168Builder> {

    /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
    @nullable
    @BuiltValueField(wireName: r'content')
    InlineObject168ContentEnum get content;
    // enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject168._();

    static void _initializeBuilder(InlineObject168Builder b) => b;

    factory InlineObject168([void updates(InlineObject168Builder b)]) = _$InlineObject168;
    static Serializer<InlineObject168> get serializer => _$inlineObject168Serializer;
}

class InlineObject168ContentEnum extends EnumClass {

  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'+1')
  static const InlineObject168ContentEnum plus1 = _$inlineObject168ContentEnum_plus1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'-1')
  static const InlineObject168ContentEnum n1 = _$inlineObject168ContentEnum_n1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'laugh')
  static const InlineObject168ContentEnum laugh = _$inlineObject168ContentEnum_laugh;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'confused')
  static const InlineObject168ContentEnum confused = _$inlineObject168ContentEnum_confused;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'heart')
  static const InlineObject168ContentEnum heart = _$inlineObject168ContentEnum_heart;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'hooray')
  static const InlineObject168ContentEnum hooray = _$inlineObject168ContentEnum_hooray;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'rocket')
  static const InlineObject168ContentEnum rocket = _$inlineObject168ContentEnum_rocket;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'eyes')
  static const InlineObject168ContentEnum eyes = _$inlineObject168ContentEnum_eyes;

  static Serializer<InlineObject168ContentEnum> get serializer => _$inlineObject168ContentEnumSerializer;

  const InlineObject168ContentEnum._(String name): super(name);

  static BuiltSet<InlineObject168ContentEnum> get values => _$inlineObject168ContentEnumValues;
  static InlineObject168ContentEnum valueOf(String name) => _$inlineObject168ContentEnumValueOf(name);
}


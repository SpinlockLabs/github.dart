//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object47.g.dart';

abstract class InlineObject47 implements Built<InlineObject47, InlineObject47Builder> {

    /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
    @nullable
    @BuiltValueField(wireName: r'content')
    InlineObject47ContentEnum get content;
    // enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject47._();

    static void _initializeBuilder(InlineObject47Builder b) => b;

    factory InlineObject47([void updates(InlineObject47Builder b)]) = _$InlineObject47;
    static Serializer<InlineObject47> get serializer => _$inlineObject47Serializer;
}

class InlineObject47ContentEnum extends EnumClass {

  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'+1')
  static const InlineObject47ContentEnum plus1 = _$inlineObject47ContentEnum_plus1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'-1')
  static const InlineObject47ContentEnum n1 = _$inlineObject47ContentEnum_n1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'laugh')
  static const InlineObject47ContentEnum laugh = _$inlineObject47ContentEnum_laugh;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'confused')
  static const InlineObject47ContentEnum confused = _$inlineObject47ContentEnum_confused;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'heart')
  static const InlineObject47ContentEnum heart = _$inlineObject47ContentEnum_heart;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'hooray')
  static const InlineObject47ContentEnum hooray = _$inlineObject47ContentEnum_hooray;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'rocket')
  static const InlineObject47ContentEnum rocket = _$inlineObject47ContentEnum_rocket;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion comment.
  @BuiltValueEnumConst(wireName: r'eyes')
  static const InlineObject47ContentEnum eyes = _$inlineObject47ContentEnum_eyes;

  static Serializer<InlineObject47ContentEnum> get serializer => _$inlineObject47ContentEnumSerializer;

  const InlineObject47ContentEnum._(String name): super(name);

  static BuiltSet<InlineObject47ContentEnum> get values => _$inlineObject47ContentEnumValues;
  static InlineObject47ContentEnum valueOf(String name) => _$inlineObject47ContentEnumValueOf(name);
}


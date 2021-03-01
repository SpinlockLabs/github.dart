//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object87.g.dart';

abstract class InlineObject87 implements Built<InlineObject87, InlineObject87Builder> {

    /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the commit comment.
    @nullable
    @BuiltValueField(wireName: r'content')
    InlineObject87ContentEnum get content;
    // enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject87._();

    static void _initializeBuilder(InlineObject87Builder b) => b;

    factory InlineObject87([void updates(InlineObject87Builder b)]) = _$InlineObject87;
    static Serializer<InlineObject87> get serializer => _$inlineObject87Serializer;
}

class InlineObject87ContentEnum extends EnumClass {

  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the commit comment.
  @BuiltValueEnumConst(wireName: r'+1')
  static const InlineObject87ContentEnum plus1 = _$inlineObject87ContentEnum_plus1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the commit comment.
  @BuiltValueEnumConst(wireName: r'-1')
  static const InlineObject87ContentEnum n1 = _$inlineObject87ContentEnum_n1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the commit comment.
  @BuiltValueEnumConst(wireName: r'laugh')
  static const InlineObject87ContentEnum laugh = _$inlineObject87ContentEnum_laugh;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the commit comment.
  @BuiltValueEnumConst(wireName: r'confused')
  static const InlineObject87ContentEnum confused = _$inlineObject87ContentEnum_confused;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the commit comment.
  @BuiltValueEnumConst(wireName: r'heart')
  static const InlineObject87ContentEnum heart = _$inlineObject87ContentEnum_heart;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the commit comment.
  @BuiltValueEnumConst(wireName: r'hooray')
  static const InlineObject87ContentEnum hooray = _$inlineObject87ContentEnum_hooray;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the commit comment.
  @BuiltValueEnumConst(wireName: r'rocket')
  static const InlineObject87ContentEnum rocket = _$inlineObject87ContentEnum_rocket;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the commit comment.
  @BuiltValueEnumConst(wireName: r'eyes')
  static const InlineObject87ContentEnum eyes = _$inlineObject87ContentEnum_eyes;

  static Serializer<InlineObject87ContentEnum> get serializer => _$inlineObject87ContentEnumSerializer;

  const InlineObject87ContentEnum._(String name): super(name);

  static BuiltSet<InlineObject87ContentEnum> get values => _$inlineObject87ContentEnumValues;
  static InlineObject87ContentEnum valueOf(String name) => _$inlineObject87ContentEnumValueOf(name);
}


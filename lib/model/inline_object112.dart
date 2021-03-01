//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object112.g.dart';

abstract class InlineObject112 implements Built<InlineObject112, InlineObject112Builder> {

    /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue comment.
    @nullable
    @BuiltValueField(wireName: r'content')
    InlineObject112ContentEnum get content;
    // enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject112._();

    static void _initializeBuilder(InlineObject112Builder b) => b;

    factory InlineObject112([void updates(InlineObject112Builder b)]) = _$InlineObject112;
    static Serializer<InlineObject112> get serializer => _$inlineObject112Serializer;
}

class InlineObject112ContentEnum extends EnumClass {

  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue comment.
  @BuiltValueEnumConst(wireName: r'+1')
  static const InlineObject112ContentEnum plus1 = _$inlineObject112ContentEnum_plus1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue comment.
  @BuiltValueEnumConst(wireName: r'-1')
  static const InlineObject112ContentEnum n1 = _$inlineObject112ContentEnum_n1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue comment.
  @BuiltValueEnumConst(wireName: r'laugh')
  static const InlineObject112ContentEnum laugh = _$inlineObject112ContentEnum_laugh;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue comment.
  @BuiltValueEnumConst(wireName: r'confused')
  static const InlineObject112ContentEnum confused = _$inlineObject112ContentEnum_confused;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue comment.
  @BuiltValueEnumConst(wireName: r'heart')
  static const InlineObject112ContentEnum heart = _$inlineObject112ContentEnum_heart;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue comment.
  @BuiltValueEnumConst(wireName: r'hooray')
  static const InlineObject112ContentEnum hooray = _$inlineObject112ContentEnum_hooray;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue comment.
  @BuiltValueEnumConst(wireName: r'rocket')
  static const InlineObject112ContentEnum rocket = _$inlineObject112ContentEnum_rocket;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue comment.
  @BuiltValueEnumConst(wireName: r'eyes')
  static const InlineObject112ContentEnum eyes = _$inlineObject112ContentEnum_eyes;

  static Serializer<InlineObject112ContentEnum> get serializer => _$inlineObject112ContentEnumSerializer;

  const InlineObject112ContentEnum._(String name): super(name);

  static BuiltSet<InlineObject112ContentEnum> get values => _$inlineObject112ContentEnumValues;
  static InlineObject112ContentEnum valueOf(String name) => _$inlineObject112ContentEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object48.g.dart';

abstract class InlineObject48 implements Built<InlineObject48, InlineObject48Builder> {

    /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
    @nullable
    @BuiltValueField(wireName: r'content')
    InlineObject48ContentEnum get content;
    // enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject48._();

    static void _initializeBuilder(InlineObject48Builder b) => b;

    factory InlineObject48([void updates(InlineObject48Builder b)]) = _$InlineObject48;
    static Serializer<InlineObject48> get serializer => _$inlineObject48Serializer;
}

class InlineObject48ContentEnum extends EnumClass {

  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'+1')
  static const InlineObject48ContentEnum plus1 = _$inlineObject48ContentEnum_plus1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'-1')
  static const InlineObject48ContentEnum n1 = _$inlineObject48ContentEnum_n1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'laugh')
  static const InlineObject48ContentEnum laugh = _$inlineObject48ContentEnum_laugh;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'confused')
  static const InlineObject48ContentEnum confused = _$inlineObject48ContentEnum_confused;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'heart')
  static const InlineObject48ContentEnum heart = _$inlineObject48ContentEnum_heart;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'hooray')
  static const InlineObject48ContentEnum hooray = _$inlineObject48ContentEnum_hooray;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'rocket')
  static const InlineObject48ContentEnum rocket = _$inlineObject48ContentEnum_rocket;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the team discussion.
  @BuiltValueEnumConst(wireName: r'eyes')
  static const InlineObject48ContentEnum eyes = _$inlineObject48ContentEnum_eyes;

  static Serializer<InlineObject48ContentEnum> get serializer => _$inlineObject48ContentEnumSerializer;

  const InlineObject48ContentEnum._(String name): super(name);

  static BuiltSet<InlineObject48ContentEnum> get values => _$inlineObject48ContentEnumValues;
  static InlineObject48ContentEnum valueOf(String name) => _$inlineObject48ContentEnumValueOf(name);
}


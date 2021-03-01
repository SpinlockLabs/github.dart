//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object120.g.dart';

abstract class InlineObject120 implements Built<InlineObject120, InlineObject120Builder> {

    /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue.
    @nullable
    @BuiltValueField(wireName: r'content')
    InlineObject120ContentEnum get content;
    // enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject120._();

    static void _initializeBuilder(InlineObject120Builder b) => b;

    factory InlineObject120([void updates(InlineObject120Builder b)]) = _$InlineObject120;
    static Serializer<InlineObject120> get serializer => _$inlineObject120Serializer;
}

class InlineObject120ContentEnum extends EnumClass {

  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue.
  @BuiltValueEnumConst(wireName: r'+1')
  static const InlineObject120ContentEnum plus1 = _$inlineObject120ContentEnum_plus1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue.
  @BuiltValueEnumConst(wireName: r'-1')
  static const InlineObject120ContentEnum n1 = _$inlineObject120ContentEnum_n1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue.
  @BuiltValueEnumConst(wireName: r'laugh')
  static const InlineObject120ContentEnum laugh = _$inlineObject120ContentEnum_laugh;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue.
  @BuiltValueEnumConst(wireName: r'confused')
  static const InlineObject120ContentEnum confused = _$inlineObject120ContentEnum_confused;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue.
  @BuiltValueEnumConst(wireName: r'heart')
  static const InlineObject120ContentEnum heart = _$inlineObject120ContentEnum_heart;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue.
  @BuiltValueEnumConst(wireName: r'hooray')
  static const InlineObject120ContentEnum hooray = _$inlineObject120ContentEnum_hooray;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue.
  @BuiltValueEnumConst(wireName: r'rocket')
  static const InlineObject120ContentEnum rocket = _$inlineObject120ContentEnum_rocket;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the issue.
  @BuiltValueEnumConst(wireName: r'eyes')
  static const InlineObject120ContentEnum eyes = _$inlineObject120ContentEnum_eyes;

  static Serializer<InlineObject120ContentEnum> get serializer => _$inlineObject120ContentEnumSerializer;

  const InlineObject120ContentEnum._(String name): super(name);

  static BuiltSet<InlineObject120ContentEnum> get values => _$inlineObject120ContentEnumValues;
  static InlineObject120ContentEnum valueOf(String name) => _$inlineObject120ContentEnumValueOf(name);
}


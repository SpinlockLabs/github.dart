//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object133.g.dart';

abstract class InlineObject133 implements Built<InlineObject133, InlineObject133Builder> {

    /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the pull request review comment.
    @nullable
    @BuiltValueField(wireName: r'content')
    InlineObject133ContentEnum get content;
    // enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject133._();

    static void _initializeBuilder(InlineObject133Builder b) => b;

    factory InlineObject133([void updates(InlineObject133Builder b)]) = _$InlineObject133;
    static Serializer<InlineObject133> get serializer => _$inlineObject133Serializer;
}

class InlineObject133ContentEnum extends EnumClass {

  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the pull request review comment.
  @BuiltValueEnumConst(wireName: r'+1')
  static const InlineObject133ContentEnum plus1 = _$inlineObject133ContentEnum_plus1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the pull request review comment.
  @BuiltValueEnumConst(wireName: r'-1')
  static const InlineObject133ContentEnum n1 = _$inlineObject133ContentEnum_n1;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the pull request review comment.
  @BuiltValueEnumConst(wireName: r'laugh')
  static const InlineObject133ContentEnum laugh = _$inlineObject133ContentEnum_laugh;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the pull request review comment.
  @BuiltValueEnumConst(wireName: r'confused')
  static const InlineObject133ContentEnum confused = _$inlineObject133ContentEnum_confused;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the pull request review comment.
  @BuiltValueEnumConst(wireName: r'heart')
  static const InlineObject133ContentEnum heart = _$inlineObject133ContentEnum_heart;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the pull request review comment.
  @BuiltValueEnumConst(wireName: r'hooray')
  static const InlineObject133ContentEnum hooray = _$inlineObject133ContentEnum_hooray;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the pull request review comment.
  @BuiltValueEnumConst(wireName: r'rocket')
  static const InlineObject133ContentEnum rocket = _$inlineObject133ContentEnum_rocket;
  /// The [reaction type](https://docs.github.com/rest/reference/reactions#reaction-types) to add to the pull request review comment.
  @BuiltValueEnumConst(wireName: r'eyes')
  static const InlineObject133ContentEnum eyes = _$inlineObject133ContentEnum_eyes;

  static Serializer<InlineObject133ContentEnum> get serializer => _$inlineObject133ContentEnumSerializer;

  const InlineObject133ContentEnum._(String name): super(name);

  static BuiltSet<InlineObject133ContentEnum> get values => _$inlineObject133ContentEnumValues;
  static InlineObject133ContentEnum valueOf(String name) => _$inlineObject133ContentEnumValueOf(name);
}


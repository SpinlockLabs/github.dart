//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object142.g.dart';

abstract class InlineObject142 implements Built<InlineObject142, InlineObject142Builder> {

    /// The body text of the pull request review
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. When you leave this blank, the API returns _HTTP 422 (Unrecognizable entity)_ and sets the review action state to `PENDING`, which means you will need to re-submit the pull request review using a review action.
    @nullable
    @BuiltValueField(wireName: r'event')
    InlineObject142EventEnum get event;
    // enum eventEnum {  APPROVE,  REQUEST_CHANGES,  COMMENT,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject142._();

    static void _initializeBuilder(InlineObject142Builder b) => b;

    factory InlineObject142([void updates(InlineObject142Builder b)]) = _$InlineObject142;
    static Serializer<InlineObject142> get serializer => _$inlineObject142Serializer;
}

class InlineObject142EventEnum extends EnumClass {

  /// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. When you leave this blank, the API returns _HTTP 422 (Unrecognizable entity)_ and sets the review action state to `PENDING`, which means you will need to re-submit the pull request review using a review action.
  @BuiltValueEnumConst(wireName: r'APPROVE')
  static const InlineObject142EventEnum APPROVE = _$inlineObject142EventEnum_APPROVE;
  /// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. When you leave this blank, the API returns _HTTP 422 (Unrecognizable entity)_ and sets the review action state to `PENDING`, which means you will need to re-submit the pull request review using a review action.
  @BuiltValueEnumConst(wireName: r'REQUEST_CHANGES')
  static const InlineObject142EventEnum REQUEST_CHANGES = _$inlineObject142EventEnum_REQUEST_CHANGES;
  /// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. When you leave this blank, the API returns _HTTP 422 (Unrecognizable entity)_ and sets the review action state to `PENDING`, which means you will need to re-submit the pull request review using a review action.
  @BuiltValueEnumConst(wireName: r'COMMENT')
  static const InlineObject142EventEnum COMMENT = _$inlineObject142EventEnum_COMMENT;

  static Serializer<InlineObject142EventEnum> get serializer => _$inlineObject142EventEnumSerializer;

  const InlineObject142EventEnum._(String name): super(name);

  static BuiltSet<InlineObject142EventEnum> get values => _$inlineObject142EventEnumValues;
  static InlineObject142EventEnum valueOf(String name) => _$inlineObject142EventEnumValueOf(name);
}


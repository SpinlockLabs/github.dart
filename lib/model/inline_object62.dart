//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object62.g.dart';

abstract class InlineObject62 implements Built<InlineObject62, InlineObject62Builder> {

    /// The list of environment ids to approve or reject
    @nullable
    @BuiltValueField(wireName: r'environment_ids')
    BuiltList<int> get environmentIds;

    /// Whether to approve or reject deployment to the specified environments. Must be one of: `approved` or `rejected`
    @nullable
    @BuiltValueField(wireName: r'state')
    InlineObject62StateEnum get state;
    // enum stateEnum {  approved,  rejected,  };

    /// A comment to accompany the deployment review
    @nullable
    @BuiltValueField(wireName: r'comment')
    String get comment;

    // Boilerplate code needed to wire-up generated code
    InlineObject62._();

    static void _initializeBuilder(InlineObject62Builder b) => b;

    factory InlineObject62([void updates(InlineObject62Builder b)]) = _$InlineObject62;
    static Serializer<InlineObject62> get serializer => _$inlineObject62Serializer;
}

class InlineObject62StateEnum extends EnumClass {

  /// Whether to approve or reject deployment to the specified environments. Must be one of: `approved` or `rejected`
  @BuiltValueEnumConst(wireName: r'approved')
  static const InlineObject62StateEnum approved = _$inlineObject62StateEnum_approved;
  /// Whether to approve or reject deployment to the specified environments. Must be one of: `approved` or `rejected`
  @BuiltValueEnumConst(wireName: r'rejected')
  static const InlineObject62StateEnum rejected = _$inlineObject62StateEnum_rejected;

  static Serializer<InlineObject62StateEnum> get serializer => _$inlineObject62StateEnumSerializer;

  const InlineObject62StateEnum._(String name): super(name);

  static BuiltSet<InlineObject62StateEnum> get values => _$inlineObject62StateEnumValues;
  static InlineObject62StateEnum valueOf(String name) => _$inlineObject62StateEnumValueOf(name);
}


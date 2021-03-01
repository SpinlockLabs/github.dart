//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object178.g.dart';

abstract class InlineObject178 implements Built<InlineObject178, InlineObject178Builder> {

    /// The state that the membership should be in. Only `\"active\"` will be accepted.
    @nullable
    @BuiltValueField(wireName: r'state')
    InlineObject178StateEnum get state;
    // enum stateEnum {  active,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject178._();

    static void _initializeBuilder(InlineObject178Builder b) => b;

    factory InlineObject178([void updates(InlineObject178Builder b)]) = _$InlineObject178;
    static Serializer<InlineObject178> get serializer => _$inlineObject178Serializer;
}

class InlineObject178StateEnum extends EnumClass {

  /// The state that the membership should be in. Only `\"active\"` will be accepted.
  @BuiltValueEnumConst(wireName: r'active')
  static const InlineObject178StateEnum active = _$inlineObject178StateEnum_active;

  static Serializer<InlineObject178StateEnum> get serializer => _$inlineObject178StateEnumSerializer;

  const InlineObject178StateEnum._(String name): super(name);

  static BuiltSet<InlineObject178StateEnum> get values => _$inlineObject178StateEnumValues;
  static InlineObject178StateEnum valueOf(String name) => _$inlineObject178StateEnumValueOf(name);
}


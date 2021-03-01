//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object108.g.dart';

abstract class InlineObject108 implements Built<InlineObject108, InlineObject108Builder> {

    /// Can be one of `opt_in` (large files will be stored using Git LFS) or `opt_out` (large files will be removed during the import).
    @nullable
    @BuiltValueField(wireName: r'use_lfs')
    InlineObject108UseLfsEnum get useLfs;
    // enum useLfsEnum {  opt_in,  opt_out,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject108._();

    static void _initializeBuilder(InlineObject108Builder b) => b;

    factory InlineObject108([void updates(InlineObject108Builder b)]) = _$InlineObject108;
    static Serializer<InlineObject108> get serializer => _$inlineObject108Serializer;
}

class InlineObject108UseLfsEnum extends EnumClass {

  /// Can be one of `opt_in` (large files will be stored using Git LFS) or `opt_out` (large files will be removed during the import).
  @BuiltValueEnumConst(wireName: r'opt_in')
  static const InlineObject108UseLfsEnum in_ = _$inlineObject108UseLfsEnum_in_;
  /// Can be one of `opt_in` (large files will be stored using Git LFS) or `opt_out` (large files will be removed during the import).
  @BuiltValueEnumConst(wireName: r'opt_out')
  static const InlineObject108UseLfsEnum out_ = _$inlineObject108UseLfsEnum_out_;

  static Serializer<InlineObject108UseLfsEnum> get serializer => _$inlineObject108UseLfsEnumSerializer;

  const InlineObject108UseLfsEnum._(String name): super(name);

  static BuiltSet<InlineObject108UseLfsEnum> get values => _$inlineObject108UseLfsEnumValues;
  static InlineObject108UseLfsEnum valueOf(String name) => _$inlineObject108UseLfsEnumValueOf(name);
}


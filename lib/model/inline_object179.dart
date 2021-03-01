//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object179.g.dart';

abstract class InlineObject179 implements Built<InlineObject179, InlineObject179Builder> {

    /// Lock the repositories being migrated at the start of the migration
    @nullable
    @BuiltValueField(wireName: r'lock_repositories')
    bool get lockRepositories;

    /// Do not include attachments in the migration
    @nullable
    @BuiltValueField(wireName: r'exclude_attachments')
    bool get excludeAttachments;

    /// Exclude attributes from the API response to improve performance
    @nullable
    @BuiltValueField(wireName: r'exclude')
    BuiltList<InlineObject179ExcludeEnum> get exclude;
    // enum excludeEnum {  repositories,  };

    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<String> get repositories;

    // Boilerplate code needed to wire-up generated code
    InlineObject179._();

    static void _initializeBuilder(InlineObject179Builder b) => b;

    factory InlineObject179([void updates(InlineObject179Builder b)]) = _$InlineObject179;
    static Serializer<InlineObject179> get serializer => _$inlineObject179Serializer;
}

class InlineObject179ExcludeEnum extends EnumClass {

  /// Allowed values that can be passed to the exclude param.
  @BuiltValueEnumConst(wireName: r'repositories')
  static const InlineObject179ExcludeEnum repositories = _$inlineObject179ExcludeEnum_repositories;

  static Serializer<InlineObject179ExcludeEnum> get serializer => _$inlineObject179ExcludeEnumSerializer;

  const InlineObject179ExcludeEnum._(String name): super(name);

  static BuiltSet<InlineObject179ExcludeEnum> get values => _$inlineObject179ExcludeEnumValues;
  static InlineObject179ExcludeEnum valueOf(String name) => _$inlineObject179ExcludeEnumValueOf(name);
}


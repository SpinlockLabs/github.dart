//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object137.g.dart';

abstract class InlineObject137 implements Built<InlineObject137, InlineObject137Builder> {

    /// Title for the automatic commit message.
    @nullable
    @BuiltValueField(wireName: r'commit_title')
    String get commitTitle;

    /// Extra detail to append to automatic commit message.
    @nullable
    @BuiltValueField(wireName: r'commit_message')
    String get commitMessage;

    /// SHA that pull request head must match to allow merge.
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    /// Merge method to use. Possible values are `merge`, `squash` or `rebase`. Default is `merge`.
    @nullable
    @BuiltValueField(wireName: r'merge_method')
    InlineObject137MergeMethodEnum get mergeMethod;
    // enum mergeMethodEnum {  merge,  squash,  rebase,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject137._();

    static void _initializeBuilder(InlineObject137Builder b) => b;

    factory InlineObject137([void updates(InlineObject137Builder b)]) = _$InlineObject137;
    static Serializer<InlineObject137> get serializer => _$inlineObject137Serializer;
}

class InlineObject137MergeMethodEnum extends EnumClass {

  /// Merge method to use. Possible values are `merge`, `squash` or `rebase`. Default is `merge`.
  @BuiltValueEnumConst(wireName: r'merge')
  static const InlineObject137MergeMethodEnum merge = _$inlineObject137MergeMethodEnum_merge;
  /// Merge method to use. Possible values are `merge`, `squash` or `rebase`. Default is `merge`.
  @BuiltValueEnumConst(wireName: r'squash')
  static const InlineObject137MergeMethodEnum squash = _$inlineObject137MergeMethodEnum_squash;
  /// Merge method to use. Possible values are `merge`, `squash` or `rebase`. Default is `merge`.
  @BuiltValueEnumConst(wireName: r'rebase')
  static const InlineObject137MergeMethodEnum rebase = _$inlineObject137MergeMethodEnum_rebase;

  static Serializer<InlineObject137MergeMethodEnum> get serializer => _$inlineObject137MergeMethodEnumSerializer;

  const InlineObject137MergeMethodEnum._(String name): super(name);

  static BuiltSet<InlineObject137MergeMethodEnum> get values => _$inlineObject137MergeMethodEnumValues;
  static InlineObject137MergeMethodEnum valueOf(String name) => _$inlineObject137MergeMethodEnumValueOf(name);
}


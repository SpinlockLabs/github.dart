//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auto_merge.g.dart';

abstract class AutoMerge implements Built<AutoMerge, AutoMergeBuilder> {

    @nullable
    @BuiltValueField(wireName: r'enabled_by')
    SimpleUser get enabledBy;

    /// The merge method to use.
    @nullable
    @BuiltValueField(wireName: r'merge_method')
    AutoMergeMergeMethodEnum get mergeMethod;
    // enum mergeMethodEnum {  merge,  squash,  rebase,  };

    /// Title for the merge commit message.
    @nullable
    @BuiltValueField(wireName: r'commit_title')
    String get commitTitle;

    /// Commit message for the merge commit.
    @nullable
    @BuiltValueField(wireName: r'commit_message')
    String get commitMessage;

    // Boilerplate code needed to wire-up generated code
    AutoMerge._();

    static void _initializeBuilder(AutoMergeBuilder b) => b;

    factory AutoMerge([void updates(AutoMergeBuilder b)]) = _$AutoMerge;
    static Serializer<AutoMerge> get serializer => _$autoMergeSerializer;
}

class AutoMergeMergeMethodEnum extends EnumClass {

  /// The merge method to use.
  @BuiltValueEnumConst(wireName: r'merge')
  static const AutoMergeMergeMethodEnum merge = _$autoMergeMergeMethodEnum_merge;
  /// The merge method to use.
  @BuiltValueEnumConst(wireName: r'squash')
  static const AutoMergeMergeMethodEnum squash = _$autoMergeMergeMethodEnum_squash;
  /// The merge method to use.
  @BuiltValueEnumConst(wireName: r'rebase')
  static const AutoMergeMergeMethodEnum rebase = _$autoMergeMergeMethodEnum_rebase;

  static Serializer<AutoMergeMergeMethodEnum> get serializer => _$autoMergeMergeMethodEnumSerializer;

  const AutoMergeMergeMethodEnum._(String name): super(name);

  static BuiltSet<AutoMergeMergeMethodEnum> get values => _$autoMergeMergeMethodEnumValues;
  static AutoMergeMergeMethodEnum valueOf(String name) => _$autoMergeMergeMethodEnumValueOf(name);
}


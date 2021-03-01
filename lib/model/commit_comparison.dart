//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/commit.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/diff_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_comparison.g.dart';

abstract class CommitComparison implements Built<CommitComparison, CommitComparisonBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'permalink_url')
    String get permalinkUrl;

    @nullable
    @BuiltValueField(wireName: r'diff_url')
    String get diffUrl;

    @nullable
    @BuiltValueField(wireName: r'patch_url')
    String get patchUrl;

    @nullable
    @BuiltValueField(wireName: r'base_commit')
    Commit get baseCommit;

    @nullable
    @BuiltValueField(wireName: r'merge_base_commit')
    Commit get mergeBaseCommit;

    @nullable
    @BuiltValueField(wireName: r'status')
    CommitComparisonStatusEnum get status;
    // enum statusEnum {  diverged,  ahead,  behind,  identical,  };

    @nullable
    @BuiltValueField(wireName: r'ahead_by')
    int get aheadBy;

    @nullable
    @BuiltValueField(wireName: r'behind_by')
    int get behindBy;

    @nullable
    @BuiltValueField(wireName: r'total_commits')
    int get totalCommits;

    @nullable
    @BuiltValueField(wireName: r'commits')
    BuiltList<Commit> get commits;

    @nullable
    @BuiltValueField(wireName: r'files')
    BuiltList<DiffEntry> get files;

    // Boilerplate code needed to wire-up generated code
    CommitComparison._();

    static void _initializeBuilder(CommitComparisonBuilder b) => b;

    factory CommitComparison([void updates(CommitComparisonBuilder b)]) = _$CommitComparison;
    static Serializer<CommitComparison> get serializer => _$commitComparisonSerializer;
}

class CommitComparisonStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'diverged')
  static const CommitComparisonStatusEnum diverged = _$commitComparisonStatusEnum_diverged;
  @BuiltValueEnumConst(wireName: r'ahead')
  static const CommitComparisonStatusEnum ahead = _$commitComparisonStatusEnum_ahead;
  @BuiltValueEnumConst(wireName: r'behind')
  static const CommitComparisonStatusEnum behind = _$commitComparisonStatusEnum_behind;
  @BuiltValueEnumConst(wireName: r'identical')
  static const CommitComparisonStatusEnum identical = _$commitComparisonStatusEnum_identical;

  static Serializer<CommitComparisonStatusEnum> get serializer => _$commitComparisonStatusEnumSerializer;

  const CommitComparisonStatusEnum._(String name): super(name);

  static BuiltSet<CommitComparisonStatusEnum> get values => _$commitComparisonStatusEnumValues;
  static CommitComparisonStatusEnum valueOf(String name) => _$commitComparisonStatusEnumValueOf(name);
}


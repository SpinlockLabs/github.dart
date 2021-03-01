//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repos_owner_repo_git_tags_tagger.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object100.g.dart';

abstract class InlineObject100 implements Built<InlineObject100, InlineObject100Builder> {

    /// The tag's name. This is typically a version (e.g., \"v0.0.1\").
    @nullable
    @BuiltValueField(wireName: r'tag')
    String get tag;

    /// The tag message.
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    /// The SHA of the git object this is tagging.
    @nullable
    @BuiltValueField(wireName: r'object')
    String get object;

    /// The type of the object we're tagging. Normally this is a `commit` but it can also be a `tree` or a `blob`.
    @nullable
    @BuiltValueField(wireName: r'type')
    InlineObject100TypeEnum get type;
    // enum typeEnum {  commit,  tree,  blob,  };

    @nullable
    @BuiltValueField(wireName: r'tagger')
    ReposOwnerRepoGitTagsTagger get tagger;

    // Boilerplate code needed to wire-up generated code
    InlineObject100._();

    static void _initializeBuilder(InlineObject100Builder b) => b;

    factory InlineObject100([void updates(InlineObject100Builder b)]) = _$InlineObject100;
    static Serializer<InlineObject100> get serializer => _$inlineObject100Serializer;
}

class InlineObject100TypeEnum extends EnumClass {

  /// The type of the object we're tagging. Normally this is a `commit` but it can also be a `tree` or a `blob`.
  @BuiltValueEnumConst(wireName: r'commit')
  static const InlineObject100TypeEnum commit = _$inlineObject100TypeEnum_commit;
  /// The type of the object we're tagging. Normally this is a `commit` but it can also be a `tree` or a `blob`.
  @BuiltValueEnumConst(wireName: r'tree')
  static const InlineObject100TypeEnum tree = _$inlineObject100TypeEnum_tree;
  /// The type of the object we're tagging. Normally this is a `commit` but it can also be a `tree` or a `blob`.
  @BuiltValueEnumConst(wireName: r'blob')
  static const InlineObject100TypeEnum blob = _$inlineObject100TypeEnum_blob;

  static Serializer<InlineObject100TypeEnum> get serializer => _$inlineObject100TypeEnumSerializer;

  const InlineObject100TypeEnum._(String name): super(name);

  static BuiltSet<InlineObject100TypeEnum> get values => _$inlineObject100TypeEnumValues;
  static InlineObject100TypeEnum valueOf(String name) => _$inlineObject100TypeEnumValueOf(name);
}


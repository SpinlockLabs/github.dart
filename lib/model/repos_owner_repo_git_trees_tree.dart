//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_git_trees_tree.g.dart';

abstract class ReposOwnerRepoGitTreesTree implements Built<ReposOwnerRepoGitTreesTree, ReposOwnerRepoGitTreesTreeBuilder> {

    /// The file referenced in the tree.
    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    /// The file mode; one of `100644` for file (blob), `100755` for executable (blob), `040000` for subdirectory (tree), `160000` for submodule (commit), or `120000` for a blob that specifies the path of a symlink.
    @nullable
    @BuiltValueField(wireName: r'mode')
    ReposOwnerRepoGitTreesTreeModeEnum get mode;
    // enum modeEnum {  100644,  100755,  040000,  160000,  120000,  };

    /// Either `blob`, `tree`, or `commit`.
    @nullable
    @BuiltValueField(wireName: r'type')
    ReposOwnerRepoGitTreesTreeTypeEnum get type;
    // enum typeEnum {  blob,  tree,  commit,  };

    /// The SHA1 checksum ID of the object in the tree. Also called `tree.sha`. If the value is `null` then the file will be deleted.      **Note:** Use either `tree.sha` or `content` to specify the contents of the entry. Using both `tree.sha` and `content` will return an error.
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    /// The content you want this file to have. GitHub will write this blob out and use that SHA for this entry. Use either this, or `tree.sha`.      **Note:** Use either `tree.sha` or `content` to specify the contents of the entry. Using both `tree.sha` and `content` will return an error.
    @nullable
    @BuiltValueField(wireName: r'content')
    String get content;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoGitTreesTree._();

    static void _initializeBuilder(ReposOwnerRepoGitTreesTreeBuilder b) => b;

    factory ReposOwnerRepoGitTreesTree([void updates(ReposOwnerRepoGitTreesTreeBuilder b)]) = _$ReposOwnerRepoGitTreesTree;
    static Serializer<ReposOwnerRepoGitTreesTree> get serializer => _$reposOwnerRepoGitTreesTreeSerializer;
}

class ReposOwnerRepoGitTreesTreeModeEnum extends EnumClass {

  /// The file mode; one of `100644` for file (blob), `100755` for executable (blob), `040000` for subdirectory (tree), `160000` for submodule (commit), or `120000` for a blob that specifies the path of a symlink.
  @BuiltValueEnumConst(wireName: r'100644')
  static const ReposOwnerRepoGitTreesTreeModeEnum n100644 = _$reposOwnerRepoGitTreesTreeModeEnum_n100644;
  /// The file mode; one of `100644` for file (blob), `100755` for executable (blob), `040000` for subdirectory (tree), `160000` for submodule (commit), or `120000` for a blob that specifies the path of a symlink.
  @BuiltValueEnumConst(wireName: r'100755')
  static const ReposOwnerRepoGitTreesTreeModeEnum n100755 = _$reposOwnerRepoGitTreesTreeModeEnum_n100755;
  /// The file mode; one of `100644` for file (blob), `100755` for executable (blob), `040000` for subdirectory (tree), `160000` for submodule (commit), or `120000` for a blob that specifies the path of a symlink.
  @BuiltValueEnumConst(wireName: r'040000')
  static const ReposOwnerRepoGitTreesTreeModeEnum n040000 = _$reposOwnerRepoGitTreesTreeModeEnum_n040000;
  /// The file mode; one of `100644` for file (blob), `100755` for executable (blob), `040000` for subdirectory (tree), `160000` for submodule (commit), or `120000` for a blob that specifies the path of a symlink.
  @BuiltValueEnumConst(wireName: r'160000')
  static const ReposOwnerRepoGitTreesTreeModeEnum n160000 = _$reposOwnerRepoGitTreesTreeModeEnum_n160000;
  /// The file mode; one of `100644` for file (blob), `100755` for executable (blob), `040000` for subdirectory (tree), `160000` for submodule (commit), or `120000` for a blob that specifies the path of a symlink.
  @BuiltValueEnumConst(wireName: r'120000')
  static const ReposOwnerRepoGitTreesTreeModeEnum n120000 = _$reposOwnerRepoGitTreesTreeModeEnum_n120000;

  static Serializer<ReposOwnerRepoGitTreesTreeModeEnum> get serializer => _$reposOwnerRepoGitTreesTreeModeEnumSerializer;

  const ReposOwnerRepoGitTreesTreeModeEnum._(String name): super(name);

  static BuiltSet<ReposOwnerRepoGitTreesTreeModeEnum> get values => _$reposOwnerRepoGitTreesTreeModeEnumValues;
  static ReposOwnerRepoGitTreesTreeModeEnum valueOf(String name) => _$reposOwnerRepoGitTreesTreeModeEnumValueOf(name);
}

class ReposOwnerRepoGitTreesTreeTypeEnum extends EnumClass {

  /// Either `blob`, `tree`, or `commit`.
  @BuiltValueEnumConst(wireName: r'blob')
  static const ReposOwnerRepoGitTreesTreeTypeEnum blob = _$reposOwnerRepoGitTreesTreeTypeEnum_blob;
  /// Either `blob`, `tree`, or `commit`.
  @BuiltValueEnumConst(wireName: r'tree')
  static const ReposOwnerRepoGitTreesTreeTypeEnum tree = _$reposOwnerRepoGitTreesTreeTypeEnum_tree;
  /// Either `blob`, `tree`, or `commit`.
  @BuiltValueEnumConst(wireName: r'commit')
  static const ReposOwnerRepoGitTreesTreeTypeEnum commit = _$reposOwnerRepoGitTreesTreeTypeEnum_commit;

  static Serializer<ReposOwnerRepoGitTreesTreeTypeEnum> get serializer => _$reposOwnerRepoGitTreesTreeTypeEnumSerializer;

  const ReposOwnerRepoGitTreesTreeTypeEnum._(String name): super(name);

  static BuiltSet<ReposOwnerRepoGitTreesTreeTypeEnum> get values => _$reposOwnerRepoGitTreesTreeTypeEnumValues;
  static ReposOwnerRepoGitTreesTreeTypeEnum valueOf(String name) => _$reposOwnerRepoGitTreesTreeTypeEnumValueOf(name);
}


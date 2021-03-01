//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object105.g.dart';

abstract class InlineObject105 implements Built<InlineObject105, InlineObject105Builder> {

    /// The URL of the originating repository.
    @nullable
    @BuiltValueField(wireName: r'vcs_url')
    String get vcsUrl;

    /// The originating VCS type. Can be one of `subversion`, `git`, `mercurial`, or `tfvc`. Please be aware that without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response.
    @nullable
    @BuiltValueField(wireName: r'vcs')
    InlineObject105VcsEnum get vcs;
    // enum vcsEnum {  subversion,  git,  mercurial,  tfvc,  };

    /// If authentication is required, the username to provide to `vcs_url`.
    @nullable
    @BuiltValueField(wireName: r'vcs_username')
    String get vcsUsername;

    /// If authentication is required, the password to provide to `vcs_url`.
    @nullable
    @BuiltValueField(wireName: r'vcs_password')
    String get vcsPassword;

    /// For a tfvc import, the name of the project that is being imported.
    @nullable
    @BuiltValueField(wireName: r'tfvc_project')
    String get tfvcProject;

    // Boilerplate code needed to wire-up generated code
    InlineObject105._();

    static void _initializeBuilder(InlineObject105Builder b) => b;

    factory InlineObject105([void updates(InlineObject105Builder b)]) = _$InlineObject105;
    static Serializer<InlineObject105> get serializer => _$inlineObject105Serializer;
}

class InlineObject105VcsEnum extends EnumClass {

  /// The originating VCS type. Can be one of `subversion`, `git`, `mercurial`, or `tfvc`. Please be aware that without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response.
  @BuiltValueEnumConst(wireName: r'subversion')
  static const InlineObject105VcsEnum subversion = _$inlineObject105VcsEnum_subversion;
  /// The originating VCS type. Can be one of `subversion`, `git`, `mercurial`, or `tfvc`. Please be aware that without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response.
  @BuiltValueEnumConst(wireName: r'git')
  static const InlineObject105VcsEnum git = _$inlineObject105VcsEnum_git;
  /// The originating VCS type. Can be one of `subversion`, `git`, `mercurial`, or `tfvc`. Please be aware that without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response.
  @BuiltValueEnumConst(wireName: r'mercurial')
  static const InlineObject105VcsEnum mercurial = _$inlineObject105VcsEnum_mercurial;
  /// The originating VCS type. Can be one of `subversion`, `git`, `mercurial`, or `tfvc`. Please be aware that without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response.
  @BuiltValueEnumConst(wireName: r'tfvc')
  static const InlineObject105VcsEnum tfvc = _$inlineObject105VcsEnum_tfvc;

  static Serializer<InlineObject105VcsEnum> get serializer => _$inlineObject105VcsEnumSerializer;

  const InlineObject105VcsEnum._(String name): super(name);

  static BuiltSet<InlineObject105VcsEnum> get values => _$inlineObject105VcsEnumValues;
  static InlineObject105VcsEnum valueOf(String name) => _$inlineObject105VcsEnumValueOf(name);
}


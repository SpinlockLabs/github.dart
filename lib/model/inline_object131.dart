//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object131.g.dart';

abstract class InlineObject131 implements Built<InlineObject131, InlineObject131Builder> {

    /// The title of the new pull request.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The name of the branch where your changes are implemented. For cross-repository pull requests in the same network, namespace `head` with a user like this: `username:branch`.
    @nullable
    @BuiltValueField(wireName: r'head')
    String get head;

    /// The name of the branch you want the changes pulled into. This should be an existing branch on the current repository. You cannot submit a pull request to one repository that requests a merge to a base of another repository.
    @nullable
    @BuiltValueField(wireName: r'base')
    String get base;

    /// The contents of the pull request.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// Indicates whether [maintainers can modify](https://help.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/) the pull request.
    @nullable
    @BuiltValueField(wireName: r'maintainer_can_modify')
    bool get maintainerCanModify;

    /// Indicates whether the pull request is a draft. See \"[Draft Pull Requests](https://help.github.com/en/articles/about-pull-requests#draft-pull-requests)\" in the GitHub Help documentation to learn more.
    @nullable
    @BuiltValueField(wireName: r'draft')
    bool get draft;

    @nullable
    @BuiltValueField(wireName: r'issue')
    int get issue;

    // Boilerplate code needed to wire-up generated code
    InlineObject131._();

    static void _initializeBuilder(InlineObject131Builder b) => b;

    factory InlineObject131([void updates(InlineObject131Builder b)]) = _$InlineObject131;
    static Serializer<InlineObject131> get serializer => _$inlineObject131Serializer;
}


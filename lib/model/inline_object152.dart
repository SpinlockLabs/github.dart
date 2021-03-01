//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object152.g.dart';

abstract class InlineObject152 implements Built<InlineObject152, InlineObject152Builder> {

    /// The organization or person who will own the new repository. To create a new repository in an organization, the authenticated user must be a member of the specified organization.
    @nullable
    @BuiltValueField(wireName: r'owner')
    String get owner;

    /// The name of the new repository.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// A short description of the new repository.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// Set to `true` to include the directory structure and files from all branches in the template repository, and not just the default branch. Default: `false`.
    @nullable
    @BuiltValueField(wireName: r'include_all_branches')
    bool get includeAllBranches;

    /// Either `true` to create a new private repository or `false` to create a new public one.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    // Boilerplate code needed to wire-up generated code
    InlineObject152._();

    static void _initializeBuilder(InlineObject152Builder b) => b
        ..includeAllBranches = false
        ..private = false;

    factory InlineObject152([void updates(InlineObject152Builder b)]) = _$InlineObject152;
    static Serializer<InlineObject152> get serializer => _$inlineObject152Serializer;
}


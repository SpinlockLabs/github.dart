//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'selected_actions.g.dart';

abstract class SelectedActions implements Built<SelectedActions, SelectedActionsBuilder> {

    /// Whether GitHub-owned actions are allowed. For example, this includes the actions in the `actions` organization.
    @nullable
    @BuiltValueField(wireName: r'github_owned_allowed')
    bool get githubOwnedAllowed;

    /// Whether actions in GitHub Marketplace from verified creators are allowed. Set to `true` to allow all GitHub Marketplace actions by verified creators.
    @nullable
    @BuiltValueField(wireName: r'verified_allowed')
    bool get verifiedAllowed;

    /// Specifies a list of string-matching patterns to allow specific action(s). Wildcards, tags, and SHAs are allowed. For example, `monalisa/octocat@*`, `monalisa/octocat@v2`, `monalisa/_*`.\"
    @nullable
    @BuiltValueField(wireName: r'patterns_allowed')
    BuiltList<String> get patternsAllowed;

    // Boilerplate code needed to wire-up generated code
    SelectedActions._();

    static void _initializeBuilder(SelectedActionsBuilder b) => b;

    factory SelectedActions([void updates(SelectedActionsBuilder b)]) = _$SelectedActions;
    static Serializer<SelectedActions> get serializer => _$selectedActionsSerializer;
}


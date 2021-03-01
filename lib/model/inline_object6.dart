//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/app_permissions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object6.g.dart';

abstract class InlineObject6 implements Built<InlineObject6, InlineObject6Builder> {

    /// **Required.** The OAuth access token used to authenticate to the GitHub API.
    @nullable
    @BuiltValueField(wireName: r'access_token')
    String get accessToken;

    /// The name of the user or organization to scope the user-to-server access token to. **Required** unless `target_id` is specified.
    @nullable
    @BuiltValueField(wireName: r'target')
    String get target;

    /// The ID of the user or organization to scope the user-to-server access token to. **Required** unless `target` is specified.
    @nullable
    @BuiltValueField(wireName: r'target_id')
    int get targetId;

    /// The list of repository IDs to scope the user-to-server access token to. `repositories` may not be specified if `repository_ids` is specified.
    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<String> get repositories;

    /// The list of repository names to scope the user-to-server access token to. `repository_ids` may not be specified if `repositories` is specified.
    @nullable
    @BuiltValueField(wireName: r'repository_ids')
    BuiltList<int> get repositoryIds;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    AppPermissions get permissions;

    // Boilerplate code needed to wire-up generated code
    InlineObject6._();

    static void _initializeBuilder(InlineObject6Builder b) => b;

    factory InlineObject6([void updates(InlineObject6Builder b)]) = _$InlineObject6;
    static Serializer<InlineObject6> get serializer => _$inlineObject6Serializer;
}


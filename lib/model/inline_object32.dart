//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object32.g.dart';

abstract class InlineObject32 implements Built<InlineObject32, InlineObject32Builder> {

    /// An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the `visibility` is set to `selected`. You can add and remove individual repositories using the [Set selected repositories for an organization secret](https://docs.github.com/rest/reference/actions#set-selected-repositories-for-an-organization-secret) and [Remove selected repository from an organization secret](https://docs.github.com/rest/reference/actions#remove-selected-repository-from-an-organization-secret) endpoints.
    @nullable
    @BuiltValueField(wireName: r'selected_repository_ids')
    BuiltList<int> get selectedRepositoryIds;

    // Boilerplate code needed to wire-up generated code
    InlineObject32._();

    static void _initializeBuilder(InlineObject32Builder b) => b;

    factory InlineObject32([void updates(InlineObject32Builder b)]) = _$InlineObject32;
    static Serializer<InlineObject32> get serializer => _$inlineObject32Serializer;
}


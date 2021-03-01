//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object26.g.dart';

abstract class InlineObject26 implements Built<InlineObject26, InlineObject26Builder> {

    /// List of repository IDs to enable for GitHub Actions.
    @nullable
    @BuiltValueField(wireName: r'selected_repository_ids')
    BuiltList<int> get selectedRepositoryIds;

    // Boilerplate code needed to wire-up generated code
    InlineObject26._();

    static void _initializeBuilder(InlineObject26Builder b) => b;

    factory InlineObject26([void updates(InlineObject26Builder b)]) = _$InlineObject26;
    static Serializer<InlineObject26> get serializer => _$inlineObject26Serializer;
}


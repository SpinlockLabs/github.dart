//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object29.g.dart';

abstract class InlineObject29 implements Built<InlineObject29, InlineObject29Builder> {

    /// List of repository IDs that can access the runner group.
    @nullable
    @BuiltValueField(wireName: r'selected_repository_ids')
    BuiltList<int> get selectedRepositoryIds;

    // Boilerplate code needed to wire-up generated code
    InlineObject29._();

    static void _initializeBuilder(InlineObject29Builder b) => b;

    factory InlineObject29([void updates(InlineObject29Builder b)]) = _$InlineObject29;
    static Serializer<InlineObject29> get serializer => _$inlineObject29Serializer;
}


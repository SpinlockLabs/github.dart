//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object38.g.dart';

abstract class InlineObject38 implements Built<InlineObject38, InlineObject38Builder> {

    /// A list of arrays indicating which repositories should be migrated.
    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<String> get repositories;

    /// Indicates whether repositories should be locked (to prevent manipulation) while migrating data.
    @nullable
    @BuiltValueField(wireName: r'lock_repositories')
    bool get lockRepositories;

    /// Indicates whether attachments should be excluded from the migration (to reduce migration archive file size).
    @nullable
    @BuiltValueField(wireName: r'exclude_attachments')
    bool get excludeAttachments;

    @nullable
    @BuiltValueField(wireName: r'exclude')
    BuiltList<String> get exclude;

    // Boilerplate code needed to wire-up generated code
    InlineObject38._();

    static void _initializeBuilder(InlineObject38Builder b) => b
        ..lockRepositories = false
        ..excludeAttachments = false;

    factory InlineObject38([void updates(InlineObject38Builder b)]) = _$InlineObject38;
    static Serializer<InlineObject38> get serializer => _$inlineObject38Serializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object115.g.dart';

abstract class InlineObject115 implements Built<InlineObject115, InlineObject115Builder> {

    /// Usernames of assignees to remove from an issue. _NOTE: Only users with push access can remove assignees from an issue. Assignees are silently ignored otherwise._
    @nullable
    @BuiltValueField(wireName: r'assignees')
    BuiltList<String> get assignees;

    // Boilerplate code needed to wire-up generated code
    InlineObject115._();

    static void _initializeBuilder(InlineObject115Builder b) => b;

    factory InlineObject115([void updates(InlineObject115Builder b)]) = _$InlineObject115;
    static Serializer<InlineObject115> get serializer => _$inlineObject115Serializer;
}


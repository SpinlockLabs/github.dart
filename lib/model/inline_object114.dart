//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object114.g.dart';

abstract class InlineObject114 implements Built<InlineObject114, InlineObject114Builder> {

    /// Usernames of people to assign this issue to. _NOTE: Only users with push access can add assignees to an issue. Assignees are silently ignored otherwise._
    @nullable
    @BuiltValueField(wireName: r'assignees')
    BuiltList<String> get assignees;

    // Boilerplate code needed to wire-up generated code
    InlineObject114._();

    static void _initializeBuilder(InlineObject114Builder b) => b;

    factory InlineObject114([void updates(InlineObject114Builder b)]) = _$InlineObject114;
    static Serializer<InlineObject114> get serializer => _$inlineObject114Serializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object124.g.dart';

abstract class InlineObject124 implements Built<InlineObject124, InlineObject124Builder> {

    /// The name of the base branch that the head will be merged into.
    @nullable
    @BuiltValueField(wireName: r'base')
    String get base;

    /// The head to merge. This can be a branch name or a commit SHA1.
    @nullable
    @BuiltValueField(wireName: r'head')
    String get head;

    /// Commit message to use for the merge commit. If omitted, a default message will be used.
    @nullable
    @BuiltValueField(wireName: r'commit_message')
    String get commitMessage;

    // Boilerplate code needed to wire-up generated code
    InlineObject124._();

    static void _initializeBuilder(InlineObject124Builder b) => b;

    factory InlineObject124([void updates(InlineObject124Builder b)]) = _$InlineObject124;
    static Serializer<InlineObject124> get serializer => _$inlineObject124Serializer;
}


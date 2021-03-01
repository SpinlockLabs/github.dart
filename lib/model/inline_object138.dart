//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object138.g.dart';

abstract class InlineObject138 implements Built<InlineObject138, InlineObject138Builder> {

    /// An array of user `login`s that will be removed.
    @nullable
    @BuiltValueField(wireName: r'reviewers')
    BuiltList<String> get reviewers;

    /// An array of team `slug`s that will be removed.
    @nullable
    @BuiltValueField(wireName: r'team_reviewers')
    BuiltList<String> get teamReviewers;

    // Boilerplate code needed to wire-up generated code
    InlineObject138._();

    static void _initializeBuilder(InlineObject138Builder b) => b;

    factory InlineObject138([void updates(InlineObject138Builder b)]) = _$InlineObject138;
    static Serializer<InlineObject138> get serializer => _$inlineObject138Serializer;
}


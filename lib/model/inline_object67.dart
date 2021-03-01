//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object67.g.dart';

abstract class InlineObject67 implements Built<InlineObject67, InlineObject67Builder> {

    /// Require branches to be up to date before merging.
    @nullable
    @BuiltValueField(wireName: r'strict')
    bool get strict;

    /// The list of status checks to require in order to merge into this branch
    @nullable
    @BuiltValueField(wireName: r'contexts')
    BuiltList<String> get contexts;

    // Boilerplate code needed to wire-up generated code
    InlineObject67._();

    static void _initializeBuilder(InlineObject67Builder b) => b;

    factory InlineObject67([void updates(InlineObject67Builder b)]) = _$InlineObject67;
    static Serializer<InlineObject67> get serializer => _$inlineObject67Serializer;
}


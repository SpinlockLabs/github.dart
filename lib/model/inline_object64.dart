//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object64.g.dart';

abstract class InlineObject64 implements Built<InlineObject64, InlineObject64Builder> {

    /// The git reference for the workflow. The reference can be a branch or tag name.
    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    /// Input keys and values configured in the workflow file. The maximum number of properties is 10. Any default properties configured in the workflow file will be used when `inputs` are omitted.
    @nullable
    @BuiltValueField(wireName: r'inputs')
    BuiltMap<String, String> get inputs;

    // Boilerplate code needed to wire-up generated code
    InlineObject64._();

    static void _initializeBuilder(InlineObject64Builder b) => b;

    factory InlineObject64([void updates(InlineObject64Builder b)]) = _$InlineObject64;
    static Serializer<InlineObject64> get serializer => _$inlineObject64Serializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object117.g.dart';

abstract class InlineObject117 implements Built<InlineObject117, InlineObject117Builder> {

    /// The names of the labels to add to the issue. You can pass an empty array to remove all labels. **Note:** Alternatively, you can pass a single label as a `string` or an `array` of labels directly, but GitHub recommends passing an object with the `labels` key.
    @nullable
    @BuiltValueField(wireName: r'labels')
    BuiltList<String> get labels;

    // Boilerplate code needed to wire-up generated code
    InlineObject117._();

    static void _initializeBuilder(InlineObject117Builder b) => b;

    factory InlineObject117([void updates(InlineObject117Builder b)]) = _$InlineObject117;
    static Serializer<InlineObject117> get serializer => _$inlineObject117Serializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object118.g.dart';

abstract class InlineObject118 implements Built<InlineObject118, InlineObject118Builder> {

    /// The name of the label to add to the issue. Must contain at least one label. **Note:** Alternatively, you can pass a single label as a `string` or an `array` of labels directly, but GitHub recommends passing an object with the `labels` key.
    @nullable
    @BuiltValueField(wireName: r'labels')
    BuiltList<String> get labels;

    // Boilerplate code needed to wire-up generated code
    InlineObject118._();

    static void _initializeBuilder(InlineObject118Builder b) => b;

    factory InlineObject118([void updates(InlineObject118Builder b)]) = _$InlineObject118;
    static Serializer<InlineObject118> get serializer => _$inlineObject118Serializer;
}


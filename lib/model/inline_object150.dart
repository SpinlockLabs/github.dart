//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object150.g.dart';

abstract class InlineObject150 implements Built<InlineObject150, InlineObject150Builder> {

    /// An array of topics to add to the repository. Pass one or more topics to _replace_ the set of existing topics. Send an empty array (`[]`) to clear all topics from the repository. **Note:** Topic `names` cannot contain uppercase letters.
    @nullable
    @BuiltValueField(wireName: r'names')
    BuiltList<String> get names;

    // Boilerplate code needed to wire-up generated code
    InlineObject150._();

    static void _initializeBuilder(InlineObject150Builder b) => b;

    factory InlineObject150([void updates(InlineObject150Builder b)]) = _$InlineObject150;
    static Serializer<InlineObject150> get serializer => _$inlineObject150Serializer;
}


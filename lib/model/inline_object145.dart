//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object145.g.dart';

abstract class InlineObject145 implements Built<InlineObject145, InlineObject145Builder> {

    /// The file name of the asset.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// An alternate short description of the asset. Used in place of the filename.
    @nullable
    @BuiltValueField(wireName: r'label')
    String get label;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    // Boilerplate code needed to wire-up generated code
    InlineObject145._();

    static void _initializeBuilder(InlineObject145Builder b) => b;

    factory InlineObject145([void updates(InlineObject145Builder b)]) = _$InlineObject145;
    static Serializer<InlineObject145> get serializer => _$inlineObject145Serializer;
}


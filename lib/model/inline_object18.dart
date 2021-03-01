//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/gists_files.dart';
import 'package:github/model/one_ofbooleanstring.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object18.g.dart';

abstract class InlineObject18 implements Built<InlineObject18, InlineObject18Builder> {

    /// Description of the gist
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// Names and content for the files that make up the gist
    @nullable
    @BuiltValueField(wireName: r'files')
    BuiltMap<String, GistsFiles> get files;

    @nullable
    @BuiltValueField(wireName: r'public')
    OneOfbooleanstring get public;

    // Boilerplate code needed to wire-up generated code
    InlineObject18._();

    static void _initializeBuilder(InlineObject18Builder b) => b;

    factory InlineObject18([void updates(InlineObject18Builder b)]) = _$InlineObject18;
    static Serializer<InlineObject18> get serializer => _$inlineObject18Serializer;
}


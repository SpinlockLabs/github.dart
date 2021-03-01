//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_of_conduct_simple.g.dart';

abstract class CodeOfConductSimple implements Built<CodeOfConductSimple, CodeOfConductSimpleBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    // Boilerplate code needed to wire-up generated code
    CodeOfConductSimple._();

    static void _initializeBuilder(CodeOfConductSimpleBuilder b) => b;

    factory CodeOfConductSimple([void updates(CodeOfConductSimpleBuilder b)]) = _$CodeOfConductSimple;
    static Serializer<CodeOfConductSimple> get serializer => _$codeOfConductSimpleSerializer;
}


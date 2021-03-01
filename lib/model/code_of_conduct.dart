//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_of_conduct.g.dart';

abstract class CodeOfConduct implements Built<CodeOfConduct, CodeOfConductBuilder> {

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    // Boilerplate code needed to wire-up generated code
    CodeOfConduct._();

    static void _initializeBuilder(CodeOfConductBuilder b) => b;

    factory CodeOfConduct([void updates(CodeOfConductBuilder b)]) = _$CodeOfConduct;
    static Serializer<CodeOfConduct> get serializer => _$codeOfConductSerializer;
}


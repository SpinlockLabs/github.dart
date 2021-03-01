//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_run_output.g.dart';

abstract class CheckRunOutput implements Built<CheckRunOutput, CheckRunOutputBuilder> {

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'summary')
    String get summary;

    @nullable
    @BuiltValueField(wireName: r'text')
    String get text;

    @nullable
    @BuiltValueField(wireName: r'annotations_count')
    int get annotationsCount;

    @nullable
    @BuiltValueField(wireName: r'annotations_url')
    String get annotationsUrl;

    // Boilerplate code needed to wire-up generated code
    CheckRunOutput._();

    static void _initializeBuilder(CheckRunOutputBuilder b) => b;

    factory CheckRunOutput([void updates(CheckRunOutputBuilder b)]) = _$CheckRunOutput;
    static Serializer<CheckRunOutput> get serializer => _$checkRunOutputSerializer;
}


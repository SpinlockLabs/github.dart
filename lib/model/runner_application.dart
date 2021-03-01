//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runner_application.g.dart';

abstract class RunnerApplication implements Built<RunnerApplication, RunnerApplicationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'os')
    String get os;

    @nullable
    @BuiltValueField(wireName: r'architecture')
    String get architecture;

    @nullable
    @BuiltValueField(wireName: r'download_url')
    String get downloadUrl;

    @nullable
    @BuiltValueField(wireName: r'filename')
    String get filename;

    // Boilerplate code needed to wire-up generated code
    RunnerApplication._();

    static void _initializeBuilder(RunnerApplicationBuilder b) => b;

    factory RunnerApplication([void updates(RunnerApplicationBuilder b)]) = _$RunnerApplication;
    static Serializer<RunnerApplication> get serializer => _$runnerApplicationSerializer;
}


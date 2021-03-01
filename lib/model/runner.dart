//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/runner_labels.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runner.g.dart';

abstract class Runner implements Built<Runner, RunnerBuilder> {

    /// The id of the runner.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The name of the runner.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The Operating System of the runner.
    @nullable
    @BuiltValueField(wireName: r'os')
    String get os;

    /// The status of the runner.
    @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    @nullable
    @BuiltValueField(wireName: r'busy')
    bool get busy;

    @nullable
    @BuiltValueField(wireName: r'labels')
    BuiltList<RunnerLabels> get labels;

    // Boilerplate code needed to wire-up generated code
    Runner._();

    static void _initializeBuilder(RunnerBuilder b) => b;

    factory Runner([void updates(RunnerBuilder b)]) = _$Runner;
    static Serializer<Runner> get serializer => _$runnerSerializer;
}


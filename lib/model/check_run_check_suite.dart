//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_run_check_suite.g.dart';

abstract class CheckRunCheckSuite implements Built<CheckRunCheckSuite, CheckRunCheckSuiteBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    CheckRunCheckSuite._();

    static void _initializeBuilder(CheckRunCheckSuiteBuilder b) => b;

    factory CheckRunCheckSuite([void updates(CheckRunCheckSuiteBuilder b)]) = _$CheckRunCheckSuite;
    static Serializer<CheckRunCheckSuite> get serializer => _$checkRunCheckSuiteSerializer;
}


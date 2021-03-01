//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/check_run.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20017.g.dart';

abstract class InlineResponse20017 implements Built<InlineResponse20017, InlineResponse20017Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'check_runs')
    BuiltList<CheckRun> get checkRuns;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20017._();

    static void _initializeBuilder(InlineResponse20017Builder b) => b;

    factory InlineResponse20017([void updates(InlineResponse20017Builder b)]) = _$InlineResponse20017;
    static Serializer<InlineResponse20017> get serializer => _$inlineResponse20017Serializer;
}


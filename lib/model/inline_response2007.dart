//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/runner_groups_org.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2007.g.dart';

abstract class InlineResponse2007 implements Built<InlineResponse2007, InlineResponse2007Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    num get totalCount;

    @nullable
    @BuiltValueField(wireName: r'runner_groups')
    BuiltList<RunnerGroupsOrg> get runnerGroups;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2007._();

    static void _initializeBuilder(InlineResponse2007Builder b) => b;

    factory InlineResponse2007([void updates(InlineResponse2007Builder b)]) = _$InlineResponse2007;
    static Serializer<InlineResponse2007> get serializer => _$inlineResponse2007Serializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/runner_groups_enterprise.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2002.g.dart';

abstract class InlineResponse2002 implements Built<InlineResponse2002, InlineResponse2002Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    num get totalCount;

    @nullable
    @BuiltValueField(wireName: r'runner_groups')
    BuiltList<RunnerGroupsEnterprise> get runnerGroups;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2002._();

    static void _initializeBuilder(InlineResponse2002Builder b) => b;

    factory InlineResponse2002([void updates(InlineResponse2002Builder b)]) = _$InlineResponse2002;
    static Serializer<InlineResponse2002> get serializer => _$inlineResponse2002Serializer;
}


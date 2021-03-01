//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repository.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2006.g.dart';

abstract class InlineResponse2006 implements Built<InlineResponse2006, InlineResponse2006Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    num get totalCount;

    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<Repository> get repositories;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2006._();

    static void _initializeBuilder(InlineResponse2006Builder b) => b;

    factory InlineResponse2006([void updates(InlineResponse2006Builder b)]) = _$InlineResponse2006;
    static Serializer<InlineResponse2006> get serializer => _$inlineResponse2006Serializer;
}


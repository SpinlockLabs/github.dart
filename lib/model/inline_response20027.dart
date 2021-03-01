//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repository.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20027.g.dart';

abstract class InlineResponse20027 implements Built<InlineResponse20027, InlineResponse20027Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'repository_selection')
    String get repositorySelection;

    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<Repository> get repositories;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20027._();

    static void _initializeBuilder(InlineResponse20027Builder b) => b;

    factory InlineResponse20027([void updates(InlineResponse20027Builder b)]) = _$InlineResponse20027;
    static Serializer<InlineResponse20027> get serializer => _$inlineResponse20027Serializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repository.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2005.g.dart';

abstract class InlineResponse2005 implements Built<InlineResponse2005, InlineResponse2005Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<Repository> get repositories;

    @nullable
    @BuiltValueField(wireName: r'repository_selection')
    String get repositorySelection;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2005._();

    static void _initializeBuilder(InlineResponse2005Builder b) => b;

    factory InlineResponse2005([void updates(InlineResponse2005Builder b)]) = _$InlineResponse2005;
    static Serializer<InlineResponse2005> get serializer => _$inlineResponse2005Serializer;
}


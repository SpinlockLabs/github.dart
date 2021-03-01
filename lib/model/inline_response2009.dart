//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/organization_actions_secret.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2009.g.dart';

abstract class InlineResponse2009 implements Built<InlineResponse2009, InlineResponse2009Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'secrets')
    BuiltList<OrganizationActionsSecret> get secrets;

    // Boilerplate code needed to wire-up generated code
    InlineResponse2009._();

    static void _initializeBuilder(InlineResponse2009Builder b) => b;

    factory InlineResponse2009([void updates(InlineResponse2009Builder b)]) = _$InlineResponse2009;
    static Serializer<InlineResponse2009> get serializer => _$inlineResponse2009Serializer;
}


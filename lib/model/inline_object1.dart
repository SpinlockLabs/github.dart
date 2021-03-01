//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/app_permissions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object1.g.dart';

abstract class InlineObject1 implements Built<InlineObject1, InlineObject1Builder> {

    /// List of repository names that the token should have access to
    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<String> get repositories;

    /// List of repository IDs that the token should have access to
    @nullable
    @BuiltValueField(wireName: r'repository_ids')
    BuiltList<int> get repositoryIds;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    AppPermissions get permissions;

    // Boilerplate code needed to wire-up generated code
    InlineObject1._();

    static void _initializeBuilder(InlineObject1Builder b) => b;

    factory InlineObject1([void updates(InlineObject1Builder b)]) = _$InlineObject1;
    static Serializer<InlineObject1> get serializer => _$inlineObject1Serializer;
}


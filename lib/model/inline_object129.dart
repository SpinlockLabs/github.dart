//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repos_owner_repo_pages_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object129.g.dart';

abstract class InlineObject129 implements Built<InlineObject129, InlineObject129Builder> {

    @nullable
    @BuiltValueField(wireName: r'source')
    ReposOwnerRepoPagesSource get source_;

    // Boilerplate code needed to wire-up generated code
    InlineObject129._();

    static void _initializeBuilder(InlineObject129Builder b) => b;

    factory InlineObject129([void updates(InlineObject129Builder b)]) = _$InlineObject129;
    static Serializer<InlineObject129> get serializer => _$inlineObject129Serializer;
}


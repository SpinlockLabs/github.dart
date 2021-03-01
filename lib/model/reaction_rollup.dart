//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reaction_rollup.g.dart';

abstract class ReactionRollup implements Built<ReactionRollup, ReactionRollupBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'+1')
    int get plus1;

    @nullable
    @BuiltValueField(wireName: r'-1')
    int get n1;

    @nullable
    @BuiltValueField(wireName: r'laugh')
    int get laugh;

    @nullable
    @BuiltValueField(wireName: r'confused')
    int get confused;

    @nullable
    @BuiltValueField(wireName: r'heart')
    int get heart;

    @nullable
    @BuiltValueField(wireName: r'hooray')
    int get hooray;

    @nullable
    @BuiltValueField(wireName: r'eyes')
    int get eyes;

    @nullable
    @BuiltValueField(wireName: r'rocket')
    int get rocket;

    // Boilerplate code needed to wire-up generated code
    ReactionRollup._();

    static void _initializeBuilder(ReactionRollupBuilder b) => b;

    factory ReactionRollup([void updates(ReactionRollupBuilder b)]) = _$ReactionRollup;
    static Serializer<ReactionRollup> get serializer => _$reactionRollupSerializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'participation_stats.g.dart';

abstract class ParticipationStats implements Built<ParticipationStats, ParticipationStatsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'all')
    BuiltList<int> get all;

    @nullable
    @BuiltValueField(wireName: r'owner')
    BuiltList<int> get owner;

    // Boilerplate code needed to wire-up generated code
    ParticipationStats._();

    static void _initializeBuilder(ParticipationStatsBuilder b) => b;

    factory ParticipationStats([void updates(ParticipationStatsBuilder b)]) = _$ParticipationStats;
    static Serializer<ParticipationStats> get serializer => _$participationStatsSerializer;
}


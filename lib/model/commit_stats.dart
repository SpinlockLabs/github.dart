//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_stats.g.dart';

abstract class CommitStats implements Built<CommitStats, CommitStatsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'additions')
    int get additions;

    @nullable
    @BuiltValueField(wireName: r'deletions')
    int get deletions;

    @nullable
    @BuiltValueField(wireName: r'total')
    int get total;

    // Boilerplate code needed to wire-up generated code
    CommitStats._();

    static void _initializeBuilder(CommitStatsBuilder b) => b;

    factory CommitStats([void updates(CommitStatsBuilder b)]) = _$CommitStats;
    static Serializer<CommitStats> get serializer => _$commitStatsSerializer;
}


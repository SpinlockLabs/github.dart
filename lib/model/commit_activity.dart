//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_activity.g.dart';

abstract class CommitActivity implements Built<CommitActivity, CommitActivityBuilder> {

    @nullable
    @BuiltValueField(wireName: r'days')
    BuiltList<int> get days;

    @nullable
    @BuiltValueField(wireName: r'total')
    int get total;

    @nullable
    @BuiltValueField(wireName: r'week')
    int get week;

    // Boilerplate code needed to wire-up generated code
    CommitActivity._();

    static void _initializeBuilder(CommitActivityBuilder b) => b;

    factory CommitActivity([void updates(CommitActivityBuilder b)]) = _$CommitActivity;
    static Serializer<CommitActivity> get serializer => _$commitActivitySerializer;
}


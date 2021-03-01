//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_simple_labels.g.dart';

abstract class PullRequestSimpleLabels implements Built<PullRequestSimpleLabels, PullRequestSimpleLabelsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'color')
    String get color;

    @nullable
    @BuiltValueField(wireName: r'default')
    bool get default_;

    // Boilerplate code needed to wire-up generated code
    PullRequestSimpleLabels._();

    static void _initializeBuilder(PullRequestSimpleLabelsBuilder b) => b;

    factory PullRequestSimpleLabels([void updates(PullRequestSimpleLabelsBuilder b)]) = _$PullRequestSimpleLabels;
    static Serializer<PullRequestSimpleLabels> get serializer => _$pullRequestSimpleLabelsSerializer;
}


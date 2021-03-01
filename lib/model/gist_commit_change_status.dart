//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gist_commit_change_status.g.dart';

abstract class GistCommitChangeStatus implements Built<GistCommitChangeStatus, GistCommitChangeStatusBuilder> {

    @nullable
    @BuiltValueField(wireName: r'total')
    int get total;

    @nullable
    @BuiltValueField(wireName: r'additions')
    int get additions;

    @nullable
    @BuiltValueField(wireName: r'deletions')
    int get deletions;

    // Boilerplate code needed to wire-up generated code
    GistCommitChangeStatus._();

    static void _initializeBuilder(GistCommitChangeStatusBuilder b) => b;

    factory GistCommitChangeStatus([void updates(GistCommitChangeStatusBuilder b)]) = _$GistCommitChangeStatus;
    static Serializer<GistCommitChangeStatus> get serializer => _$gistCommitChangeStatusSerializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/team_simple.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_review_request.g.dart';

abstract class PullRequestReviewRequest implements Built<PullRequestReviewRequest, PullRequestReviewRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<SimpleUser> get users;

    @nullable
    @BuiltValueField(wireName: r'teams')
    BuiltList<TeamSimple> get teams;

    // Boilerplate code needed to wire-up generated code
    PullRequestReviewRequest._();

    static void _initializeBuilder(PullRequestReviewRequestBuilder b) => b;

    factory PullRequestReviewRequest([void updates(PullRequestReviewRequestBuilder b)]) = _$PullRequestReviewRequest;
    static Serializer<PullRequestReviewRequest> get serializer => _$pullRequestReviewRequestSerializer;
}


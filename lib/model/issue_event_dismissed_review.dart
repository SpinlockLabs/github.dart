//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_event_dismissed_review.g.dart';

abstract class IssueEventDismissedReview implements Built<IssueEventDismissedReview, IssueEventDismissedReviewBuilder> {

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'review_id')
    int get reviewId;

    @nullable
    @BuiltValueField(wireName: r'dismissal_message')
    String get dismissalMessage;

    @nullable
    @BuiltValueField(wireName: r'dismissal_commit_id')
    String get dismissalCommitId;

    // Boilerplate code needed to wire-up generated code
    IssueEventDismissedReview._();

    static void _initializeBuilder(IssueEventDismissedReviewBuilder b) => b;

    factory IssueEventDismissedReview([void updates(IssueEventDismissedReviewBuilder b)]) = _$IssueEventDismissedReview;
    static Serializer<IssueEventDismissedReview> get serializer => _$issueEventDismissedReviewSerializer;
}


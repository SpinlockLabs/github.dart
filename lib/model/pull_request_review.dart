//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pull_request_review_links.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/author_association.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_review.g.dart';

abstract class PullRequestReview implements Built<PullRequestReview, PullRequestReviewBuilder> {

    /// Unique identifier of the review
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    /// The text of the review.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'pull_request_url')
    String get pullRequestUrl;

    @nullable
    @BuiltValueField(wireName: r'_links')
    PullRequestReviewLinks get links;

    @nullable
    @BuiltValueField(wireName: r'submitted_at')
    DateTime get submittedAt;

    /// A commit SHA for the review.
    @nullable
    @BuiltValueField(wireName: r'commit_id')
    String get commitId;

    @nullable
    @BuiltValueField(wireName: r'body_html')
    String get bodyHtml;

    @nullable
    @BuiltValueField(wireName: r'body_text')
    String get bodyText;

    @nullable
    @BuiltValueField(wireName: r'author_association')
    AuthorAssociation get authorAssociation;
    // enum authorAssociationEnum {  COLLABORATOR,  CONTRIBUTOR,  FIRST_TIMER,  FIRST_TIME_CONTRIBUTOR,  MANNEQUIN,  MEMBER,  NONE,  OWNER,  };

    // Boilerplate code needed to wire-up generated code
    PullRequestReview._();

    static void _initializeBuilder(PullRequestReviewBuilder b) => b;

    factory PullRequestReview([void updates(PullRequestReviewBuilder b)]) = _$PullRequestReview;
    static Serializer<PullRequestReview> get serializer => _$pullRequestReviewSerializer;
}


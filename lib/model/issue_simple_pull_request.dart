//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_simple_pull_request.g.dart';

abstract class IssueSimplePullRequest implements Built<IssueSimplePullRequest, IssueSimplePullRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'merged_at')
    DateTime get mergedAt;

    @nullable
    @BuiltValueField(wireName: r'diff_url')
    String get diffUrl;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'patch_url')
    String get patchUrl;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    IssueSimplePullRequest._();

    static void _initializeBuilder(IssueSimplePullRequestBuilder b) => b;

    factory IssueSimplePullRequest([void updates(IssueSimplePullRequestBuilder b)]) = _$IssueSimplePullRequest;
    static Serializer<IssueSimplePullRequest> get serializer => _$issueSimplePullRequestSerializer;
}


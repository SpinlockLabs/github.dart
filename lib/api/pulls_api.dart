//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:github/model/pull_request_merge_result.dart';
import 'package:github/model/unknown_base_type.dart';
import 'package:github/model/validation_error.dart';
import 'package:github/model/any_of_any_type_any_type.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/inline_response2021.dart';
import 'package:github/model/pull_request_review_request.dart';
import 'package:github/model/validation_error_simple.dart';
import 'package:github/model/basic_error.dart';
import 'package:github/model/pull_request_review_comment.dart';
import 'package:github/model/inline_object140.dart';
import 'package:github/model/inline_object141.dart';
import 'package:github/model/inline_object142.dart';
import 'package:github/model/review_comment.dart';
import 'package:github/model/inline_object143.dart';
import 'package:github/model/inline_object137.dart';
import 'package:github/model/inline_object138.dart';
import 'package:github/model/pull_request.dart';
import 'package:github/model/inline_object139.dart';
import 'package:github/model/diff_entry.dart';
import 'package:github/model/inline_response4031.dart';
import 'package:github/model/inline_response415.dart';
import 'package:github/model/pull_request_review.dart';
import 'package:github/model/inline_object131.dart';
import 'package:github/model/inline_object132.dart';
import 'package:github/model/inline_object134.dart';
import 'package:github/model/inline_object135.dart';
import 'package:github/model/inline_object136.dart';
import 'package:github/model/pull_request_simple.dart';
import 'package:built_collection/built_collection.dart';

class PullsApi {

    final Dio _dio;

    final Serializers _serializers;

    const PullsApi(this._dio, this._serializers);

    /// Check if a pull request has been merged
    ///
    /// 
    Future<Response<void>> pullsCheckIfMerged(
        String owner,
        String repo,
        int pullNumber, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/merge'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        );
    }

    /// Create a pull request
    ///
    /// Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To open or update a pull request in a public repository, you must have write access to the head or the source branch. For organization-owned repositories, you must be a member of the organization that owns the repository to open or update a pull request.  You can create a new pull request.  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.
    Future<Response<PullRequest>> pullsCreate(
        String owner,
        String repo, { 
        InlineObject131 inlineObject131,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject131) as Serializer<InlineObject131>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject131);
        final jsoninlineObject131 = json.encode(serializedBody);
        bodyData = jsoninlineObject131;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'post'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequest) as Serializer<PullRequest>;
            final data = _serializers.deserializeWith<PullRequest>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequest>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Create a reply for a review comment
    ///
    /// Creates a reply to a review comment for a pull request. For the `comment_id`, provide the ID of the review comment you are replying to. This must be the ID of a _top-level review comment_, not a reply to that comment. Replies to replies are not supported.  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.
    Future<Response<PullRequestReviewComment>> pullsCreateReplyForReviewComment(
        String owner,
        String repo,
        int pullNumber,
        int commentId, { 
        InlineObject136 inlineObject136,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/comments/{comment_id}/replies'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString()).replaceAll('{' r'comment_id' '}', commentId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject136) as Serializer<InlineObject136>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject136);
        final jsoninlineObject136 = json.encode(serializedBody);
        bodyData = jsoninlineObject136;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'post'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReviewComment) as Serializer<PullRequestReviewComment>;
            final data = _serializers.deserializeWith<PullRequestReviewComment>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReviewComment>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Create a review for a pull request
    ///
    /// This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.  Pull request reviews created in the `PENDING` state do not include the `submitted_at` property in the response.  **Note:** To comment on a specific line in a file, you need to first determine the _position_ of that line in the diff. The GitHub REST API v3 offers the `application/vnd.github.v3.diff` [media type](https://docs.github.com/rest/overview/media-types#commits-commit-comparison-and-pull-requests). To see a pull request diff, add this media type to the `Accept` header of a call to the [single pull request](https://docs.github.com/rest/reference/pulls#get-a-pull-request) endpoint.  The `position` value equals the number of lines down from the first \"@@\" hunk header in the file you want to add a comment. The line just below the \"@@\" line is position 1, the next line is position 2, and so on. The position in the diff continues to increase through lines of whitespace and additional hunks until the beginning of a new file.
    Future<Response<PullRequestReview>> pullsCreateReview(
        String owner,
        String repo,
        int pullNumber, { 
        InlineObject139 inlineObject139,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/reviews'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject139) as Serializer<InlineObject139>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject139);
        final jsoninlineObject139 = json.encode(serializedBody);
        bodyData = jsoninlineObject139;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'post'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReview) as Serializer<PullRequestReview>;
            final data = _serializers.deserializeWith<PullRequestReview>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReview>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Create a review comment for a pull request
    ///
    ///  Creates a review comment in the pull request diff. To add a regular comment to a pull request timeline, see \"[Create an issue comment](https://docs.github.com/rest/reference/issues#create-an-issue-comment).\" We recommend creating a review comment using `line`, `side`, and optionally `start_line` and `start_side` if your comment applies to more than one line in the pull request diff.  You can still create a review comment using the `position` parameter. When you use `position`, the `line`, `side`, `start_line`, and `start_side` parameters are not required. For more information, see the [`comfort-fade` preview notice](https://docs.github.com/rest/reference/pulls#create-a-review-comment-for-a-pull-request-preview-notices).  **Note:** The position value equals the number of lines down from the first \"@@\" hunk header in the file you want to add a comment. The line just below the \"@@\" line is position 1, the next line is position 2, and so on. The position in the diff continues to increase through lines of whitespace and additional hunks until the beginning of a new file.  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.
    Future<Response<PullRequestReviewComment>> pullsCreateReviewComment(
        String owner,
        String repo,
        int pullNumber, { 
        InlineObject135 inlineObject135,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/comments'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject135) as Serializer<InlineObject135>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject135);
        final jsoninlineObject135 = json.encode(serializedBody);
        bodyData = jsoninlineObject135;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'post'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReviewComment) as Serializer<PullRequestReviewComment>;
            final data = _serializers.deserializeWith<PullRequestReviewComment>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReviewComment>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Delete a pending review for a pull request
    ///
    /// 
    Future<Response<PullRequestReview>> pullsDeletePendingReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString()).replaceAll('{' r'review_id' '}', reviewId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'delete'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReview) as Serializer<PullRequestReview>;
            final data = _serializers.deserializeWith<PullRequestReview>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReview>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Delete a review comment for a pull request
    ///
    /// Deletes a review comment.
    Future<Response<void>> pullsDeleteReviewComment(
        String owner,
        String repo,
        int commentId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/comments/{comment_id}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'comment_id' '}', commentId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'delete'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        );
    }

    /// Dismiss a review for a pull request
    ///
    /// **Note:** To dismiss a pull request review on a [protected branch](https://docs.github.com/rest/reference/repos#branches), you must be a repository administrator or be included in the list of people or teams who can dismiss pull request reviews.
    Future<Response<PullRequestReview>> pullsDismissReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId, { 
        InlineObject141 inlineObject141,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/dismissals'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString()).replaceAll('{' r'review_id' '}', reviewId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject141) as Serializer<InlineObject141>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject141);
        final jsoninlineObject141 = json.encode(serializedBody);
        bodyData = jsoninlineObject141;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReview) as Serializer<PullRequestReview>;
            final data = _serializers.deserializeWith<PullRequestReview>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReview>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Get a pull request
    ///
    /// Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists details of a pull request by providing its number.  When you get, [create](https://docs.github.com/rest/reference/pulls/#create-a-pull-request), or [edit](https://docs.github.com/rest/reference/pulls#update-a-pull-request) a pull request, GitHub creates a merge commit to test whether the pull request can be automatically merged into the base branch. This test commit is not added to the base branch or the head branch. You can review the status of the test commit using the `mergeable` key. For more information, see \"[Checking mergeability of pull requests](https://docs.github.com/rest/guides/getting-started-with-the-git-database-api#checking-mergeability-of-pull-requests)\".  The value of the `mergeable` attribute can be `true`, `false`, or `null`. If the value is `null`, then GitHub has started a background job to compute the mergeability. After giving the job time to complete, resubmit the request. When the job finishes, you will see a non-`null` value for the `mergeable` attribute in the response. If `mergeable` is `true`, then `merge_commit_sha` will be the SHA of the _test_ merge commit.  The value of the `merge_commit_sha` attribute changes depending on the state of the pull request. Before merging a pull request, the `merge_commit_sha` attribute holds the SHA of the _test_ merge commit. After merging a pull request, the `merge_commit_sha` attribute changes depending on how you merged the pull request:  *   If merged as a [merge commit](https://help.github.com/articles/about-merge-methods-on-github/), `merge_commit_sha` represents the SHA of the merge commit. *   If merged via a [squash](https://help.github.com/articles/about-merge-methods-on-github/#squashing-your-merge-commits), `merge_commit_sha` represents the SHA of the squashed commit on the base branch. *   If [rebased](https://help.github.com/articles/about-merge-methods-on-github/#rebasing-and-merging-your-commits), `merge_commit_sha` represents the commit that the base branch was updated to.  Pass the appropriate [media type](https://docs.github.com/rest/overview/media-types/#commits-commit-comparison-and-pull-requests) to fetch diff and patch formats.
    Future<Response<PullRequest>> pullsGet(
        String owner,
        String repo,
        int pullNumber, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequest) as Serializer<PullRequest>;
            final data = _serializers.deserializeWith<PullRequest>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequest>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Get a review for a pull request
    ///
    /// 
    Future<Response<PullRequestReview>> pullsGetReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString()).replaceAll('{' r'review_id' '}', reviewId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReview) as Serializer<PullRequestReview>;
            final data = _serializers.deserializeWith<PullRequestReview>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReview>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Get a review comment for a pull request
    ///
    /// Provides details for a review comment.
    Future<Response<PullRequestReviewComment>> pullsGetReviewComment(
        String owner,
        String repo,
        int commentId, { 
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/comments/{comment_id}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'comment_id' '}', commentId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReviewComment) as Serializer<PullRequestReviewComment>;
            final data = _serializers.deserializeWith<PullRequestReviewComment>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReviewComment>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List pull requests
    ///
    /// Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    Future<Response<BuiltList<PullRequestSimple>>> pullsList(
        String owner,
        String repo, { 
        String state,
        String head,
        String base,
        String sort,
        String direction,
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'state'] = state;
        queryParams[r'head'] = head;
        queryParams[r'base'] = base;
        queryParams[r'sort'] = sort;
        queryParams[r'direction'] = direction;
        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(PullRequestSimple)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<PullRequestSimple>;

            return Response<BuiltList<PullRequestSimple>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List comments for a pull request review
    ///
    /// List comments for a specific pull request review.
    Future<Response<BuiltList<ReviewComment>>> pullsListCommentsForReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/comments'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString()).replaceAll('{' r'review_id' '}', reviewId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(ReviewComment)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<ReviewComment>;

            return Response<BuiltList<ReviewComment>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List commits on a pull request
    ///
    /// Lists a maximum of 250 commits for a pull request. To receive a complete commit list for pull requests with more than 250 commits, use the [List commits](https://docs.github.com/rest/reference/repos#list-commits) endpoint.
    Future<Response<BuiltList<Commit>>> pullsListCommits(
        String owner,
        String repo,
        int pullNumber, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/commits'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(Commit)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<Commit>;

            return Response<BuiltList<Commit>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List pull requests files
    ///
    /// **Note:** Responses include a maximum of 3000 files. The paginated response returns 30 files per page by default.
    Future<Response<BuiltList<DiffEntry>>> pullsListFiles(
        String owner,
        String repo,
        int pullNumber, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/files'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(DiffEntry)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<DiffEntry>;

            return Response<BuiltList<DiffEntry>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List requested reviewers for a pull request
    ///
    /// 
    Future<Response<PullRequestReviewRequest>> pullsListRequestedReviewers(
        String owner,
        String repo,
        int pullNumber, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReviewRequest) as Serializer<PullRequestReviewRequest>;
            final data = _serializers.deserializeWith<PullRequestReviewRequest>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReviewRequest>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List review comments on a pull request
    ///
    /// Lists all review comments for a pull request. By default, review comments are in ascending order by ID.
    Future<Response<BuiltList<PullRequestReviewComment>>> pullsListReviewComments(
        String owner,
        String repo,
        int pullNumber, { 
        String sort,
        String direction,
        String since,
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/comments'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'sort'] = sort;
        queryParams[r'direction'] = direction;
        queryParams[r'since'] = since;
        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(PullRequestReviewComment)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<PullRequestReviewComment>;

            return Response<BuiltList<PullRequestReviewComment>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List review comments in a repository
    ///
    /// Lists review comments for all pull requests in a repository. By default, review comments are in ascending order by ID.
    Future<Response<BuiltList<PullRequestReviewComment>>> pullsListReviewCommentsForRepo(
        String owner,
        String repo, { 
        String sort,
        String direction,
        String since,
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/comments'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'sort'] = sort;
        queryParams[r'direction'] = direction;
        queryParams[r'since'] = since;
        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(PullRequestReviewComment)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<PullRequestReviewComment>;

            return Response<BuiltList<PullRequestReviewComment>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// List reviews for a pull request
    ///
    /// The list of reviews returns in chronological order.
    Future<Response<BuiltList<PullRequestReview>>> pullsListReviews(
        String owner,
        String repo,
        int pullNumber, { 
        int perPage,
        int page,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/reviews'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams[r'per_page'] = perPage;
        queryParams[r'page'] = page;
        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[];

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'get'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            const type = FullType(BuiltList, [FullType(PullRequestReview)]);
            final data = _serializers.deserialize(
                response.data is String
                ? jsonDecode(response.data as String)
                : response.data,
                specifiedType: type,
            ) as BuiltList<PullRequestReview>;

            return Response<BuiltList<PullRequestReview>>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Merge a pull request
    ///
    /// This endpoint triggers [notifications](https://docs.github.com/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-abuse-rate-limits)\" for details.
    Future<Response<PullRequestMergeResult>> pullsMerge(
        String owner,
        String repo,
        int pullNumber, { 
        InlineObject137 inlineObject137,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/merge'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject137) as Serializer<InlineObject137>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject137);
        final jsoninlineObject137 = json.encode(serializedBody);
        bodyData = jsoninlineObject137;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestMergeResult) as Serializer<PullRequestMergeResult>;
            final data = _serializers.deserializeWith<PullRequestMergeResult>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestMergeResult>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Remove requested reviewers from a pull request
    ///
    /// 
    Future<Response<void>> pullsRemoveRequestedReviewers(
        String owner,
        String repo,
        int pullNumber, { 
        InlineObject138 inlineObject138,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject138) as Serializer<InlineObject138>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject138);
        final jsoninlineObject138 = json.encode(serializedBody);
        bodyData = jsoninlineObject138;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'delete'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        );
    }

    /// Request reviewers for a pull request
    ///
    /// This endpoint triggers [notifications](https://docs.github.com/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-abuse-rate-limits)\" for details.
    Future<Response<PullRequestSimple>> pullsRequestReviewers(
        String owner,
        String repo,
        int pullNumber, { 
        UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(UNKNOWN_BASE_TYPE) as Serializer<UNKNOWN_BASE_TYPE>;
        final serializedBody = _serializers.serializeWith(bodySerializer, UNKNOWN_BASE_TYPE);
        final jsonUNKNOWN_BASE_TYPE = json.encode(serializedBody);
        bodyData = jsonUNKNOWN_BASE_TYPE;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'post'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestSimple) as Serializer<PullRequestSimple>;
            final data = _serializers.deserializeWith<PullRequestSimple>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestSimple>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Submit a review for a pull request
    ///
    /// 
    Future<Response<PullRequestReview>> pullsSubmitReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId, { 
        InlineObject142 inlineObject142,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/events'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString()).replaceAll('{' r'review_id' '}', reviewId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject142) as Serializer<InlineObject142>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject142);
        final jsoninlineObject142 = json.encode(serializedBody);
        bodyData = jsoninlineObject142;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'post'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReview) as Serializer<PullRequestReview>;
            final data = _serializers.deserializeWith<PullRequestReview>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReview>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Update a pull request
    ///
    /// Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To open or update a pull request in a public repository, you must have write access to the head or the source branch. For organization-owned repositories, you must be a member of the organization that owns the repository to open or update a pull request.
    Future<Response<PullRequest>> pullsUpdate(
        String owner,
        String repo,
        int pullNumber, { 
        InlineObject134 inlineObject134,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject134) as Serializer<InlineObject134>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject134);
        final jsoninlineObject134 = json.encode(serializedBody);
        bodyData = jsoninlineObject134;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'patch'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequest) as Serializer<PullRequest>;
            final data = _serializers.deserializeWith<PullRequest>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequest>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Update a pull request branch
    ///
    /// Updates the pull request branch with the latest upstream changes by merging HEAD from the base branch into the pull request branch.
    Future<Response<InlineResponse2021>> pullsUpdateBranch(
        String owner,
        String repo,
        int pullNumber, { 
        InlineObject143 inlineObject143,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/update-branch'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject143) as Serializer<InlineObject143>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject143);
        final jsoninlineObject143 = json.encode(serializedBody);
        bodyData = jsoninlineObject143;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(InlineResponse2021) as Serializer<InlineResponse2021>;
            final data = _serializers.deserializeWith<InlineResponse2021>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<InlineResponse2021>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Update a review for a pull request
    ///
    /// Update the review summary comment with new text.
    Future<Response<PullRequestReview>> pullsUpdateReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId, { 
        InlineObject140 inlineObject140,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'pull_number' '}', pullNumber.toString()).replaceAll('{' r'review_id' '}', reviewId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject140) as Serializer<InlineObject140>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject140);
        final jsoninlineObject140 = json.encode(serializedBody);
        bodyData = jsoninlineObject140;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'put'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReview) as Serializer<PullRequestReview>;
            final data = _serializers.deserializeWith<PullRequestReview>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReview>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

    /// Update a review comment for a pull request
    ///
    /// Enables you to edit a review comment.
    Future<Response<PullRequestReviewComment>> pullsUpdateReviewComment(
        String owner,
        String repo,
        int commentId, { 
        InlineObject132 inlineObject132,
        CancelToken cancelToken,
        Map<String, dynamic> headers,
        Map<String, dynamic> extra,
        ValidateStatus validateStatus,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
    }) async {
        final String _path = '/repos/{owner}/{repo}/pulls/comments/{comment_id}'.replaceAll('{' r'owner' '}', owner.toString()).replaceAll('{' r'repo' '}', repo.toString()).replaceAll('{' r'comment_id' '}', commentId.toString());

        final queryParams = <String, dynamic>{};
        final headerParams = <String, dynamic>{ 
            if (headers != null) ...headers,
        };
        dynamic bodyData;

        queryParams.removeWhere((key, dynamic value) => value == null);
        headerParams.removeWhere((key, dynamic value) => value == null);

        final contentTypes = <String>[
            'application/json',
        ];

        final bodySerializer = _serializers.serializerForType(InlineObject132) as Serializer<InlineObject132>;
        final serializedBody = _serializers.serializeWith(bodySerializer, inlineObject132);
        final jsoninlineObject132 = json.encode(serializedBody);
        bodyData = jsoninlineObject132;

        return _dio.request<dynamic>(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
                method: 'patch'.toUpperCase(),
                headers: headerParams,
                extra: <String, dynamic>{
                    'secure': <Map<String, String>>[],
                    if (extra != null) ...extra,
                },
                validateStatus: validateStatus,
                contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
        ).then((response) {
            final serializer = _serializers.serializerForType(PullRequestReviewComment) as Serializer<PullRequestReviewComment>;
            final data = _serializers.deserializeWith<PullRequestReviewComment>(
                serializer,
                response.data is String ? jsonDecode(response.data as String) : response.data,
            );

            return Response<PullRequestReviewComment>(
                data: data,
                headers: response.headers,
                isRedirect: response.isRedirect,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
        });
    }

}

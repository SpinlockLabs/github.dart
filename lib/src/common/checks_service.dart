import 'dart:convert';

import 'package:github/github.dart';
import 'package:github/src/util.dart';
import 'package:meta/meta.dart';

const _previewHeader = 'application/vnd.github.antiope-preview+json';

/// Contains methods to interact with the Checks API.
///
/// API docs: https://developer.github.com/v3/checks/
class ChecksService extends Service {
  /// Methods to interact with Check Runs.
  ///
  /// API docs: https://developer.github.com/v3/checks/runs/
  final CheckRunsService checkRuns;
  ChecksService(GitHub github)
      : checkRuns = CheckRunsService._(github),
        super(github);

  // TODO: implement Check Suites methods https://developer.github.com/v3/checks/suites/
}

class CheckRunsService extends Service {
  CheckRunsService._(GitHub github) : super(github);

  /// Creates a new check run for a specific commit in a repository.
  /// Your GitHub App must have the `checks:write` permission to create check runs.
  /// * [name]: The name of the check. For example, "code-coverage".
  /// * [headSha]: The SHA of the commit.
  /// * [detailsUrl]: The URL of the integrator's site that has the full details of the check.
  /// * [externalId]: A reference for the run on the integrator's system.
  /// * [status]: The current status. Can be one of queued, in_progress, or completed. Default: queued.
  /// * [startedAt]: The time that the check run began.
  /// * [conclusion]: **Required if you provide completed_at or a status of completed.** The final conclusion of the check.
  /// When the conclusion is action_required, additional details should be provided on the site specified by details_url. **Note**: Providing conclusion will automatically set the status parameter to completed.
  /// * [completedAt]: The time the check completed.
  /// * [output]: Check runs can accept a variety of data in the output object, including a title and summary and can optionally provide descriptive details about the run.
  /// * [actions]: Displays a button on GitHub that can be clicked to alert your app to do additional tasks.
  /// For example, a code linting app can display a button that automatically fixes detected errors.
  /// The button created in this object is displayed after the check run completes.
  /// When a user clicks the button, GitHub sends the check_run.requested_action webhook to your app.
  /// A maximum of three actions are accepted.
  ///
  /// API docs: https://developer.github.com/v3/checks/runs/#create-a-check-run
  Future<CheckRun> createCheckRun(
    RepositorySlug slug, {
    @required String name,
    @required String headSha,
    String detailsUrl,
    String externalId,
    CheckRunStatus status = CheckRunStatus.queued,
    DateTime startedAt,
    CheckRunConclusion conclusion,
    DateTime completedAt,
    CheckRunOutput output,
    List<CheckRunAction> actions,
  }) async {
    assert(conclusion != null ||
        (completedAt == null && status != CheckRunStatus.completed));
    assert(actions == null || actions.length <= 3);
    return github.postJSON<Map<String, dynamic>, CheckRun>(
      '/repos/${slug.fullName}/check-runs',
      statusCode: StatusCodes.CREATED,
      preview: _previewHeader,
      body: jsonEncode(createNonNullMap(<String, dynamic>{
        'name': name,
        'head_sha': headSha,
        'details_url': detailsUrl,
        'external_id': externalId,
        'status': status,
        'started_at': dateToGitHubIso8601(startedAt),
        'conclusion': conclusion,
        'completed_at': dateToGitHubIso8601(completedAt),
        'output': output,
        'actions': actions,
      })),
      convert: (i) => CheckRun.fromJson(i),
    );
  }

  /// Updates a check run for a specific commit in a repository.
  /// Your GitHub App must have the `checks:write` permission to edit check runs.
  ///
  /// * [name]: The name of the check. For example, "code-coverage".
  /// * [detailsUrl]: The URL of the integrator's site that has the full details of the check.
  /// * [externalId]: A reference for the run on the integrator's system.
  /// * [status]: The current status. Can be one of queued, in_progress, or completed. Default: queued.
  /// * [startedAt]: The time that the check run began.
  /// * [conclusion]: **Required if you provide completed_at or a status of completed.** The final conclusion of the check.
  /// When the conclusion is action_required, additional details should be provided on the site specified by details_url. **Note**: Providing conclusion will automatically set the status parameter to completed.
  /// * [completedAt]: The time the check completed.
  /// * [output]: Check runs can accept a variety of data in the output object, including a title and summary and can optionally provide descriptive details about the run.
  /// * [actions]: Possible further actions the integrator can perform, which a user may trigger. Each action includes a label, identifier and description. A maximum of three actions are accepted.
  ///
  /// API docs: https://developer.github.com/v3/checks/runs/#update-a-check-run
  Future<CheckRun> updateCheckRun(
    RepositorySlug slug,
    CheckRun checkRunToUpdate, {
    String name,
    String detailsUrl,
    String externalId,
    DateTime startedAt,
    CheckRunStatus status = CheckRunStatus.queued,
    CheckRunConclusion conclusion,
    DateTime completedAt,
    CheckRunOutput output,
    List<CheckRunAction> actions,
  }) async {
    assert(conclusion != null ||
        (completedAt == null && status != CheckRunStatus.completed));
    assert(actions == null || actions.length <= 3);
    return github.requestJson<Map<String, dynamic>, CheckRun>(
      'PATCH',
      '/repos/${slug.fullName}/check-runs/${checkRunToUpdate.id}',
      statusCode: StatusCodes.OK,
      preview: _previewHeader,
      body: jsonEncode(createNonNullMap(<String, dynamic>{
        'name': name,
        'details_url': detailsUrl,
        'external_id': externalId,
        'started_at': dateToGitHubIso8601(startedAt),
        'status': status,
        'conclusion': conclusion,
        'completed_at': dateToGitHubIso8601(completedAt),
        'output': output,
        'actions': actions,
      })),
      convert: (i) => CheckRun.fromJson(i),
    );
  }

  /// Lists check runs for a commit [ref].
  /// The `[ref]` can be a SHA, branch name, or a tag name.
  /// GitHub Apps must have the `checks:read` permission on a private repository or pull access to a public repository to get check runs.
  /// OAuth Apps and authenticated users must have the `repo` scope to get check runs in a private repository.
  /// * [checkName]: returns check runs with the specified name.
  /// * [status]: returns check runs with the specified status.
  /// * [filter]: filters check runs by their completed_at timestamp. Can be one of latest (returning the most recent check runs) or all. Default: latest.
  ///
  /// API docs: https://developer.github.com/v3/checks/runs/#list-check-runs-for-a-specific-ref
  Stream<CheckRun> listCheckRunsForRef(
    RepositorySlug slug, {
    @required String ref,
    String checkName,
    CheckRunStatus status,
    CheckRunFilter filter,
  }) {
    ArgumentError.checkNotNull(ref);
    return PaginationHelper(github).objects<Map<String, dynamic>, CheckRun>(
      'GET',
      'repos/$slug/commits/$ref/check-runs',
      (input) => CheckRun.fromJson(input),
      statusCode: StatusCodes.OK,
      preview: _previewHeader,
      params: createNonNullMap({
        'check_name': checkName,
        'filter': filter,
        'status': status,
      }),
      arrayKey: 'check_runs',
    );
  }

  /// Lists check runs for a check suite using its [checkSuiteId].
  /// GitHub Apps must have the `checks:read` permission on a private repository or pull access to a public repository to get check runs.
  /// OAuth Apps and authenticated users must have the `repo` scope to get check runs in a private repository.
  /// * [checkName]: returns check runs with the specified name.
  /// * [status]: returns check runs with the specified status.
  /// * [filter]: filters check runs by their completed_at timestamp. Can be one of latest (returning the most recent check runs) or all. Default: latest.
  ///
  /// API docs: https://developer.github.com/v3/checks/runs/#list-check-runs-in-a-check-suite
  Stream<CheckRun> listCheckRunsInSuite(
    RepositorySlug slug, {
    @required int checkSuiteId,
    String checkName,
    CheckRunStatus status,
    CheckRunFilter filter,
  }) {
    ArgumentError.checkNotNull(checkSuiteId);
    return PaginationHelper(github).objects<Map<String, dynamic>, CheckRun>(
      'GET',
      'repos/$slug/check-suites/$checkSuiteId/check-runs',
      (input) => CheckRun.fromJson(input),
      statusCode: StatusCodes.OK,
      preview: _previewHeader,
      params: createNonNullMap({
        'check_name': checkName,
        'status': status,
        'filter': filter,
      }),
      arrayKey: 'check_runs',
    );
  }

  /// Gets a single check run using its [checkRunId].
  /// GitHub Apps must have the `checks:read` permission on a private repository or pull access to a public repository to get check runs.
  /// OAuth Apps and authenticated users must have the `repo` scope to get check runs in a private repository.
  ///
  /// API docs: https://developer.github.com/v3/checks/runs/#get-a-single-check-run
  Future<CheckRun> getCheckRun(
    RepositorySlug slug, {
    @required int checkRunId,
  }) {
    ArgumentError.checkNotNull(checkRunId);
    return github.getJSON<Map<String, dynamic>, CheckRun>(
      'repos/${slug.fullName}/check-runs/$checkRunId',
      preview: _previewHeader,
      statusCode: StatusCodes.OK,
      convert: (i) => CheckRun.fromJson(i),
    );
  }

  /// Lists annotations for a check run.
  /// GitHub Apps must have the `checks:read` permission on a private repository or pull access to a public repository to get annotations for a check run.
  /// OAuth Apps and authenticated users must have the `repo` scope to get annotations for a check run in a private repository.
  ///
  /// API docs: https://developer.github.com/v3/checks/runs/#list-annotations-for-a-check-run
  Stream<CheckRunAnnotation> listAnnotationsInCheckRun(
    RepositorySlug slug, {
    @required CheckRun checkRun,
  }) {
    return PaginationHelper(github)
        .objects<Map<String, dynamic>, CheckRunAnnotation>(
      'GET',
      '/repos/${slug.fullName}/check-runs/${checkRun.id}/annotations',
      (i) => CheckRunAnnotation.fromJSON(i),
      statusCode: StatusCodes.OK,
      preview: _previewHeader,
    );
  }
}

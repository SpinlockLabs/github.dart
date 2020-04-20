import 'dart:convert';

import 'package:github/github.dart';
import 'package:github/src/common/util/utils.dart';
import 'package:meta/meta.dart';

const _previewHeader = 'application/vnd.github.antiope-preview+json';

/// Contains methods to interact with the Checks API.
///
/// API docs: https://developer.github.com/v3/checks/
class ChecksService extends Service {
  /// Methods to interact with Check Runs.
  ///
  /// API docs: https://developer.github.com/v3/checks/runs/
  final _CheckRunsService checkRuns;

  /// Methods to interact with Check Suites.
  ///
  /// API docs: https://developer.github.com/v3/checks/suites/
  final _CheckSuitesService checkSuites;

  ChecksService(GitHub github)
      : checkRuns = _CheckRunsService._(github),
        checkSuites = _CheckSuitesService._(github),
        super(github);
}

class _CheckRunsService extends Service {
  _CheckRunsService._(GitHub github) : super(github);

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

class _CheckSuitesService extends Service {
  _CheckSuitesService._(GitHub github) : super(github);

  /// Gets a single check suite using its `id`.
  /// GitHub Apps must have the `checks:read` permission on a private repository or pull access to a public repository to get check suites.
  /// OAuth Apps and authenticated users must have the `repo` scope to get check suites in a private repository.
  ///
  /// API docs: https://developer.github.com/v3/checks/suites/#get-a-single-check-suite
  Future<CheckSuite> getCheckSuite(
    RepositorySlug slug, {
    @required int checkSuiteId,
  }) async {
    ArgumentError.checkNotNull(checkSuiteId);
    return github.requestJson(
      'GET',
      'repos/$slug/check-suites/$checkSuiteId',
      convert: (input) => CheckSuite.fromJson(input),
      preview: _previewHeader,
      statusCode: StatusCodes.OK,
    );
  }

  /// Lists check suites for a commit `[ref]`.
  /// The `[ref]` can be a SHA, branch name, or a tag name.
  /// GitHub Apps must have the `checks:read` permission on a private repository or pull access to a public repository to list check suites.
  /// OAuth Apps and authenticated users must have the `repo` scope to get check suites in a private repository.
  /// * [appId]: Filters check suites by GitHub App id.
  /// * [checkName]: Filters checks suites by the name of the check run.
  ///
  /// API docs: https://developer.github.com/v3/checks/suites/#list-check-suites-for-a-specific-ref
  Stream<CheckSuite> listCheckSuitesForRef(
    RepositorySlug slug, {
    @required String ref,
    int appId,
    String checkName,
  }) {
    ArgumentError.checkNotNull(ref);
    return PaginationHelper(github).objects<Map<String, dynamic>, CheckSuite>(
      'GET',
      'repos/$slug/commits/$ref/check-suites',
      (input) => CheckSuite.fromJson(input),
      preview: _previewHeader,
      params: createNonNullMap({
        'app_id': appId,
        'check_name': checkName,
      }),
      statusCode: StatusCodes.OK,
      arrayKey: 'check_suites',
    );
  }

  /// Changes the default automatic flow when creating check suites.
  /// By default, the CheckSuiteEvent is automatically created each time code is pushed to a repository.
  /// When you disable the automatic creation of check suites, you can manually [Create a check suite](https://developer.github.com/v3/checks/suites/#create-a-check-suite).
  /// You must have admin permissions in the repository to set preferences for check suites.
  /// * [autoTriggerChecks]: Enables or disables automatic creation of CheckSuite events upon pushes to the repository. Enabled by default.
  ///
  /// API docs: https://developer.github.com/v3/checks/suites/#update-repository-preferences-for-check-suites
  Future<List<AutoTriggerChecks>> updatePreferencesForCheckSuites(
    RepositorySlug slug, {
    @required List<AutoTriggerChecks> autoTriggerChecks,
  }) {
    ArgumentError.checkNotNull(autoTriggerChecks);
    return github.requestJson<Map<String, dynamic>, List<AutoTriggerChecks>>(
      'PATCH',
      'repos/$slug/check-suites/preferences',
      statusCode: StatusCodes.OK,
      preview: _previewHeader,
      body: {'auto_trigger_checks': autoTriggerChecks},
      convert: (input) => (input['preferences']['auto_trigger_checks'] as List)
          .map((e) => AutoTriggerChecks.fromJson(e))
          .toList(),
    );
  }

  /// By default, check suites are automatically created when you create a [check run](https://developer.github.com/v3/checks/runs/).
  /// You only need to use this endpoint for manually creating check suites when you've disabled automatic creation using "[Set preferences for check suites on a repository](https://developer.github.com/v3/checks/suites/#set-preferences-for-check-suites-on-a-repository)".
  /// Your GitHub App must have the `checks:write` permission to create check suites.
  /// * [headSha]: The sha of the head commit.
  ///
  /// API docs: https://developer.github.com/v3/checks/suites/#create-a-check-suite
  Future<CheckSuite> createCheckSuite(
    RepositorySlug slug, {
    @required String headSha,
  }) {
    ArgumentError.checkNotNull(headSha);
    return github.requestJson<Map<String, dynamic>, CheckSuite>(
      'POST',
      'repos/$slug/check-suites',
      statusCode: StatusCodes.CREATED,
      preview: _previewHeader,
      params: {'head_sha': headSha},
      convert: (input) => CheckSuite.fromJson(input),
    );
  }

  /// Triggers GitHub to rerequest an existing check suite, without pushing new code to a repository.
  /// This endpoint will trigger the [`check_suite` webhook](https://developer.github.com/v3/activity/events/types/#checksuiteevent) event with the action rerequested.
  /// When a check suite is `rerequested`, its `status` is reset to `queued` and the `conclusion` is cleared.
  /// To rerequest a check suite, your GitHub App must have the `checks:read` permission on a private repository or pull access to a public repository.
  ///
  /// API docs: https://developer.github.com/v3/checks/suites/#rerequest-check-suite
  Future<void> reRequestCheckSuite(
    RepositorySlug slug, {
    @required int checkSuiteId,
  }) {
    ArgumentError.checkNotNull(checkSuiteId);
    return github.request(
      'POST',
      'repos/$slug/check-suites/$checkSuiteId/rerequest',
      statusCode: StatusCodes.CREATED,
      preview: _previewHeader,
    );
  }
}

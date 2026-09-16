// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated from GitHub OpenAPI 2022-11-28 description.

/// Immutable contract metadata for a GitHub REST API operation.
class RestOperationContract {
  final String operationId;
  final String method;
  final String path;
  final List<String> pathParams;
  final List<String> queryParams;
  final List<String> headerParams;
  final bool hasRequestBody;
  final List<String> requestMediaTypes;
  final List<int> successStatuses;
  final bool isMultiSegmentPath;

  const RestOperationContract({
    required this.operationId,
    required this.method,
    required this.path,
    this.pathParams = const [],
    this.queryParams = const [],
    this.headerParams = const [],
    this.hasRequestBody = false,
    this.requestMediaTypes = const [],
    this.successStatuses = const [200],
    this.isMultiSegmentPath = false,
  });
}

/// Catalog of all 2022-11-28 REST operation contracts.
abstract final class RestContracts {
  /// `POST /orgs/{org}/actions/runners/{runner_id}/labels`
  /// Add custom labels to a self-hosted runner for an organization
  static const actionsAddCustomLabelsToSelfHostedRunnerForOrg =
      RestOperationContract(
    operationId: 'actions/add-custom-labels-to-self-hosted-runner-for-org',
    method: 'POST',
    path: '/orgs/{org}/actions/runners/{runner_id}/labels',
    pathParams: ['org', 'runner_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/actions/runners/{runner_id}/labels`
  /// Add custom labels to a self-hosted runner for a repository
  static const actionsAddCustomLabelsToSelfHostedRunnerForRepo =
      RestOperationContract(
    operationId: 'actions/add-custom-labels-to-self-hosted-runner-for-repo',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels',
    pathParams: ['owner', 'repo', 'runner_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}`
  /// Add repository access to a self-hosted runner group in an organization
  static const actionsAddRepoAccessToSelfHostedRunnerGroupInOrg =
      RestOperationContract(
    operationId: 'actions/add-repo-access-to-self-hosted-runner-group-in-org',
    method: 'PUT',
    path:
        '/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'runner_group_id'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/secrets/{secret_name}/repositories/{repository_id}`
  /// Add selected repository to an organization secret
  static const actionsAddSelectedRepoToOrgSecret = RestOperationContract(
    operationId: 'actions/add-selected-repo-to-org-secret',
    method: 'PUT',
    path:
        '/orgs/{org}/actions/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/variables/{name}/repositories/{repository_id}`
  /// Add selected repository to an organization variable
  static const actionsAddSelectedRepoToOrgVariable = RestOperationContract(
    operationId: 'actions/add-selected-repo-to-org-variable',
    method: 'PUT',
    path: '/orgs/{org}/actions/variables/{name}/repositories/{repository_id}',
    pathParams: ['name', 'org', 'repository_id'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/runner-groups/{runner_group_id}/runners/{runner_id}`
  /// Add a self-hosted runner to a group for an organization
  static const actionsAddSelfHostedRunnerToGroupForOrg = RestOperationContract(
    operationId: 'actions/add-self-hosted-runner-to-group-for-org',
    method: 'PUT',
    path:
        '/orgs/{org}/actions/runner-groups/{runner_group_id}/runners/{runner_id}',
    pathParams: ['org', 'runner_group_id', 'runner_id'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/actions/runs/{run_id}/approve`
  /// Approve a workflow run for a fork pull request
  static const actionsApproveWorkflowRun = RestOperationContract(
    operationId: 'actions/approve-workflow-run',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/approve',
    pathParams: ['owner', 'repo', 'run_id'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/actions/runs/{run_id}/cancel`
  /// Cancel a workflow run
  static const actionsCancelWorkflowRun = RestOperationContract(
    operationId: 'actions/cancel-workflow-run',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/cancel',
    pathParams: ['owner', 'repo', 'run_id'],
    successStatuses: [202],
  );

  /// `POST /repos/{owner}/{repo}/environments/{environment_name}/variables`
  /// Create an environment variable
  static const actionsCreateEnvironmentVariable = RestOperationContract(
    operationId: 'actions/create-environment-variable',
    method: 'POST',
    path: '/repos/{owner}/{repo}/environments/{environment_name}/variables',
    pathParams: ['environment_name', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/actions/hosted-runners`
  /// Create a GitHub-hosted runner for an organization
  static const actionsCreateHostedRunnerForOrg = RestOperationContract(
    operationId: 'actions/create-hosted-runner-for-org',
    method: 'POST',
    path: '/orgs/{org}/actions/hosted-runners',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `PUT /repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}`
  /// Create or update an environment secret
  static const actionsCreateOrUpdateEnvironmentSecret = RestOperationContract(
    operationId: 'actions/create-or-update-environment-secret',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}',
    pathParams: ['environment_name', 'owner', 'repo', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `PUT /orgs/{org}/actions/secrets/{secret_name}`
  /// Create or update an organization secret
  static const actionsCreateOrUpdateOrgSecret = RestOperationContract(
    operationId: 'actions/create-or-update-org-secret',
    method: 'PUT',
    path: '/orgs/{org}/actions/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/secrets/{secret_name}`
  /// Create or update a repository secret
  static const actionsCreateOrUpdateRepoSecret = RestOperationContract(
    operationId: 'actions/create-or-update-repo-secret',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `POST /orgs/{org}/actions/variables`
  /// Create an organization variable
  static const actionsCreateOrgVariable = RestOperationContract(
    operationId: 'actions/create-org-variable',
    method: 'POST',
    path: '/orgs/{org}/actions/variables',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/actions/runners/registration-token`
  /// Create a registration token for an organization
  static const actionsCreateRegistrationTokenForOrg = RestOperationContract(
    operationId: 'actions/create-registration-token-for-org',
    method: 'POST',
    path: '/orgs/{org}/actions/runners/registration-token',
    pathParams: ['org'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/actions/runners/registration-token`
  /// Create a registration token for a repository
  static const actionsCreateRegistrationTokenForRepo = RestOperationContract(
    operationId: 'actions/create-registration-token-for-repo',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runners/registration-token',
    pathParams: ['owner', 'repo'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/actions/runners/remove-token`
  /// Create a remove token for an organization
  static const actionsCreateRemoveTokenForOrg = RestOperationContract(
    operationId: 'actions/create-remove-token-for-org',
    method: 'POST',
    path: '/orgs/{org}/actions/runners/remove-token',
    pathParams: ['org'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/actions/runners/remove-token`
  /// Create a remove token for a repository
  static const actionsCreateRemoveTokenForRepo = RestOperationContract(
    operationId: 'actions/create-remove-token-for-repo',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runners/remove-token',
    pathParams: ['owner', 'repo'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/actions/variables`
  /// Create a repository variable
  static const actionsCreateRepoVariable = RestOperationContract(
    operationId: 'actions/create-repo-variable',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/variables',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/actions/runner-groups`
  /// Create a self-hosted runner group for an organization
  static const actionsCreateSelfHostedRunnerGroupForOrg = RestOperationContract(
    operationId: 'actions/create-self-hosted-runner-group-for-org',
    method: 'POST',
    path: '/orgs/{org}/actions/runner-groups',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/actions/workflows/{workflow_id}/dispatches`
  /// Create a workflow dispatch event
  static const actionsCreateWorkflowDispatch = RestOperationContract(
    operationId: 'actions/create-workflow-dispatch',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/dispatches',
    pathParams: ['owner', 'repo', 'workflow_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 204],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/caches/{cache_id}`
  /// Delete a GitHub Actions cache for a repository (using a cache ID)
  static const actionsDeleteActionsCacheById = RestOperationContract(
    operationId: 'actions/delete-actions-cache-by-id',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/caches/{cache_id}',
    pathParams: ['cache_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/caches`
  /// Delete GitHub Actions caches for a repository (using a cache key)
  static const actionsDeleteActionsCacheByKey = RestOperationContract(
    operationId: 'actions/delete-actions-cache-by-key',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/caches',
    pathParams: ['owner', 'repo'],
    queryParams: ['key', 'ref'],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/artifacts/{artifact_id}`
  /// Delete an artifact
  static const actionsDeleteArtifact = RestOperationContract(
    operationId: 'actions/delete-artifact',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/artifacts/{artifact_id}',
    pathParams: ['artifact_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}`
  /// Delete a custom image from the organization
  static const actionsDeleteCustomImageFromOrg = RestOperationContract(
    operationId: 'actions/delete-custom-image-from-org',
    method: 'DELETE',
    path:
        '/orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}',
    pathParams: ['image_definition_id', 'org'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}/versions/{version}`
  /// Delete an image version of custom image from the organization
  static const actionsDeleteCustomImageVersionFromOrg = RestOperationContract(
    operationId: 'actions/delete-custom-image-version-from-org',
    method: 'DELETE',
    path:
        '/orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}/versions/{version}',
    pathParams: ['image_definition_id', 'org', 'version'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}`
  /// Delete an environment secret
  static const actionsDeleteEnvironmentSecret = RestOperationContract(
    operationId: 'actions/delete-environment-secret',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}',
    pathParams: ['environment_name', 'owner', 'repo', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/environments/{environment_name}/variables/{name}`
  /// Delete an environment variable
  static const actionsDeleteEnvironmentVariable = RestOperationContract(
    operationId: 'actions/delete-environment-variable',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/variables/{name}',
    pathParams: ['environment_name', 'name', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/hosted-runners/{hosted_runner_id}`
  /// Delete a GitHub-hosted runner for an organization
  static const actionsDeleteHostedRunnerForOrg = RestOperationContract(
    operationId: 'actions/delete-hosted-runner-for-org',
    method: 'DELETE',
    path: '/orgs/{org}/actions/hosted-runners/{hosted_runner_id}',
    pathParams: ['hosted_runner_id', 'org'],
    successStatuses: [202],
  );

  /// `DELETE /orgs/{org}/actions/secrets/{secret_name}`
  /// Delete an organization secret
  static const actionsDeleteOrgSecret = RestOperationContract(
    operationId: 'actions/delete-org-secret',
    method: 'DELETE',
    path: '/orgs/{org}/actions/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/variables/{name}`
  /// Delete an organization variable
  static const actionsDeleteOrgVariable = RestOperationContract(
    operationId: 'actions/delete-org-variable',
    method: 'DELETE',
    path: '/orgs/{org}/actions/variables/{name}',
    pathParams: ['name', 'org'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/secrets/{secret_name}`
  /// Delete a repository secret
  static const actionsDeleteRepoSecret = RestOperationContract(
    operationId: 'actions/delete-repo-secret',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/variables/{name}`
  /// Delete a repository variable
  static const actionsDeleteRepoVariable = RestOperationContract(
    operationId: 'actions/delete-repo-variable',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/variables/{name}',
    pathParams: ['name', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/runners/{runner_id}`
  /// Delete a self-hosted runner from an organization
  static const actionsDeleteSelfHostedRunnerFromOrg = RestOperationContract(
    operationId: 'actions/delete-self-hosted-runner-from-org',
    method: 'DELETE',
    path: '/orgs/{org}/actions/runners/{runner_id}',
    pathParams: ['org', 'runner_id'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/runners/{runner_id}`
  /// Delete a self-hosted runner from a repository
  static const actionsDeleteSelfHostedRunnerFromRepo = RestOperationContract(
    operationId: 'actions/delete-self-hosted-runner-from-repo',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/runners/{runner_id}',
    pathParams: ['owner', 'repo', 'runner_id'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/runner-groups/{runner_group_id}`
  /// Delete a self-hosted runner group from an organization
  static const actionsDeleteSelfHostedRunnerGroupFromOrg =
      RestOperationContract(
    operationId: 'actions/delete-self-hosted-runner-group-from-org',
    method: 'DELETE',
    path: '/orgs/{org}/actions/runner-groups/{runner_group_id}',
    pathParams: ['org', 'runner_group_id'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/runs/{run_id}`
  /// Delete a workflow run
  static const actionsDeleteWorkflowRun = RestOperationContract(
    operationId: 'actions/delete-workflow-run',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}',
    pathParams: ['owner', 'repo', 'run_id'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/runs/{run_id}/logs`
  /// Delete workflow run logs
  static const actionsDeleteWorkflowRunLogs = RestOperationContract(
    operationId: 'actions/delete-workflow-run-logs',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/logs',
    pathParams: ['owner', 'repo', 'run_id'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/permissions/repositories/{repository_id}`
  /// Disable a selected repository for GitHub Actions in an organization
  static const actionsDisableSelectedRepositoryGithubActionsOrganization =
      RestOperationContract(
    operationId:
        'actions/disable-selected-repository-github-actions-organization',
    method: 'DELETE',
    path: '/orgs/{org}/actions/permissions/repositories/{repository_id}',
    pathParams: ['org', 'repository_id'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/permissions/self-hosted-runners/repositories/{repository_id}`
  /// Remove a repository from the list of repositories allowed to use self-hosted runners in an organization
  static const actionsDisableSelectedRepositorySelfHostedRunnersOrganization =
      RestOperationContract(
    operationId:
        'actions/disable-selected-repository-self-hosted-runners-organization',
    method: 'DELETE',
    path:
        '/orgs/{org}/actions/permissions/self-hosted-runners/repositories/{repository_id}',
    pathParams: ['org', 'repository_id'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/workflows/{workflow_id}/disable`
  /// Disable a workflow
  static const actionsDisableWorkflow = RestOperationContract(
    operationId: 'actions/disable-workflow',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/disable',
    pathParams: ['owner', 'repo', 'workflow_id'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/actions/artifacts/{artifact_id}/{archive_format}`
  /// Download an artifact
  static const actionsDownloadArtifact = RestOperationContract(
    operationId: 'actions/download-artifact',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/actions/artifacts/{artifact_id}/{archive_format}',
    pathParams: ['archive_format', 'artifact_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/actions/jobs/{job_id}/logs`
  /// Download job logs for a workflow run
  static const actionsDownloadJobLogsForWorkflowRun = RestOperationContract(
    operationId: 'actions/download-job-logs-for-workflow-run',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/jobs/{job_id}/logs',
    pathParams: ['job_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}/logs`
  /// Download workflow run attempt logs
  static const actionsDownloadWorkflowRunAttemptLogs = RestOperationContract(
    operationId: 'actions/download-workflow-run-attempt-logs',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}/logs',
    pathParams: ['attempt_number', 'owner', 'repo', 'run_id'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/logs`
  /// Download workflow run logs
  static const actionsDownloadWorkflowRunLogs = RestOperationContract(
    operationId: 'actions/download-workflow-run-logs',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/logs',
    pathParams: ['owner', 'repo', 'run_id'],
  );

  /// `PUT /orgs/{org}/actions/permissions/repositories/{repository_id}`
  /// Enable a selected repository for GitHub Actions in an organization
  static const actionsEnableSelectedRepositoryGithubActionsOrganization =
      RestOperationContract(
    operationId:
        'actions/enable-selected-repository-github-actions-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions/repositories/{repository_id}',
    pathParams: ['org', 'repository_id'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/permissions/self-hosted-runners/repositories/{repository_id}`
  /// Add a repository to the list of repositories allowed to use self-hosted runners in an organization
  static const actionsEnableSelectedRepositorySelfHostedRunnersOrganization =
      RestOperationContract(
    operationId:
        'actions/enable-selected-repository-self-hosted-runners-organization',
    method: 'PUT',
    path:
        '/orgs/{org}/actions/permissions/self-hosted-runners/repositories/{repository_id}',
    pathParams: ['org', 'repository_id'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/workflows/{workflow_id}/enable`
  /// Enable a workflow
  static const actionsEnableWorkflow = RestOperationContract(
    operationId: 'actions/enable-workflow',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/enable',
    pathParams: ['owner', 'repo', 'workflow_id'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/actions/runs/{run_id}/force-cancel`
  /// Force cancel a workflow run
  static const actionsForceCancelWorkflowRun = RestOperationContract(
    operationId: 'actions/force-cancel-workflow-run',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/force-cancel',
    pathParams: ['owner', 'repo', 'run_id'],
    successStatuses: [202],
  );

  /// `POST /orgs/{org}/actions/runners/generate-jitconfig`
  /// Create configuration for a just-in-time runner for an organization
  static const actionsGenerateRunnerJitconfigForOrg = RestOperationContract(
    operationId: 'actions/generate-runner-jitconfig-for-org',
    method: 'POST',
    path: '/orgs/{org}/actions/runners/generate-jitconfig',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/actions/runners/generate-jitconfig`
  /// Create configuration for a just-in-time runner for a repository
  static const actionsGenerateRunnerJitconfigForRepo = RestOperationContract(
    operationId: 'actions/generate-runner-jitconfig-for-repo',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runners/generate-jitconfig',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `GET /repos/{owner}/{repo}/actions/caches`
  /// List GitHub Actions caches for a repository
  static const actionsGetActionsCacheList = RestOperationContract(
    operationId: 'actions/get-actions-cache-list',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/caches',
    pathParams: ['owner', 'repo'],
    queryParams: ['direction', 'key', 'page', 'per_page', 'ref', 'sort'],
  );

  /// `GET /enterprises/{enterprise}/actions/cache/retention-limit`
  /// Get GitHub Actions cache retention limit for an enterprise
  static const actionsGetActionsCacheRetentionLimitForEnterprise =
      RestOperationContract(
    operationId: 'actions/get-actions-cache-retention-limit-for-enterprise',
    method: 'GET',
    path: '/enterprises/{enterprise}/actions/cache/retention-limit',
    pathParams: ['enterprise'],
  );

  /// `GET /organizations/{org}/actions/cache/retention-limit`
  /// Get GitHub Actions cache retention limit for an organization
  static const actionsGetActionsCacheRetentionLimitForOrganization =
      RestOperationContract(
    operationId: 'actions/get-actions-cache-retention-limit-for-organization',
    method: 'GET',
    path: '/organizations/{org}/actions/cache/retention-limit',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/cache/retention-limit`
  /// Get GitHub Actions cache retention limit for a repository
  static const actionsGetActionsCacheRetentionLimitForRepository =
      RestOperationContract(
    operationId: 'actions/get-actions-cache-retention-limit-for-repository',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/cache/retention-limit',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /enterprises/{enterprise}/actions/cache/storage-limit`
  /// Get GitHub Actions cache storage limit for an enterprise
  static const actionsGetActionsCacheStorageLimitForEnterprise =
      RestOperationContract(
    operationId: 'actions/get-actions-cache-storage-limit-for-enterprise',
    method: 'GET',
    path: '/enterprises/{enterprise}/actions/cache/storage-limit',
    pathParams: ['enterprise'],
  );

  /// `GET /organizations/{org}/actions/cache/storage-limit`
  /// Get GitHub Actions cache storage limit for an organization
  static const actionsGetActionsCacheStorageLimitForOrganization =
      RestOperationContract(
    operationId: 'actions/get-actions-cache-storage-limit-for-organization',
    method: 'GET',
    path: '/organizations/{org}/actions/cache/storage-limit',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/cache/storage-limit`
  /// Get GitHub Actions cache storage limit for a repository
  static const actionsGetActionsCacheStorageLimitForRepository =
      RestOperationContract(
    operationId: 'actions/get-actions-cache-storage-limit-for-repository',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/cache/storage-limit',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/actions/cache/usage`
  /// Get GitHub Actions cache usage for a repository
  static const actionsGetActionsCacheUsage = RestOperationContract(
    operationId: 'actions/get-actions-cache-usage',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/cache/usage',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/actions/cache/usage-by-repository`
  /// List repositories with GitHub Actions cache usage for an organization
  static const actionsGetActionsCacheUsageByRepoForOrg = RestOperationContract(
    operationId: 'actions/get-actions-cache-usage-by-repo-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/cache/usage-by-repository',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/cache/usage`
  /// Get GitHub Actions cache usage for an organization
  static const actionsGetActionsCacheUsageForOrg = RestOperationContract(
    operationId: 'actions/get-actions-cache-usage-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/cache/usage',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/actions/permissions/selected-actions`
  /// Get allowed actions and reusable workflows for an organization
  static const actionsGetAllowedActionsOrganization = RestOperationContract(
    operationId: 'actions/get-allowed-actions-organization',
    method: 'GET',
    path: '/orgs/{org}/actions/permissions/selected-actions',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/permissions/selected-actions`
  /// Get allowed actions and reusable workflows for a repository
  static const actionsGetAllowedActionsRepository = RestOperationContract(
    operationId: 'actions/get-allowed-actions-repository',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/permissions/selected-actions',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/actions/artifacts/{artifact_id}`
  /// Get an artifact
  static const actionsGetArtifact = RestOperationContract(
    operationId: 'actions/get-artifact',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/artifacts/{artifact_id}',
    pathParams: ['artifact_id', 'owner', 'repo'],
  );

  /// `GET /orgs/{org}/actions/permissions/artifact-and-log-retention`
  /// Get artifact and log retention settings for an organization
  static const actionsGetArtifactAndLogRetentionSettingsOrganization =
      RestOperationContract(
    operationId: 'actions/get-artifact-and-log-retention-settings-organization',
    method: 'GET',
    path: '/orgs/{org}/actions/permissions/artifact-and-log-retention',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/permissions/artifact-and-log-retention`
  /// Get artifact and log retention settings for a repository
  static const actionsGetArtifactAndLogRetentionSettingsRepository =
      RestOperationContract(
    operationId: 'actions/get-artifact-and-log-retention-settings-repository',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/actions/permissions/artifact-and-log-retention',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/actions/concurrency_groups/{concurrency_group_name}`
  /// Get a concurrency group for a repository
  static const actionsGetConcurrencyGroupForRepository = RestOperationContract(
    operationId: 'actions/get-concurrency-group-for-repository',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/actions/concurrency_groups/{concurrency_group_name}',
    pathParams: ['concurrency_group_name', 'owner', 'repo'],
    queryParams: ['ahead_of_job', 'ahead_of_run'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}`
  /// Get a custom image definition for GitHub Actions Hosted Runners
  static const actionsGetCustomImageForOrg = RestOperationContract(
    operationId: 'actions/get-custom-image-for-org',
    method: 'GET',
    path:
        '/orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}',
    pathParams: ['image_definition_id', 'org'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}/versions/{version}`
  /// Get an image version of a custom image for GitHub Actions Hosted Runners
  static const actionsGetCustomImageVersionForOrg = RestOperationContract(
    operationId: 'actions/get-custom-image-version-for-org',
    method: 'GET',
    path:
        '/orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}/versions/{version}',
    pathParams: ['image_definition_id', 'org', 'version'],
  );

  /// `GET /repos/{owner}/{repo}/actions/oidc/customization/sub`
  /// Get the customization template for an OIDC subject claim for a repository
  static const actionsGetCustomOidcSubClaimForRepo = RestOperationContract(
    operationId: 'actions/get-custom-oidc-sub-claim-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/oidc/customization/sub',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/secrets/public-key`
  /// Get an environment public key
  static const actionsGetEnvironmentPublicKey = RestOperationContract(
    operationId: 'actions/get-environment-public-key',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/secrets/public-key',
    pathParams: ['environment_name', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}`
  /// Get an environment secret
  static const actionsGetEnvironmentSecret = RestOperationContract(
    operationId: 'actions/get-environment-secret',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}',
    pathParams: ['environment_name', 'owner', 'repo', 'secret_name'],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/variables/{name}`
  /// Get an environment variable
  static const actionsGetEnvironmentVariable = RestOperationContract(
    operationId: 'actions/get-environment-variable',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/variables/{name}',
    pathParams: ['environment_name', 'name', 'owner', 'repo'],
  );

  /// `GET /orgs/{org}/actions/permissions/fork-pr-contributor-approval`
  /// Get fork PR contributor approval permissions for an organization
  static const actionsGetForkPrContributorApprovalPermissionsOrganization =
      RestOperationContract(
    operationId:
        'actions/get-fork-pr-contributor-approval-permissions-organization',
    method: 'GET',
    path: '/orgs/{org}/actions/permissions/fork-pr-contributor-approval',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/permissions/fork-pr-contributor-approval`
  /// Get fork PR contributor approval permissions for a repository
  static const actionsGetForkPrContributorApprovalPermissionsRepository =
      RestOperationContract(
    operationId:
        'actions/get-fork-pr-contributor-approval-permissions-repository',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/actions/permissions/fork-pr-contributor-approval',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/actions/permissions/workflow`
  /// Get default workflow permissions for an organization
  static const actionsGetGithubActionsDefaultWorkflowPermissionsOrganization =
      RestOperationContract(
    operationId:
        'actions/get-github-actions-default-workflow-permissions-organization',
    method: 'GET',
    path: '/orgs/{org}/actions/permissions/workflow',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/permissions/workflow`
  /// Get default workflow permissions for a repository
  static const actionsGetGithubActionsDefaultWorkflowPermissionsRepository =
      RestOperationContract(
    operationId:
        'actions/get-github-actions-default-workflow-permissions-repository',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/permissions/workflow',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/actions/permissions`
  /// Get GitHub Actions permissions for an organization
  static const actionsGetGithubActionsPermissionsOrganization =
      RestOperationContract(
    operationId: 'actions/get-github-actions-permissions-organization',
    method: 'GET',
    path: '/orgs/{org}/actions/permissions',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/permissions`
  /// Get GitHub Actions permissions for a repository
  static const actionsGetGithubActionsPermissionsRepository =
      RestOperationContract(
    operationId: 'actions/get-github-actions-permissions-repository',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/permissions',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/{hosted_runner_id}`
  /// Get a GitHub-hosted runner for an organization
  static const actionsGetHostedRunnerForOrg = RestOperationContract(
    operationId: 'actions/get-hosted-runner-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/hosted-runners/{hosted_runner_id}',
    pathParams: ['hosted_runner_id', 'org'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/images/github-owned`
  /// Get GitHub-owned images for GitHub-hosted runners in an organization
  static const actionsGetHostedRunnersGithubOwnedImagesForOrg =
      RestOperationContract(
    operationId: 'actions/get-hosted-runners-github-owned-images-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/hosted-runners/images/github-owned',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/limits`
  /// Get limits on GitHub-hosted runners for an organization
  static const actionsGetHostedRunnersLimitsForOrg = RestOperationContract(
    operationId: 'actions/get-hosted-runners-limits-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/hosted-runners/limits',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/machine-sizes`
  /// Get GitHub-hosted runners machine specs for an organization
  static const actionsGetHostedRunnersMachineSpecsForOrg =
      RestOperationContract(
    operationId: 'actions/get-hosted-runners-machine-specs-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/hosted-runners/machine-sizes',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/images/partner`
  /// Get partner images for GitHub-hosted runners in an organization
  static const actionsGetHostedRunnersPartnerImagesForOrg =
      RestOperationContract(
    operationId: 'actions/get-hosted-runners-partner-images-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/hosted-runners/images/partner',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/platforms`
  /// Get platforms for GitHub-hosted runners in an organization
  static const actionsGetHostedRunnersPlatformsForOrg = RestOperationContract(
    operationId: 'actions/get-hosted-runners-platforms-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/hosted-runners/platforms',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/jobs/{job_id}`
  /// Get a job for a workflow run
  static const actionsGetJobForWorkflowRun = RestOperationContract(
    operationId: 'actions/get-job-for-workflow-run',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/jobs/{job_id}',
    pathParams: ['job_id', 'owner', 'repo'],
  );

  /// `GET /orgs/{org}/actions/secrets/public-key`
  /// Get an organization public key
  static const actionsGetOrgPublicKey = RestOperationContract(
    operationId: 'actions/get-org-public-key',
    method: 'GET',
    path: '/orgs/{org}/actions/secrets/public-key',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/actions/secrets/{secret_name}`
  /// Get an organization secret
  static const actionsGetOrgSecret = RestOperationContract(
    operationId: 'actions/get-org-secret',
    method: 'GET',
    path: '/orgs/{org}/actions/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
  );

  /// `GET /orgs/{org}/actions/variables/{name}`
  /// Get an organization variable
  static const actionsGetOrgVariable = RestOperationContract(
    operationId: 'actions/get-org-variable',
    method: 'GET',
    path: '/orgs/{org}/actions/variables/{name}',
    pathParams: ['name', 'org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/pending_deployments`
  /// Get pending deployments for a workflow run
  static const actionsGetPendingDeploymentsForRun = RestOperationContract(
    operationId: 'actions/get-pending-deployments-for-run',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/pending_deployments',
    pathParams: ['owner', 'repo', 'run_id'],
  );

  /// `GET /orgs/{org}/actions/permissions/fork-pr-workflows-private-repos`
  /// Get private repo fork PR workflow settings for an organization
  static const actionsGetPrivateRepoForkPrWorkflowsSettingsOrganization =
      RestOperationContract(
    operationId:
        'actions/get-private-repo-fork-pr-workflows-settings-organization',
    method: 'GET',
    path: '/orgs/{org}/actions/permissions/fork-pr-workflows-private-repos',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/permissions/fork-pr-workflows-private-repos`
  /// Get private repo fork PR workflow settings for a repository
  static const actionsGetPrivateRepoForkPrWorkflowsSettingsRepository =
      RestOperationContract(
    operationId:
        'actions/get-private-repo-fork-pr-workflows-settings-repository',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/actions/permissions/fork-pr-workflows-private-repos',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/actions/secrets/public-key`
  /// Get a repository public key
  static const actionsGetRepoPublicKey = RestOperationContract(
    operationId: 'actions/get-repo-public-key',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/secrets/public-key',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/actions/secrets/{secret_name}`
  /// Get a repository secret
  static const actionsGetRepoSecret = RestOperationContract(
    operationId: 'actions/get-repo-secret',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
  );

  /// `GET /repos/{owner}/{repo}/actions/variables/{name}`
  /// Get a repository variable
  static const actionsGetRepoVariable = RestOperationContract(
    operationId: 'actions/get-repo-variable',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/variables/{name}',
    pathParams: ['name', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/approvals`
  /// Get the review history for a workflow run
  static const actionsGetReviewsForRun = RestOperationContract(
    operationId: 'actions/get-reviews-for-run',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/approvals',
    pathParams: ['owner', 'repo', 'run_id'],
  );

  /// `GET /orgs/{org}/actions/runners/deprecations/{version}`
  /// Get runner version end-of-life schedule for an organization
  static const actionsGetRunnerVersionDeprecationForOrg = RestOperationContract(
    operationId: 'actions/get-runner-version-deprecation-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runners/deprecations/{version}',
    pathParams: ['org', 'version'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runners/deprecations/{version}`
  /// Get runner version end-of-life schedule for a repository
  static const actionsGetRunnerVersionDeprecationForRepo =
      RestOperationContract(
    operationId: 'actions/get-runner-version-deprecation-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runners/deprecations/{version}',
    pathParams: ['owner', 'repo', 'version'],
  );

  /// `GET /orgs/{org}/actions/runners/{runner_id}`
  /// Get a self-hosted runner for an organization
  static const actionsGetSelfHostedRunnerForOrg = RestOperationContract(
    operationId: 'actions/get-self-hosted-runner-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runners/{runner_id}',
    pathParams: ['org', 'runner_id'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runners/{runner_id}`
  /// Get a self-hosted runner for a repository
  static const actionsGetSelfHostedRunnerForRepo = RestOperationContract(
    operationId: 'actions/get-self-hosted-runner-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runners/{runner_id}',
    pathParams: ['owner', 'repo', 'runner_id'],
  );

  /// `GET /orgs/{org}/actions/runner-groups/{runner_group_id}`
  /// Get a self-hosted runner group for an organization
  static const actionsGetSelfHostedRunnerGroupForOrg = RestOperationContract(
    operationId: 'actions/get-self-hosted-runner-group-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runner-groups/{runner_group_id}',
    pathParams: ['org', 'runner_group_id'],
  );

  /// `GET /orgs/{org}/actions/permissions/self-hosted-runners`
  /// Get self-hosted runners settings for an organization
  static const actionsGetSelfHostedRunnersPermissionsOrganization =
      RestOperationContract(
    operationId: 'actions/get-self-hosted-runners-permissions-organization',
    method: 'GET',
    path: '/orgs/{org}/actions/permissions/self-hosted-runners',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/workflows/{workflow_id}`
  /// Get a workflow
  static const actionsGetWorkflow = RestOperationContract(
    operationId: 'actions/get-workflow',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}',
    pathParams: ['owner', 'repo', 'workflow_id'],
  );

  /// `GET /repos/{owner}/{repo}/actions/permissions/access`
  /// Get the level of access for workflows outside of the repository
  static const actionsGetWorkflowAccessToRepository = RestOperationContract(
    operationId: 'actions/get-workflow-access-to-repository',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/permissions/access',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}`
  /// Get a workflow run
  static const actionsGetWorkflowRun = RestOperationContract(
    operationId: 'actions/get-workflow-run',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}',
    pathParams: ['owner', 'repo', 'run_id'],
    queryParams: ['exclude_pull_requests'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}`
  /// Get a workflow run attempt
  static const actionsGetWorkflowRunAttempt = RestOperationContract(
    operationId: 'actions/get-workflow-run-attempt',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}',
    pathParams: ['attempt_number', 'owner', 'repo', 'run_id'],
    queryParams: ['exclude_pull_requests'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/timing`
  /// Get workflow run usage
  static const actionsGetWorkflowRunUsage = RestOperationContract(
    operationId: 'actions/get-workflow-run-usage',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/timing',
    pathParams: ['owner', 'repo', 'run_id'],
  );

  /// `GET /repos/{owner}/{repo}/actions/workflows/{workflow_id}/timing`
  /// Get workflow usage
  static const actionsGetWorkflowUsage = RestOperationContract(
    operationId: 'actions/get-workflow-usage',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/timing',
    pathParams: ['owner', 'repo', 'workflow_id'],
  );

  /// `GET /repos/{owner}/{repo}/actions/artifacts`
  /// List artifacts for a repository
  static const actionsListArtifactsForRepo = RestOperationContract(
    operationId: 'actions/list-artifacts-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/artifacts',
    pathParams: ['owner', 'repo'],
    queryParams: ['name', 'page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/concurrency_groups`
  /// List concurrency groups for a repository
  static const actionsListConcurrencyGroupsForRepository =
      RestOperationContract(
    operationId: 'actions/list-concurrency-groups-for-repository',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/concurrency_groups',
    pathParams: ['owner', 'repo'],
    queryParams: ['after', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/concurrency_groups`
  /// List concurrency groups for a workflow run
  static const actionsListConcurrencyGroupsForWorkflowRun =
      RestOperationContract(
    operationId: 'actions/list-concurrency-groups-for-workflow-run',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/concurrency_groups',
    pathParams: ['owner', 'repo', 'run_id'],
    queryParams: ['after', 'before', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}/versions`
  /// List image versions of a custom image for an organization
  static const actionsListCustomImageVersionsForOrg = RestOperationContract(
    operationId: 'actions/list-custom-image-versions-for-org',
    method: 'GET',
    path:
        '/orgs/{org}/actions/hosted-runners/images/custom/{image_definition_id}/versions',
    pathParams: ['image_definition_id', 'org'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners/images/custom`
  /// List custom images for an organization
  static const actionsListCustomImagesForOrg = RestOperationContract(
    operationId: 'actions/list-custom-images-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/hosted-runners/images/custom',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/secrets`
  /// List environment secrets
  static const actionsListEnvironmentSecrets = RestOperationContract(
    operationId: 'actions/list-environment-secrets',
    method: 'GET',
    path: '/repos/{owner}/{repo}/environments/{environment_name}/secrets',
    pathParams: ['environment_name', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/variables`
  /// List environment variables
  static const actionsListEnvironmentVariables = RestOperationContract(
    operationId: 'actions/list-environment-variables',
    method: 'GET',
    path: '/repos/{owner}/{repo}/environments/{environment_name}/variables',
    pathParams: ['environment_name', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/runner-groups/{runner_group_id}/hosted-runners`
  /// List GitHub-hosted runners in a group for an organization
  static const actionsListGithubHostedRunnersInGroupForOrg =
      RestOperationContract(
    operationId: 'actions/list-github-hosted-runners-in-group-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/hosted-runners',
    pathParams: ['org', 'runner_group_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/hosted-runners`
  /// List GitHub-hosted runners for an organization
  static const actionsListHostedRunnersForOrg = RestOperationContract(
    operationId: 'actions/list-hosted-runners-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/hosted-runners',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/jobs`
  /// List jobs for a workflow run
  static const actionsListJobsForWorkflowRun = RestOperationContract(
    operationId: 'actions/list-jobs-for-workflow-run',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/jobs',
    pathParams: ['owner', 'repo', 'run_id'],
    queryParams: ['filter', 'page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}/jobs`
  /// List jobs for a workflow run attempt
  static const actionsListJobsForWorkflowRunAttempt = RestOperationContract(
    operationId: 'actions/list-jobs-for-workflow-run-attempt',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}/jobs',
    pathParams: ['attempt_number', 'owner', 'repo', 'run_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/runners/{runner_id}/labels`
  /// List labels for a self-hosted runner for an organization
  static const actionsListLabelsForSelfHostedRunnerForOrg =
      RestOperationContract(
    operationId: 'actions/list-labels-for-self-hosted-runner-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runners/{runner_id}/labels',
    pathParams: ['org', 'runner_id'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runners/{runner_id}/labels`
  /// List labels for a self-hosted runner for a repository
  static const actionsListLabelsForSelfHostedRunnerForRepo =
      RestOperationContract(
    operationId: 'actions/list-labels-for-self-hosted-runner-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels',
    pathParams: ['owner', 'repo', 'runner_id'],
  );

  /// `GET /orgs/{org}/actions/secrets`
  /// List organization secrets
  static const actionsListOrgSecrets = RestOperationContract(
    operationId: 'actions/list-org-secrets',
    method: 'GET',
    path: '/orgs/{org}/actions/secrets',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/variables`
  /// List organization variables
  static const actionsListOrgVariables = RestOperationContract(
    operationId: 'actions/list-org-variables',
    method: 'GET',
    path: '/orgs/{org}/actions/variables',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/runner-groups/{runner_group_id}/repositories`
  /// List repository access to a self-hosted runner group in an organization
  static const actionsListRepoAccessToSelfHostedRunnerGroupInOrg =
      RestOperationContract(
    operationId: 'actions/list-repo-access-to-self-hosted-runner-group-in-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories',
    pathParams: ['org', 'runner_group_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/organization-secrets`
  /// List repository organization secrets
  static const actionsListRepoOrganizationSecrets = RestOperationContract(
    operationId: 'actions/list-repo-organization-secrets',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/organization-secrets',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/organization-variables`
  /// List repository organization variables
  static const actionsListRepoOrganizationVariables = RestOperationContract(
    operationId: 'actions/list-repo-organization-variables',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/organization-variables',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/secrets`
  /// List repository secrets
  static const actionsListRepoSecrets = RestOperationContract(
    operationId: 'actions/list-repo-secrets',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/secrets',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/variables`
  /// List repository variables
  static const actionsListRepoVariables = RestOperationContract(
    operationId: 'actions/list-repo-variables',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/variables',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/workflows`
  /// List repository workflows
  static const actionsListRepoWorkflows = RestOperationContract(
    operationId: 'actions/list-repo-workflows',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/workflows',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/runners/downloads`
  /// List runner applications for an organization
  static const actionsListRunnerApplicationsForOrg = RestOperationContract(
    operationId: 'actions/list-runner-applications-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runners/downloads',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runners/downloads`
  /// List runner applications for a repository
  static const actionsListRunnerApplicationsForRepo = RestOperationContract(
    operationId: 'actions/list-runner-applications-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runners/downloads',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/actions/secrets/{secret_name}/repositories`
  /// List selected repositories for an organization secret
  static const actionsListSelectedReposForOrgSecret = RestOperationContract(
    operationId: 'actions/list-selected-repos-for-org-secret',
    method: 'GET',
    path: '/orgs/{org}/actions/secrets/{secret_name}/repositories',
    pathParams: ['org', 'secret_name'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/variables/{name}/repositories`
  /// List selected repositories for an organization variable
  static const actionsListSelectedReposForOrgVariable = RestOperationContract(
    operationId: 'actions/list-selected-repos-for-org-variable',
    method: 'GET',
    path: '/orgs/{org}/actions/variables/{name}/repositories',
    pathParams: ['name', 'org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/permissions/repositories`
  /// List selected repositories enabled for GitHub Actions in an organization
  static const actionsListSelectedRepositoriesEnabledGithubActionsOrganization =
      RestOperationContract(
    operationId:
        'actions/list-selected-repositories-enabled-github-actions-organization',
    method: 'GET',
    path: '/orgs/{org}/actions/permissions/repositories',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/permissions/self-hosted-runners/repositories`
  /// List repositories allowed to use self-hosted runners in an organization
  static const actionsListSelectedRepositoriesSelfHostedRunnersOrganization =
      RestOperationContract(
    operationId:
        'actions/list-selected-repositories-self-hosted-runners-organization',
    method: 'GET',
    path: '/orgs/{org}/actions/permissions/self-hosted-runners/repositories',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/runner-groups`
  /// List self-hosted runner groups for an organization
  static const actionsListSelfHostedRunnerGroupsForOrg = RestOperationContract(
    operationId: 'actions/list-self-hosted-runner-groups-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runner-groups',
    pathParams: ['org'],
    queryParams: ['page', 'per_page', 'visible_to_repository'],
  );

  /// `GET /orgs/{org}/actions/runners`
  /// List self-hosted runners for an organization
  static const actionsListSelfHostedRunnersForOrg = RestOperationContract(
    operationId: 'actions/list-self-hosted-runners-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runners',
    pathParams: ['org'],
    queryParams: ['name', 'page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runners`
  /// List self-hosted runners for a repository
  static const actionsListSelfHostedRunnersForRepo = RestOperationContract(
    operationId: 'actions/list-self-hosted-runners-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runners',
    pathParams: ['owner', 'repo'],
    queryParams: ['name', 'page', 'per_page'],
  );

  /// `GET /orgs/{org}/actions/runner-groups/{runner_group_id}/runners`
  /// List self-hosted runners in a group for an organization
  static const actionsListSelfHostedRunnersInGroupForOrg =
      RestOperationContract(
    operationId: 'actions/list-self-hosted-runners-in-group-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/runners',
    pathParams: ['org', 'runner_group_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs/{run_id}/artifacts`
  /// List workflow run artifacts
  static const actionsListWorkflowRunArtifacts = RestOperationContract(
    operationId: 'actions/list-workflow-run-artifacts',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/artifacts',
    pathParams: ['owner', 'repo', 'run_id'],
    queryParams: ['direction', 'name', 'page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/actions/workflows/{workflow_id}/runs`
  /// List workflow runs for a workflow
  static const actionsListWorkflowRuns = RestOperationContract(
    operationId: 'actions/list-workflow-runs',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/workflows/{workflow_id}/runs',
    pathParams: ['owner', 'repo', 'workflow_id'],
    queryParams: [
      'actor',
      'branch',
      'check_suite_id',
      'created',
      'event',
      'exclude_pull_requests',
      'head_sha',
      'page',
      'per_page',
      'status'
    ],
  );

  /// `GET /repos/{owner}/{repo}/actions/runs`
  /// List workflow runs for a repository
  static const actionsListWorkflowRunsForRepo = RestOperationContract(
    operationId: 'actions/list-workflow-runs-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/actions/runs',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'actor',
      'branch',
      'check_suite_id',
      'created',
      'event',
      'exclude_pull_requests',
      'head_sha',
      'page',
      'per_page',
      'status'
    ],
  );

  /// `POST /repos/{owner}/{repo}/actions/jobs/{job_id}/rerun`
  /// Re-run a job from a workflow run
  static const actionsReRunJobForWorkflowRun = RestOperationContract(
    operationId: 'actions/re-run-job-for-workflow-run',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/jobs/{job_id}/rerun',
    pathParams: ['job_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/actions/runs/{run_id}/rerun`
  /// Re-run a workflow
  static const actionsReRunWorkflow = RestOperationContract(
    operationId: 'actions/re-run-workflow',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/rerun',
    pathParams: ['owner', 'repo', 'run_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/actions/runs/{run_id}/rerun-failed-jobs`
  /// Re-run failed jobs from a workflow run
  static const actionsReRunWorkflowFailedJobs = RestOperationContract(
    operationId: 'actions/re-run-workflow-failed-jobs',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/rerun-failed-jobs',
    pathParams: ['owner', 'repo', 'run_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /orgs/{org}/actions/runners/{runner_id}/labels`
  /// Remove all custom labels from a self-hosted runner for an organization
  static const actionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrg =
      RestOperationContract(
    operationId:
        'actions/remove-all-custom-labels-from-self-hosted-runner-for-org',
    method: 'DELETE',
    path: '/orgs/{org}/actions/runners/{runner_id}/labels',
    pathParams: ['org', 'runner_id'],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/runners/{runner_id}/labels`
  /// Remove all custom labels from a self-hosted runner for a repository
  static const actionsRemoveAllCustomLabelsFromSelfHostedRunnerForRepo =
      RestOperationContract(
    operationId:
        'actions/remove-all-custom-labels-from-self-hosted-runner-for-repo',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels',
    pathParams: ['owner', 'repo', 'runner_id'],
  );

  /// `DELETE /orgs/{org}/actions/runners/{runner_id}/labels/{name}`
  /// Remove a custom label from a self-hosted runner for an organization
  static const actionsRemoveCustomLabelFromSelfHostedRunnerForOrg =
      RestOperationContract(
    operationId: 'actions/remove-custom-label-from-self-hosted-runner-for-org',
    method: 'DELETE',
    path: '/orgs/{org}/actions/runners/{runner_id}/labels/{name}',
    pathParams: ['name', 'org', 'runner_id'],
  );

  /// `DELETE /repos/{owner}/{repo}/actions/runners/{runner_id}/labels/{name}`
  /// Remove a custom label from a self-hosted runner for a repository
  static const actionsRemoveCustomLabelFromSelfHostedRunnerForRepo =
      RestOperationContract(
    operationId: 'actions/remove-custom-label-from-self-hosted-runner-for-repo',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels/{name}',
    pathParams: ['name', 'owner', 'repo', 'runner_id'],
  );

  /// `DELETE /orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}`
  /// Remove repository access to a self-hosted runner group in an organization
  static const actionsRemoveRepoAccessToSelfHostedRunnerGroupInOrg =
      RestOperationContract(
    operationId:
        'actions/remove-repo-access-to-self-hosted-runner-group-in-org',
    method: 'DELETE',
    path:
        '/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'runner_group_id'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/secrets/{secret_name}/repositories/{repository_id}`
  /// Remove selected repository from an organization secret
  static const actionsRemoveSelectedRepoFromOrgSecret = RestOperationContract(
    operationId: 'actions/remove-selected-repo-from-org-secret',
    method: 'DELETE',
    path:
        '/orgs/{org}/actions/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/variables/{name}/repositories/{repository_id}`
  /// Remove selected repository from an organization variable
  static const actionsRemoveSelectedRepoFromOrgVariable = RestOperationContract(
    operationId: 'actions/remove-selected-repo-from-org-variable',
    method: 'DELETE',
    path: '/orgs/{org}/actions/variables/{name}/repositories/{repository_id}',
    pathParams: ['name', 'org', 'repository_id'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/runner-groups/{runner_group_id}/runners/{runner_id}`
  /// Remove a self-hosted runner from a group for an organization
  static const actionsRemoveSelfHostedRunnerFromGroupForOrg =
      RestOperationContract(
    operationId: 'actions/remove-self-hosted-runner-from-group-for-org',
    method: 'DELETE',
    path:
        '/orgs/{org}/actions/runner-groups/{runner_group_id}/runners/{runner_id}',
    pathParams: ['org', 'runner_group_id', 'runner_id'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/actions/runs/{run_id}/deployment_protection_rule`
  /// Review custom deployment protection rules for a workflow run
  static const actionsReviewCustomGatesForRun = RestOperationContract(
    operationId: 'actions/review-custom-gates-for-run',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/actions/runs/{run_id}/deployment_protection_rule',
    pathParams: ['owner', 'repo', 'run_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/actions/runs/{run_id}/pending_deployments`
  /// Review pending deployments for a workflow run
  static const actionsReviewPendingDeploymentsForRun = RestOperationContract(
    operationId: 'actions/review-pending-deployments-for-run',
    method: 'POST',
    path: '/repos/{owner}/{repo}/actions/runs/{run_id}/pending_deployments',
    pathParams: ['owner', 'repo', 'run_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /enterprises/{enterprise}/actions/cache/retention-limit`
  /// Set GitHub Actions cache retention limit for an enterprise
  static const actionsSetActionsCacheRetentionLimitForEnterprise =
      RestOperationContract(
    operationId: 'actions/set-actions-cache-retention-limit-for-enterprise',
    method: 'PUT',
    path: '/enterprises/{enterprise}/actions/cache/retention-limit',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /organizations/{org}/actions/cache/retention-limit`
  /// Set GitHub Actions cache retention limit for an organization
  static const actionsSetActionsCacheRetentionLimitForOrganization =
      RestOperationContract(
    operationId: 'actions/set-actions-cache-retention-limit-for-organization',
    method: 'PUT',
    path: '/organizations/{org}/actions/cache/retention-limit',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/cache/retention-limit`
  /// Set GitHub Actions cache retention limit for a repository
  static const actionsSetActionsCacheRetentionLimitForRepository =
      RestOperationContract(
    operationId: 'actions/set-actions-cache-retention-limit-for-repository',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/cache/retention-limit',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /enterprises/{enterprise}/actions/cache/storage-limit`
  /// Set GitHub Actions cache storage limit for an enterprise
  static const actionsSetActionsCacheStorageLimitForEnterprise =
      RestOperationContract(
    operationId: 'actions/set-actions-cache-storage-limit-for-enterprise',
    method: 'PUT',
    path: '/enterprises/{enterprise}/actions/cache/storage-limit',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /organizations/{org}/actions/cache/storage-limit`
  /// Set GitHub Actions cache storage limit for an organization
  static const actionsSetActionsCacheStorageLimitForOrganization =
      RestOperationContract(
    operationId: 'actions/set-actions-cache-storage-limit-for-organization',
    method: 'PUT',
    path: '/organizations/{org}/actions/cache/storage-limit',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/cache/storage-limit`
  /// Set GitHub Actions cache storage limit for a repository
  static const actionsSetActionsCacheStorageLimitForRepository =
      RestOperationContract(
    operationId: 'actions/set-actions-cache-storage-limit-for-repository',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/cache/storage-limit',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/permissions/selected-actions`
  /// Set allowed actions and reusable workflows for an organization
  static const actionsSetAllowedActionsOrganization = RestOperationContract(
    operationId: 'actions/set-allowed-actions-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions/selected-actions',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/permissions/selected-actions`
  /// Set allowed actions and reusable workflows for a repository
  static const actionsSetAllowedActionsRepository = RestOperationContract(
    operationId: 'actions/set-allowed-actions-repository',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/permissions/selected-actions',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/permissions/artifact-and-log-retention`
  /// Set artifact and log retention settings for an organization
  static const actionsSetArtifactAndLogRetentionSettingsOrganization =
      RestOperationContract(
    operationId: 'actions/set-artifact-and-log-retention-settings-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions/artifact-and-log-retention',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/permissions/artifact-and-log-retention`
  /// Set artifact and log retention settings for a repository
  static const actionsSetArtifactAndLogRetentionSettingsRepository =
      RestOperationContract(
    operationId: 'actions/set-artifact-and-log-retention-settings-repository',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/actions/permissions/artifact-and-log-retention',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/runners/{runner_id}/labels`
  /// Set custom labels for a self-hosted runner for an organization
  static const actionsSetCustomLabelsForSelfHostedRunnerForOrg =
      RestOperationContract(
    operationId: 'actions/set-custom-labels-for-self-hosted-runner-for-org',
    method: 'PUT',
    path: '/orgs/{org}/actions/runners/{runner_id}/labels',
    pathParams: ['org', 'runner_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/actions/runners/{runner_id}/labels`
  /// Set custom labels for a self-hosted runner for a repository
  static const actionsSetCustomLabelsForSelfHostedRunnerForRepo =
      RestOperationContract(
    operationId: 'actions/set-custom-labels-for-self-hosted-runner-for-repo',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/runners/{runner_id}/labels',
    pathParams: ['owner', 'repo', 'runner_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/actions/oidc/customization/sub`
  /// Set the customization template for an OIDC subject claim for a repository
  static const actionsSetCustomOidcSubClaimForRepo = RestOperationContract(
    operationId: 'actions/set-custom-oidc-sub-claim-for-repo',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/oidc/customization/sub',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `PUT /orgs/{org}/actions/permissions/fork-pr-contributor-approval`
  /// Set fork PR contributor approval permissions for an organization
  static const actionsSetForkPrContributorApprovalPermissionsOrganization =
      RestOperationContract(
    operationId:
        'actions/set-fork-pr-contributor-approval-permissions-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions/fork-pr-contributor-approval',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/permissions/fork-pr-contributor-approval`
  /// Set fork PR contributor approval permissions for a repository
  static const actionsSetForkPrContributorApprovalPermissionsRepository =
      RestOperationContract(
    operationId:
        'actions/set-fork-pr-contributor-approval-permissions-repository',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/actions/permissions/fork-pr-contributor-approval',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/permissions/workflow`
  /// Set default workflow permissions for an organization
  static const actionsSetGithubActionsDefaultWorkflowPermissionsOrganization =
      RestOperationContract(
    operationId:
        'actions/set-github-actions-default-workflow-permissions-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions/workflow',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/permissions/workflow`
  /// Set default workflow permissions for a repository
  static const actionsSetGithubActionsDefaultWorkflowPermissionsRepository =
      RestOperationContract(
    operationId:
        'actions/set-github-actions-default-workflow-permissions-repository',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/permissions/workflow',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/permissions`
  /// Set GitHub Actions permissions for an organization
  static const actionsSetGithubActionsPermissionsOrganization =
      RestOperationContract(
    operationId: 'actions/set-github-actions-permissions-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/permissions`
  /// Set GitHub Actions permissions for a repository
  static const actionsSetGithubActionsPermissionsRepository =
      RestOperationContract(
    operationId: 'actions/set-github-actions-permissions-repository',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/permissions',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/permissions/fork-pr-workflows-private-repos`
  /// Set private repo fork PR workflow settings for an organization
  static const actionsSetPrivateRepoForkPrWorkflowsSettingsOrganization =
      RestOperationContract(
    operationId:
        'actions/set-private-repo-fork-pr-workflows-settings-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions/fork-pr-workflows-private-repos',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/permissions/fork-pr-workflows-private-repos`
  /// Set private repo fork PR workflow settings for a repository
  static const actionsSetPrivateRepoForkPrWorkflowsSettingsRepository =
      RestOperationContract(
    operationId:
        'actions/set-private-repo-fork-pr-workflows-settings-repository',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/actions/permissions/fork-pr-workflows-private-repos',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/runner-groups/{runner_group_id}/repositories`
  /// Set repository access for a self-hosted runner group in an organization
  static const actionsSetRepoAccessToSelfHostedRunnerGroupInOrg =
      RestOperationContract(
    operationId: 'actions/set-repo-access-to-self-hosted-runner-group-in-org',
    method: 'PUT',
    path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories',
    pathParams: ['org', 'runner_group_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/secrets/{secret_name}/repositories`
  /// Set selected repositories for an organization secret
  static const actionsSetSelectedReposForOrgSecret = RestOperationContract(
    operationId: 'actions/set-selected-repos-for-org-secret',
    method: 'PUT',
    path: '/orgs/{org}/actions/secrets/{secret_name}/repositories',
    pathParams: ['org', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/variables/{name}/repositories`
  /// Set selected repositories for an organization variable
  static const actionsSetSelectedReposForOrgVariable = RestOperationContract(
    operationId: 'actions/set-selected-repos-for-org-variable',
    method: 'PUT',
    path: '/orgs/{org}/actions/variables/{name}/repositories',
    pathParams: ['name', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/permissions/repositories`
  /// Set selected repositories enabled for GitHub Actions in an organization
  static const actionsSetSelectedRepositoriesEnabledGithubActionsOrganization =
      RestOperationContract(
    operationId:
        'actions/set-selected-repositories-enabled-github-actions-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions/repositories',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/permissions/self-hosted-runners/repositories`
  /// Set repositories allowed to use self-hosted runners in an organization
  static const actionsSetSelectedRepositoriesSelfHostedRunnersOrganization =
      RestOperationContract(
    operationId:
        'actions/set-selected-repositories-self-hosted-runners-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions/self-hosted-runners/repositories',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/runner-groups/{runner_group_id}/runners`
  /// Set self-hosted runners in a group for an organization
  static const actionsSetSelfHostedRunnersInGroupForOrg = RestOperationContract(
    operationId: 'actions/set-self-hosted-runners-in-group-for-org',
    method: 'PUT',
    path: '/orgs/{org}/actions/runner-groups/{runner_group_id}/runners',
    pathParams: ['org', 'runner_group_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/actions/permissions/self-hosted-runners`
  /// Set self-hosted runners settings for an organization
  static const actionsSetSelfHostedRunnersPermissionsOrganization =
      RestOperationContract(
    operationId: 'actions/set-self-hosted-runners-permissions-organization',
    method: 'PUT',
    path: '/orgs/{org}/actions/permissions/self-hosted-runners',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/actions/permissions/access`
  /// Set the level of access for workflows outside of the repository
  static const actionsSetWorkflowAccessToRepository = RestOperationContract(
    operationId: 'actions/set-workflow-access-to-repository',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/actions/permissions/access',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PATCH /repos/{owner}/{repo}/environments/{environment_name}/variables/{name}`
  /// Update an environment variable
  static const actionsUpdateEnvironmentVariable = RestOperationContract(
    operationId: 'actions/update-environment-variable',
    method: 'PATCH',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/variables/{name}',
    pathParams: ['environment_name', 'name', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PATCH /orgs/{org}/actions/hosted-runners/{hosted_runner_id}`
  /// Update a GitHub-hosted runner for an organization
  static const actionsUpdateHostedRunnerForOrg = RestOperationContract(
    operationId: 'actions/update-hosted-runner-for-org',
    method: 'PATCH',
    path: '/orgs/{org}/actions/hosted-runners/{hosted_runner_id}',
    pathParams: ['hosted_runner_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/actions/variables/{name}`
  /// Update an organization variable
  static const actionsUpdateOrgVariable = RestOperationContract(
    operationId: 'actions/update-org-variable',
    method: 'PATCH',
    path: '/orgs/{org}/actions/variables/{name}',
    pathParams: ['name', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PATCH /repos/{owner}/{repo}/actions/variables/{name}`
  /// Update a repository variable
  static const actionsUpdateRepoVariable = RestOperationContract(
    operationId: 'actions/update-repo-variable',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/actions/variables/{name}',
    pathParams: ['name', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PATCH /orgs/{org}/actions/runner-groups/{runner_group_id}`
  /// Update a self-hosted runner group for an organization
  static const actionsUpdateSelfHostedRunnerGroupForOrg = RestOperationContract(
    operationId: 'actions/update-self-hosted-runner-group-for-org',
    method: 'PATCH',
    path: '/orgs/{org}/actions/runner-groups/{runner_group_id}',
    pathParams: ['org', 'runner_group_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /user/starred/{owner}/{repo}`
  /// Check if a repository is starred by the authenticated user
  static const activityCheckRepoIsStarredByAuthenticatedUser =
      RestOperationContract(
    operationId: 'activity/check-repo-is-starred-by-authenticated-user',
    method: 'GET',
    path: '/user/starred/{owner}/{repo}',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/subscription`
  /// Delete a repository subscription
  static const activityDeleteRepoSubscription = RestOperationContract(
    operationId: 'activity/delete-repo-subscription',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/subscription',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /notifications/threads/{thread_id}/subscription`
  /// Delete a thread subscription
  static const activityDeleteThreadSubscription = RestOperationContract(
    operationId: 'activity/delete-thread-subscription',
    method: 'DELETE',
    path: '/notifications/threads/{thread_id}/subscription',
    pathParams: ['thread_id'],
    successStatuses: [204],
  );

  /// `GET /feeds`
  /// Get feeds
  static const activityGetFeeds = RestOperationContract(
    operationId: 'activity/get-feeds',
    method: 'GET',
    path: '/feeds',
  );

  /// `GET /repos/{owner}/{repo}/subscription`
  /// Get a repository subscription
  static const activityGetRepoSubscription = RestOperationContract(
    operationId: 'activity/get-repo-subscription',
    method: 'GET',
    path: '/repos/{owner}/{repo}/subscription',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/stargazers/count`
  /// Get stargazer count
  static const activityGetStargazerCountForRepo = RestOperationContract(
    operationId: 'activity/get-stargazer-count-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stargazers/count',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/stargazers/history`
  /// Get repository star history
  static const activityGetStargazerHistoryForRepo = RestOperationContract(
    operationId: 'activity/get-stargazer-history-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stargazers/history',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /notifications/threads/{thread_id}`
  /// Get a thread
  static const activityGetThread = RestOperationContract(
    operationId: 'activity/get-thread',
    method: 'GET',
    path: '/notifications/threads/{thread_id}',
    pathParams: ['thread_id'],
  );

  /// `GET /notifications/threads/{thread_id}/subscription`
  /// Get a thread subscription for the authenticated user
  static const activityGetThreadSubscriptionForAuthenticatedUser =
      RestOperationContract(
    operationId: 'activity/get-thread-subscription-for-authenticated-user',
    method: 'GET',
    path: '/notifications/threads/{thread_id}/subscription',
    pathParams: ['thread_id'],
  );

  /// `GET /users/{username}/events`
  /// List events for the authenticated user
  static const activityListEventsForAuthenticatedUser = RestOperationContract(
    operationId: 'activity/list-events-for-authenticated-user',
    method: 'GET',
    path: '/users/{username}/events',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /notifications`
  /// List notifications for the authenticated user
  static const activityListNotificationsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'activity/list-notifications-for-authenticated-user',
    method: 'GET',
    path: '/notifications',
    queryParams: [
      'all',
      'before',
      'page',
      'participating',
      'per_page',
      'since'
    ],
  );

  /// `GET /users/{username}/events/orgs/{org}`
  /// List organization events for the authenticated user
  static const activityListOrgEventsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'activity/list-org-events-for-authenticated-user',
    method: 'GET',
    path: '/users/{username}/events/orgs/{org}',
    pathParams: ['org', 'username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /events`
  /// List public events
  static const activityListPublicEvents = RestOperationContract(
    operationId: 'activity/list-public-events',
    method: 'GET',
    path: '/events',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /networks/{owner}/{repo}/events`
  /// List public events for a network of repositories
  static const activityListPublicEventsForRepoNetwork = RestOperationContract(
    operationId: 'activity/list-public-events-for-repo-network',
    method: 'GET',
    path: '/networks/{owner}/{repo}/events',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/events/public`
  /// List public events for a user
  static const activityListPublicEventsForUser = RestOperationContract(
    operationId: 'activity/list-public-events-for-user',
    method: 'GET',
    path: '/users/{username}/events/public',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/events`
  /// List public organization events
  static const activityListPublicOrgEvents = RestOperationContract(
    operationId: 'activity/list-public-org-events',
    method: 'GET',
    path: '/orgs/{org}/events',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/received_events`
  /// List events received by the authenticated user
  static const activityListReceivedEventsForUser = RestOperationContract(
    operationId: 'activity/list-received-events-for-user',
    method: 'GET',
    path: '/users/{username}/received_events',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/received_events/public`
  /// List public events received by a user
  static const activityListReceivedPublicEventsForUser = RestOperationContract(
    operationId: 'activity/list-received-public-events-for-user',
    method: 'GET',
    path: '/users/{username}/received_events/public',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/events`
  /// List repository events
  static const activityListRepoEvents = RestOperationContract(
    operationId: 'activity/list-repo-events',
    method: 'GET',
    path: '/repos/{owner}/{repo}/events',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/notifications`
  /// List repository notifications for the authenticated user
  static const activityListRepoNotificationsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'activity/list-repo-notifications-for-authenticated-user',
    method: 'GET',
    path: '/repos/{owner}/{repo}/notifications',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'all',
      'before',
      'page',
      'participating',
      'per_page',
      'since'
    ],
  );

  /// `GET /user/starred`
  /// List repositories starred by the authenticated user
  static const activityListReposStarredByAuthenticatedUser =
      RestOperationContract(
    operationId: 'activity/list-repos-starred-by-authenticated-user',
    method: 'GET',
    path: '/user/starred',
    queryParams: ['direction', 'page', 'per_page', 'sort'],
  );

  /// `GET /users/{username}/starred`
  /// List repositories starred by a user
  static const activityListReposStarredByUser = RestOperationContract(
    operationId: 'activity/list-repos-starred-by-user',
    method: 'GET',
    path: '/users/{username}/starred',
    pathParams: ['username'],
    queryParams: ['direction', 'page', 'per_page', 'sort'],
  );

  /// `GET /users/{username}/subscriptions`
  /// List repositories watched by a user
  static const activityListReposWatchedByUser = RestOperationContract(
    operationId: 'activity/list-repos-watched-by-user',
    method: 'GET',
    path: '/users/{username}/subscriptions',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/stargazers`
  /// List stargazers
  static const activityListStargazersForRepo = RestOperationContract(
    operationId: 'activity/list-stargazers-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stargazers',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/subscriptions`
  /// List repositories watched by the authenticated user
  static const activityListWatchedReposForAuthenticatedUser =
      RestOperationContract(
    operationId: 'activity/list-watched-repos-for-authenticated-user',
    method: 'GET',
    path: '/user/subscriptions',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/subscribers`
  /// List watchers
  static const activityListWatchersForRepo = RestOperationContract(
    operationId: 'activity/list-watchers-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/subscribers',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `PUT /notifications`
  /// Mark notifications as read
  static const activityMarkNotificationsAsRead = RestOperationContract(
    operationId: 'activity/mark-notifications-as-read',
    method: 'PUT',
    path: '/notifications',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202, 205],
  );

  /// `PUT /repos/{owner}/{repo}/notifications`
  /// Mark repository notifications as read
  static const activityMarkRepoNotificationsAsRead = RestOperationContract(
    operationId: 'activity/mark-repo-notifications-as-read',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/notifications',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202, 205],
  );

  /// `DELETE /notifications/threads/{thread_id}`
  /// Mark a thread as done
  static const activityMarkThreadAsDone = RestOperationContract(
    operationId: 'activity/mark-thread-as-done',
    method: 'DELETE',
    path: '/notifications/threads/{thread_id}',
    pathParams: ['thread_id'],
    successStatuses: [204],
  );

  /// `PATCH /notifications/threads/{thread_id}`
  /// Mark a thread as read
  static const activityMarkThreadAsRead = RestOperationContract(
    operationId: 'activity/mark-thread-as-read',
    method: 'PATCH',
    path: '/notifications/threads/{thread_id}',
    pathParams: ['thread_id'],
    successStatuses: [205],
  );

  /// `PUT /repos/{owner}/{repo}/subscription`
  /// Set a repository subscription
  static const activitySetRepoSubscription = RestOperationContract(
    operationId: 'activity/set-repo-subscription',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/subscription',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /notifications/threads/{thread_id}/subscription`
  /// Set a thread subscription
  static const activitySetThreadSubscription = RestOperationContract(
    operationId: 'activity/set-thread-subscription',
    method: 'PUT',
    path: '/notifications/threads/{thread_id}/subscription',
    pathParams: ['thread_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /user/starred/{owner}/{repo}`
  /// Star a repository for the authenticated user
  static const activityStarRepoForAuthenticatedUser = RestOperationContract(
    operationId: 'activity/star-repo-for-authenticated-user',
    method: 'PUT',
    path: '/user/starred/{owner}/{repo}',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /user/starred/{owner}/{repo}`
  /// Unstar a repository for the authenticated user
  static const activityUnstarRepoForAuthenticatedUser = RestOperationContract(
    operationId: 'activity/unstar-repo-for-authenticated-user',
    method: 'DELETE',
    path: '/user/starred/{owner}/{repo}',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `POST /agents/repos/{owner}/{repo}/tasks`
  /// Start a task
  static const agentTasksCreateTaskInRepo = RestOperationContract(
    operationId: 'agent-tasks/create-task-in-repo',
    method: 'POST',
    path: '/agents/repos/{owner}/{repo}/tasks',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `GET /agents/tasks/{task_id}`
  /// Get a task by ID
  static const agentTasksGetTaskById = RestOperationContract(
    operationId: 'agent-tasks/get-task-by-id',
    method: 'GET',
    path: '/agents/tasks/{task_id}',
    pathParams: ['task_id'],
  );

  /// `GET /agents/repos/{owner}/{repo}/tasks/{task_id}`
  /// Get a task by repo
  static const agentTasksGetTaskByRepoAndId = RestOperationContract(
    operationId: 'agent-tasks/get-task-by-repo-and-id',
    method: 'GET',
    path: '/agents/repos/{owner}/{repo}/tasks/{task_id}',
    pathParams: ['owner', 'repo', 'task_id'],
  );

  /// `GET /agents/tasks`
  /// List tasks
  static const agentTasksListTasks = RestOperationContract(
    operationId: 'agent-tasks/list-tasks',
    method: 'GET',
    path: '/agents/tasks',
    queryParams: [
      'direction',
      'is_archived',
      'page',
      'per_page',
      'since',
      'sort',
      'state'
    ],
  );

  /// `GET /agents/repos/{owner}/{repo}/tasks`
  /// List tasks for repository
  static const agentTasksListTasksForRepo = RestOperationContract(
    operationId: 'agent-tasks/list-tasks-for-repo',
    method: 'GET',
    path: '/agents/repos/{owner}/{repo}/tasks',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'creator_id',
      'direction',
      'is_archived',
      'page',
      'per_page',
      'since',
      'sort',
      'state'
    ],
  );

  /// `PUT /orgs/{org}/agents/secrets/{secret_name}/repositories/{repository_id}`
  /// Add selected repository to an organization secret
  static const agentsAddSelectedRepoToOrgSecret = RestOperationContract(
    operationId: 'agents/add-selected-repo-to-org-secret',
    method: 'PUT',
    path:
        '/orgs/{org}/agents/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/agents/variables/{name}/repositories/{repository_id}`
  /// Add selected repository to an organization variable
  static const agentsAddSelectedRepoToOrgVariable = RestOperationContract(
    operationId: 'agents/add-selected-repo-to-org-variable',
    method: 'PUT',
    path: '/orgs/{org}/agents/variables/{name}/repositories/{repository_id}',
    pathParams: ['name', 'org', 'repository_id'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/agents/secrets/{secret_name}`
  /// Create or update an organization secret
  static const agentsCreateOrUpdateOrgSecret = RestOperationContract(
    operationId: 'agents/create-or-update-org-secret',
    method: 'PUT',
    path: '/orgs/{org}/agents/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `PUT /repos/{owner}/{repo}/agents/secrets/{secret_name}`
  /// Create or update a repository secret
  static const agentsCreateOrUpdateRepoSecret = RestOperationContract(
    operationId: 'agents/create-or-update-repo-secret',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/agents/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `POST /orgs/{org}/agents/variables`
  /// Create an organization variable
  static const agentsCreateOrgVariable = RestOperationContract(
    operationId: 'agents/create-org-variable',
    method: 'POST',
    path: '/orgs/{org}/agents/variables',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/agents/variables`
  /// Create a repository variable
  static const agentsCreateRepoVariable = RestOperationContract(
    operationId: 'agents/create-repo-variable',
    method: 'POST',
    path: '/repos/{owner}/{repo}/agents/variables',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /orgs/{org}/agents/secrets/{secret_name}`
  /// Delete an organization secret
  static const agentsDeleteOrgSecret = RestOperationContract(
    operationId: 'agents/delete-org-secret',
    method: 'DELETE',
    path: '/orgs/{org}/agents/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/agents/variables/{name}`
  /// Delete an organization variable
  static const agentsDeleteOrgVariable = RestOperationContract(
    operationId: 'agents/delete-org-variable',
    method: 'DELETE',
    path: '/orgs/{org}/agents/variables/{name}',
    pathParams: ['name', 'org'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/agents/secrets/{secret_name}`
  /// Delete a repository secret
  static const agentsDeleteRepoSecret = RestOperationContract(
    operationId: 'agents/delete-repo-secret',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/agents/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/agents/variables/{name}`
  /// Delete a repository variable
  static const agentsDeleteRepoVariable = RestOperationContract(
    operationId: 'agents/delete-repo-variable',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/agents/variables/{name}',
    pathParams: ['name', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/agents/secrets/public-key`
  /// Get an organization public key
  static const agentsGetOrgPublicKey = RestOperationContract(
    operationId: 'agents/get-org-public-key',
    method: 'GET',
    path: '/orgs/{org}/agents/secrets/public-key',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/agents/secrets/{secret_name}`
  /// Get an organization secret
  static const agentsGetOrgSecret = RestOperationContract(
    operationId: 'agents/get-org-secret',
    method: 'GET',
    path: '/orgs/{org}/agents/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
  );

  /// `GET /orgs/{org}/agents/variables/{name}`
  /// Get an organization variable
  static const agentsGetOrgVariable = RestOperationContract(
    operationId: 'agents/get-org-variable',
    method: 'GET',
    path: '/orgs/{org}/agents/variables/{name}',
    pathParams: ['name', 'org'],
  );

  /// `GET /repos/{owner}/{repo}/agents/secrets/public-key`
  /// Get a repository public key
  static const agentsGetRepoPublicKey = RestOperationContract(
    operationId: 'agents/get-repo-public-key',
    method: 'GET',
    path: '/repos/{owner}/{repo}/agents/secrets/public-key',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/agents/secrets/{secret_name}`
  /// Get a repository secret
  static const agentsGetRepoSecret = RestOperationContract(
    operationId: 'agents/get-repo-secret',
    method: 'GET',
    path: '/repos/{owner}/{repo}/agents/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
  );

  /// `GET /repos/{owner}/{repo}/agents/variables/{name}`
  /// Get a repository variable
  static const agentsGetRepoVariable = RestOperationContract(
    operationId: 'agents/get-repo-variable',
    method: 'GET',
    path: '/repos/{owner}/{repo}/agents/variables/{name}',
    pathParams: ['name', 'owner', 'repo'],
  );

  /// `GET /orgs/{org}/agents/secrets`
  /// List organization secrets
  static const agentsListOrgSecrets = RestOperationContract(
    operationId: 'agents/list-org-secrets',
    method: 'GET',
    path: '/orgs/{org}/agents/secrets',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/agents/variables`
  /// List organization variables
  static const agentsListOrgVariables = RestOperationContract(
    operationId: 'agents/list-org-variables',
    method: 'GET',
    path: '/orgs/{org}/agents/variables',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/agents/organization-secrets`
  /// List repository organization secrets
  static const agentsListRepoOrganizationSecrets = RestOperationContract(
    operationId: 'agents/list-repo-organization-secrets',
    method: 'GET',
    path: '/repos/{owner}/{repo}/agents/organization-secrets',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/agents/organization-variables`
  /// List repository organization variables
  static const agentsListRepoOrganizationVariables = RestOperationContract(
    operationId: 'agents/list-repo-organization-variables',
    method: 'GET',
    path: '/repos/{owner}/{repo}/agents/organization-variables',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/agents/secrets`
  /// List repository secrets
  static const agentsListRepoSecrets = RestOperationContract(
    operationId: 'agents/list-repo-secrets',
    method: 'GET',
    path: '/repos/{owner}/{repo}/agents/secrets',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/agents/variables`
  /// List repository variables
  static const agentsListRepoVariables = RestOperationContract(
    operationId: 'agents/list-repo-variables',
    method: 'GET',
    path: '/repos/{owner}/{repo}/agents/variables',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/agents/secrets/{secret_name}/repositories`
  /// List selected repositories for an organization secret
  static const agentsListSelectedReposForOrgSecret = RestOperationContract(
    operationId: 'agents/list-selected-repos-for-org-secret',
    method: 'GET',
    path: '/orgs/{org}/agents/secrets/{secret_name}/repositories',
    pathParams: ['org', 'secret_name'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/agents/variables/{name}/repositories`
  /// List selected repositories for an organization variable
  static const agentsListSelectedReposForOrgVariable = RestOperationContract(
    operationId: 'agents/list-selected-repos-for-org-variable',
    method: 'GET',
    path: '/orgs/{org}/agents/variables/{name}/repositories',
    pathParams: ['name', 'org'],
    queryParams: ['page', 'per_page'],
  );

  /// `DELETE /orgs/{org}/agents/secrets/{secret_name}/repositories/{repository_id}`
  /// Remove selected repository from an organization secret
  static const agentsRemoveSelectedRepoFromOrgSecret = RestOperationContract(
    operationId: 'agents/remove-selected-repo-from-org-secret',
    method: 'DELETE',
    path:
        '/orgs/{org}/agents/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/agents/variables/{name}/repositories/{repository_id}`
  /// Remove selected repository from an organization variable
  static const agentsRemoveSelectedRepoFromOrgVariable = RestOperationContract(
    operationId: 'agents/remove-selected-repo-from-org-variable',
    method: 'DELETE',
    path: '/orgs/{org}/agents/variables/{name}/repositories/{repository_id}',
    pathParams: ['name', 'org', 'repository_id'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/agents/secrets/{secret_name}/repositories`
  /// Set selected repositories for an organization secret
  static const agentsSetSelectedReposForOrgSecret = RestOperationContract(
    operationId: 'agents/set-selected-repos-for-org-secret',
    method: 'PUT',
    path: '/orgs/{org}/agents/secrets/{secret_name}/repositories',
    pathParams: ['org', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/agents/variables/{name}/repositories`
  /// Set selected repositories for an organization variable
  static const agentsSetSelectedReposForOrgVariable = RestOperationContract(
    operationId: 'agents/set-selected-repos-for-org-variable',
    method: 'PUT',
    path: '/orgs/{org}/agents/variables/{name}/repositories',
    pathParams: ['name', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PATCH /orgs/{org}/agents/variables/{name}`
  /// Update an organization variable
  static const agentsUpdateOrgVariable = RestOperationContract(
    operationId: 'agents/update-org-variable',
    method: 'PATCH',
    path: '/orgs/{org}/agents/variables/{name}',
    pathParams: ['name', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PATCH /repos/{owner}/{repo}/agents/variables/{name}`
  /// Update a repository variable
  static const agentsUpdateRepoVariable = RestOperationContract(
    operationId: 'agents/update-repo-variable',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/agents/variables/{name}',
    pathParams: ['name', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/insights/api/route-stats/{actor_type}/{actor_id}`
  /// Get route stats by actor
  static const apiInsightsGetRouteStatsByActor = RestOperationContract(
    operationId: 'api-insights/get-route-stats-by-actor',
    method: 'GET',
    path: '/orgs/{org}/insights/api/route-stats/{actor_type}/{actor_id}',
    pathParams: ['actor_id', 'actor_type', 'org'],
    queryParams: [
      'api_route_substring',
      'direction',
      'max_timestamp',
      'min_timestamp',
      'page',
      'per_page',
      'sort'
    ],
  );

  /// `GET /orgs/{org}/insights/api/subject-stats`
  /// Get subject stats
  static const apiInsightsGetSubjectStats = RestOperationContract(
    operationId: 'api-insights/get-subject-stats',
    method: 'GET',
    path: '/orgs/{org}/insights/api/subject-stats',
    pathParams: ['org'],
    queryParams: [
      'direction',
      'max_timestamp',
      'min_timestamp',
      'page',
      'per_page',
      'sort',
      'subject_name_substring'
    ],
  );

  /// `GET /orgs/{org}/insights/api/summary-stats`
  /// Get summary stats
  static const apiInsightsGetSummaryStats = RestOperationContract(
    operationId: 'api-insights/get-summary-stats',
    method: 'GET',
    path: '/orgs/{org}/insights/api/summary-stats',
    pathParams: ['org'],
    queryParams: ['max_timestamp', 'min_timestamp'],
  );

  /// `GET /orgs/{org}/insights/api/summary-stats/{actor_type}/{actor_id}`
  /// Get summary stats by actor
  static const apiInsightsGetSummaryStatsByActor = RestOperationContract(
    operationId: 'api-insights/get-summary-stats-by-actor',
    method: 'GET',
    path: '/orgs/{org}/insights/api/summary-stats/{actor_type}/{actor_id}',
    pathParams: ['actor_id', 'actor_type', 'org'],
    queryParams: ['max_timestamp', 'min_timestamp'],
  );

  /// `GET /orgs/{org}/insights/api/summary-stats/users/{user_id}`
  /// Get summary stats by user
  static const apiInsightsGetSummaryStatsByUser = RestOperationContract(
    operationId: 'api-insights/get-summary-stats-by-user',
    method: 'GET',
    path: '/orgs/{org}/insights/api/summary-stats/users/{user_id}',
    pathParams: ['org', 'user_id'],
    queryParams: ['max_timestamp', 'min_timestamp'],
  );

  /// `GET /orgs/{org}/insights/api/time-stats`
  /// Get time stats
  static const apiInsightsGetTimeStats = RestOperationContract(
    operationId: 'api-insights/get-time-stats',
    method: 'GET',
    path: '/orgs/{org}/insights/api/time-stats',
    pathParams: ['org'],
    queryParams: ['max_timestamp', 'min_timestamp', 'timestamp_increment'],
  );

  /// `GET /orgs/{org}/insights/api/time-stats/{actor_type}/{actor_id}`
  /// Get time stats by actor
  static const apiInsightsGetTimeStatsByActor = RestOperationContract(
    operationId: 'api-insights/get-time-stats-by-actor',
    method: 'GET',
    path: '/orgs/{org}/insights/api/time-stats/{actor_type}/{actor_id}',
    pathParams: ['actor_id', 'actor_type', 'org'],
    queryParams: ['max_timestamp', 'min_timestamp', 'timestamp_increment'],
  );

  /// `GET /orgs/{org}/insights/api/time-stats/users/{user_id}`
  /// Get time stats by user
  static const apiInsightsGetTimeStatsByUser = RestOperationContract(
    operationId: 'api-insights/get-time-stats-by-user',
    method: 'GET',
    path: '/orgs/{org}/insights/api/time-stats/users/{user_id}',
    pathParams: ['org', 'user_id'],
    queryParams: ['max_timestamp', 'min_timestamp', 'timestamp_increment'],
  );

  /// `GET /orgs/{org}/insights/api/user-stats/{user_id}`
  /// Get user stats
  static const apiInsightsGetUserStats = RestOperationContract(
    operationId: 'api-insights/get-user-stats',
    method: 'GET',
    path: '/orgs/{org}/insights/api/user-stats/{user_id}',
    pathParams: ['org', 'user_id'],
    queryParams: [
      'actor_name_substring',
      'direction',
      'max_timestamp',
      'min_timestamp',
      'page',
      'per_page',
      'sort'
    ],
  );

  /// `PUT /user/installations/{installation_id}/repositories/{repository_id}`
  /// Add a repository to an app installation
  static const appsAddRepoToInstallationForAuthenticatedUser =
      RestOperationContract(
    operationId: 'apps/add-repo-to-installation-for-authenticated-user',
    method: 'PUT',
    path: '/user/installations/{installation_id}/repositories/{repository_id}',
    pathParams: ['installation_id', 'repository_id'],
    successStatuses: [204],
  );

  /// `POST /applications/{client_id}/token`
  /// Check a token
  static const appsCheckToken = RestOperationContract(
    operationId: 'apps/check-token',
    method: 'POST',
    path: '/applications/{client_id}/token',
    pathParams: ['client_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /app-manifests/{code}/conversions`
  /// Create a GitHub App from a manifest
  static const appsCreateFromManifest = RestOperationContract(
    operationId: 'apps/create-from-manifest',
    method: 'POST',
    path: '/app-manifests/{code}/conversions',
    pathParams: ['code'],
    successStatuses: [201],
  );

  /// `POST /app/installations/{installation_id}/access_tokens`
  /// Create an installation access token for an app
  static const appsCreateInstallationAccessToken = RestOperationContract(
    operationId: 'apps/create-installation-access-token',
    method: 'POST',
    path: '/app/installations/{installation_id}/access_tokens',
    pathParams: ['installation_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /applications/{client_id}/grant`
  /// Delete an app authorization
  static const appsDeleteAuthorization = RestOperationContract(
    operationId: 'apps/delete-authorization',
    method: 'DELETE',
    path: '/applications/{client_id}/grant',
    pathParams: ['client_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `DELETE /app/installations/{installation_id}`
  /// Delete an installation for the authenticated app
  static const appsDeleteInstallation = RestOperationContract(
    operationId: 'apps/delete-installation',
    method: 'DELETE',
    path: '/app/installations/{installation_id}',
    pathParams: ['installation_id'],
    successStatuses: [204],
  );

  /// `DELETE /applications/{client_id}/token`
  /// Delete an app token
  static const appsDeleteToken = RestOperationContract(
    operationId: 'apps/delete-token',
    method: 'DELETE',
    path: '/applications/{client_id}/token',
    pathParams: ['client_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `GET /app`
  /// Get the authenticated app
  static const appsGetAuthenticated = RestOperationContract(
    operationId: 'apps/get-authenticated',
    method: 'GET',
    path: '/app',
  );

  /// `GET /apps/{app_slug}`
  /// Get an app
  static const appsGetBySlug = RestOperationContract(
    operationId: 'apps/get-by-slug',
    method: 'GET',
    path: '/apps/{app_slug}',
    pathParams: ['app_slug'],
  );

  /// `GET /app/installations/{installation_id}`
  /// Get an installation for the authenticated app
  static const appsGetInstallation = RestOperationContract(
    operationId: 'apps/get-installation',
    method: 'GET',
    path: '/app/installations/{installation_id}',
    pathParams: ['installation_id'],
  );

  /// `GET /orgs/{org}/installation`
  /// Get an organization installation for the authenticated app
  static const appsGetOrgInstallation = RestOperationContract(
    operationId: 'apps/get-org-installation',
    method: 'GET',
    path: '/orgs/{org}/installation',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/installation`
  /// Get a repository installation for the authenticated app
  static const appsGetRepoInstallation = RestOperationContract(
    operationId: 'apps/get-repo-installation',
    method: 'GET',
    path: '/repos/{owner}/{repo}/installation',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /marketplace_listing/accounts/{account_id}`
  /// Get a subscription plan for an account
  static const appsGetSubscriptionPlanForAccount = RestOperationContract(
    operationId: 'apps/get-subscription-plan-for-account',
    method: 'GET',
    path: '/marketplace_listing/accounts/{account_id}',
    pathParams: ['account_id'],
  );

  /// `GET /marketplace_listing/stubbed/accounts/{account_id}`
  /// Get a subscription plan for an account (stubbed)
  static const appsGetSubscriptionPlanForAccountStubbed = RestOperationContract(
    operationId: 'apps/get-subscription-plan-for-account-stubbed',
    method: 'GET',
    path: '/marketplace_listing/stubbed/accounts/{account_id}',
    pathParams: ['account_id'],
  );

  /// `GET /users/{username}/installation`
  /// Get a user installation for the authenticated app
  static const appsGetUserInstallation = RestOperationContract(
    operationId: 'apps/get-user-installation',
    method: 'GET',
    path: '/users/{username}/installation',
    pathParams: ['username'],
  );

  /// `GET /app/hook/config`
  /// Get a webhook configuration for an app
  static const appsGetWebhookConfigForApp = RestOperationContract(
    operationId: 'apps/get-webhook-config-for-app',
    method: 'GET',
    path: '/app/hook/config',
  );

  /// `GET /app/hook/deliveries/{delivery_id}`
  /// Get a delivery for an app webhook
  static const appsGetWebhookDelivery = RestOperationContract(
    operationId: 'apps/get-webhook-delivery',
    method: 'GET',
    path: '/app/hook/deliveries/{delivery_id}',
    pathParams: ['delivery_id'],
  );

  /// `GET /marketplace_listing/plans/{plan_id}/accounts`
  /// List accounts for a plan
  static const appsListAccountsForPlan = RestOperationContract(
    operationId: 'apps/list-accounts-for-plan',
    method: 'GET',
    path: '/marketplace_listing/plans/{plan_id}/accounts',
    pathParams: ['plan_id'],
    queryParams: ['direction', 'page', 'per_page', 'sort'],
  );

  /// `GET /marketplace_listing/stubbed/plans/{plan_id}/accounts`
  /// List accounts for a plan (stubbed)
  static const appsListAccountsForPlanStubbed = RestOperationContract(
    operationId: 'apps/list-accounts-for-plan-stubbed',
    method: 'GET',
    path: '/marketplace_listing/stubbed/plans/{plan_id}/accounts',
    pathParams: ['plan_id'],
    queryParams: ['direction', 'page', 'per_page', 'sort'],
  );

  /// `GET /user/installations/{installation_id}/repositories`
  /// List repositories accessible to the user access token
  static const appsListInstallationReposForAuthenticatedUser =
      RestOperationContract(
    operationId: 'apps/list-installation-repos-for-authenticated-user',
    method: 'GET',
    path: '/user/installations/{installation_id}/repositories',
    pathParams: ['installation_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /app/installation-requests`
  /// List installation requests for the authenticated app
  static const appsListInstallationRequestsForAuthenticatedApp =
      RestOperationContract(
    operationId: 'apps/list-installation-requests-for-authenticated-app',
    method: 'GET',
    path: '/app/installation-requests',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /app/installations`
  /// List installations for the authenticated app
  static const appsListInstallations = RestOperationContract(
    operationId: 'apps/list-installations',
    method: 'GET',
    path: '/app/installations',
    queryParams: ['outdated', 'page', 'per_page', 'since'],
  );

  /// `GET /user/installations`
  /// List app installations accessible to the user access token
  static const appsListInstallationsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'apps/list-installations-for-authenticated-user',
    method: 'GET',
    path: '/user/installations',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /marketplace_listing/plans`
  /// List plans
  static const appsListPlans = RestOperationContract(
    operationId: 'apps/list-plans',
    method: 'GET',
    path: '/marketplace_listing/plans',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /marketplace_listing/stubbed/plans`
  /// List plans (stubbed)
  static const appsListPlansStubbed = RestOperationContract(
    operationId: 'apps/list-plans-stubbed',
    method: 'GET',
    path: '/marketplace_listing/stubbed/plans',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /installation/repositories`
  /// List repositories accessible to the app installation
  static const appsListReposAccessibleToInstallation = RestOperationContract(
    operationId: 'apps/list-repos-accessible-to-installation',
    method: 'GET',
    path: '/installation/repositories',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/marketplace_purchases`
  /// List subscriptions for the authenticated user
  static const appsListSubscriptionsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'apps/list-subscriptions-for-authenticated-user',
    method: 'GET',
    path: '/user/marketplace_purchases',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/marketplace_purchases/stubbed`
  /// List subscriptions for the authenticated user (stubbed)
  static const appsListSubscriptionsForAuthenticatedUserStubbed =
      RestOperationContract(
    operationId: 'apps/list-subscriptions-for-authenticated-user-stubbed',
    method: 'GET',
    path: '/user/marketplace_purchases/stubbed',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /app/hook/deliveries`
  /// List deliveries for an app webhook
  static const appsListWebhookDeliveries = RestOperationContract(
    operationId: 'apps/list-webhook-deliveries',
    method: 'GET',
    path: '/app/hook/deliveries',
    queryParams: ['cursor', 'per_page', 'status'],
  );

  /// `POST /app/hook/deliveries/{delivery_id}/attempts`
  /// Redeliver a delivery for an app webhook
  static const appsRedeliverWebhookDelivery = RestOperationContract(
    operationId: 'apps/redeliver-webhook-delivery',
    method: 'POST',
    path: '/app/hook/deliveries/{delivery_id}/attempts',
    pathParams: ['delivery_id'],
    successStatuses: [202],
  );

  /// `DELETE /user/installations/{installation_id}/repositories/{repository_id}`
  /// Remove a repository from an app installation
  static const appsRemoveRepoFromInstallationForAuthenticatedUser =
      RestOperationContract(
    operationId: 'apps/remove-repo-from-installation-for-authenticated-user',
    method: 'DELETE',
    path: '/user/installations/{installation_id}/repositories/{repository_id}',
    pathParams: ['installation_id', 'repository_id'],
    successStatuses: [204],
  );

  /// `PATCH /applications/{client_id}/token`
  /// Reset a token
  static const appsResetToken = RestOperationContract(
    operationId: 'apps/reset-token',
    method: 'PATCH',
    path: '/applications/{client_id}/token',
    pathParams: ['client_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /installation/token`
  /// Revoke an installation access token
  static const appsRevokeInstallationAccessToken = RestOperationContract(
    operationId: 'apps/revoke-installation-access-token',
    method: 'DELETE',
    path: '/installation/token',
    successStatuses: [204],
  );

  /// `POST /applications/{client_id}/token/scoped`
  /// Create a scoped access token
  static const appsScopeToken = RestOperationContract(
    operationId: 'apps/scope-token',
    method: 'POST',
    path: '/applications/{client_id}/token/scoped',
    pathParams: ['client_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /app/installations/{installation_id}/suspended`
  /// Suspend an app installation
  static const appsSuspendInstallation = RestOperationContract(
    operationId: 'apps/suspend-installation',
    method: 'PUT',
    path: '/app/installations/{installation_id}/suspended',
    pathParams: ['installation_id'],
    successStatuses: [204],
  );

  /// `DELETE /app/installations/{installation_id}/suspended`
  /// Unsuspend an app installation
  static const appsUnsuspendInstallation = RestOperationContract(
    operationId: 'apps/unsuspend-installation',
    method: 'DELETE',
    path: '/app/installations/{installation_id}/suspended',
    pathParams: ['installation_id'],
    successStatuses: [204],
  );

  /// `PATCH /app/hook/config`
  /// Update a webhook configuration for an app
  static const appsUpdateWebhookConfigForApp = RestOperationContract(
    operationId: 'apps/update-webhook-config-for-app',
    method: 'PATCH',
    path: '/app/hook/config',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /organizations/{org}/settings/billing/budgets`
  /// Create a budget for an organization
  static const billingCreateOrganizationBudget = RestOperationContract(
    operationId: 'billing/create-organization-budget',
    method: 'POST',
    path: '/organizations/{org}/settings/billing/budgets',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /organizations/{org}/settings/billing/budgets/{budget_id}`
  /// Delete a budget for an organization
  static const billingDeleteBudgetOrg = RestOperationContract(
    operationId: 'billing/delete-budget-org',
    method: 'DELETE',
    path: '/organizations/{org}/settings/billing/budgets/{budget_id}',
    pathParams: ['budget_id', 'org'],
  );

  /// `GET /organizations/{org}/settings/billing/budgets`
  /// Get all budgets for an organization
  static const billingGetAllBudgetsOrg = RestOperationContract(
    operationId: 'billing/get-all-budgets-org',
    method: 'GET',
    path: '/organizations/{org}/settings/billing/budgets',
    pathParams: ['org'],
    queryParams: ['page', 'per_page', 'scope', 'user'],
  );

  /// `GET /organizations/{org}/settings/billing/budgets/{budget_id}`
  /// Get a budget by ID for an organization
  static const billingGetBudgetOrg = RestOperationContract(
    operationId: 'billing/get-budget-org',
    method: 'GET',
    path: '/organizations/{org}/settings/billing/budgets/{budget_id}',
    pathParams: ['budget_id', 'org'],
  );

  /// `GET /organizations/{org}/settings/billing/ai_credit/usage`
  /// Get billing AI credit usage report for an organization
  static const billingGetGithubBillingAiCreditUsageReportOrg =
      RestOperationContract(
    operationId: 'billing/get-github-billing-ai-credit-usage-report-org',
    method: 'GET',
    path: '/organizations/{org}/settings/billing/ai_credit/usage',
    pathParams: ['org'],
    queryParams: ['day', 'model', 'month', 'product', 'user', 'year'],
  );

  /// `GET /users/{username}/settings/billing/ai_credit/usage`
  /// Get billing AI credit usage report for a user
  static const billingGetGithubBillingAiCreditUsageReportUser =
      RestOperationContract(
    operationId: 'billing/get-github-billing-ai-credit-usage-report-user',
    method: 'GET',
    path: '/users/{username}/settings/billing/ai_credit/usage',
    pathParams: ['username'],
    queryParams: ['day', 'model', 'month', 'product', 'year'],
  );

  /// `GET /organizations/{org}/settings/billing/premium_request/usage`
  /// Get billing premium request usage report for an organization
  static const billingGetGithubBillingPremiumRequestUsageReportOrg =
      RestOperationContract(
    operationId: 'billing/get-github-billing-premium-request-usage-report-org',
    method: 'GET',
    path: '/organizations/{org}/settings/billing/premium_request/usage',
    pathParams: ['org'],
    queryParams: ['day', 'model', 'month', 'product', 'user', 'year'],
  );

  /// `GET /users/{username}/settings/billing/premium_request/usage`
  /// Get billing premium request usage report for a user
  static const billingGetGithubBillingPremiumRequestUsageReportUser =
      RestOperationContract(
    operationId: 'billing/get-github-billing-premium-request-usage-report-user',
    method: 'GET',
    path: '/users/{username}/settings/billing/premium_request/usage',
    pathParams: ['username'],
    queryParams: ['day', 'model', 'month', 'product', 'year'],
  );

  /// `GET /organizations/{org}/settings/billing/usage`
  /// Get billing usage report for an organization
  static const billingGetGithubBillingUsageReportOrg = RestOperationContract(
    operationId: 'billing/get-github-billing-usage-report-org',
    method: 'GET',
    path: '/organizations/{org}/settings/billing/usage',
    pathParams: ['org'],
    queryParams: ['day', 'month', 'year'],
  );

  /// `GET /users/{username}/settings/billing/usage`
  /// Get billing usage report for a user
  static const billingGetGithubBillingUsageReportUser = RestOperationContract(
    operationId: 'billing/get-github-billing-usage-report-user',
    method: 'GET',
    path: '/users/{username}/settings/billing/usage',
    pathParams: ['username'],
    queryParams: ['day', 'month', 'year'],
  );

  /// `GET /organizations/{org}/settings/billing/usage/summary`
  /// Get billing usage summary for an organization
  static const billingGetGithubBillingUsageSummaryReportOrg =
      RestOperationContract(
    operationId: 'billing/get-github-billing-usage-summary-report-org',
    method: 'GET',
    path: '/organizations/{org}/settings/billing/usage/summary',
    pathParams: ['org'],
    queryParams: ['day', 'month', 'product', 'repository', 'sku', 'year'],
  );

  /// `GET /users/{username}/settings/billing/usage/summary`
  /// Get billing usage summary for a user
  static const billingGetGithubBillingUsageSummaryReportUser =
      RestOperationContract(
    operationId: 'billing/get-github-billing-usage-summary-report-user',
    method: 'GET',
    path: '/users/{username}/settings/billing/usage/summary',
    pathParams: ['username'],
    queryParams: ['day', 'month', 'product', 'repository', 'sku', 'year'],
  );

  /// `PATCH /organizations/{org}/settings/billing/budgets/{budget_id}`
  /// Update a budget for an organization
  static const billingUpdateBudgetOrg = RestOperationContract(
    operationId: 'billing/update-budget-org',
    method: 'PATCH',
    path: '/organizations/{org}/settings/billing/budgets/{budget_id}',
    pathParams: ['budget_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /orgs/{org}/campaigns`
  /// Create a campaign for an organization
  static const campaignsCreateCampaign = RestOperationContract(
    operationId: 'campaigns/create-campaign',
    method: 'POST',
    path: '/orgs/{org}/campaigns',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /orgs/{org}/campaigns/{campaign_number}`
  /// Delete a campaign for an organization
  static const campaignsDeleteCampaign = RestOperationContract(
    operationId: 'campaigns/delete-campaign',
    method: 'DELETE',
    path: '/orgs/{org}/campaigns/{campaign_number}',
    pathParams: ['campaign_number', 'org'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/campaigns/{campaign_number}`
  /// Get a campaign for an organization
  static const campaignsGetCampaignSummary = RestOperationContract(
    operationId: 'campaigns/get-campaign-summary',
    method: 'GET',
    path: '/orgs/{org}/campaigns/{campaign_number}',
    pathParams: ['campaign_number', 'org'],
  );

  /// `GET /orgs/{org}/campaigns`
  /// List campaigns for an organization
  static const campaignsListOrgCampaigns = RestOperationContract(
    operationId: 'campaigns/list-org-campaigns',
    method: 'GET',
    path: '/orgs/{org}/campaigns',
    pathParams: ['org'],
    queryParams: ['direction', 'page', 'per_page', 'sort', 'state'],
  );

  /// `PATCH /orgs/{org}/campaigns/{campaign_number}`
  /// Update a campaign
  static const campaignsUpdateCampaign = RestOperationContract(
    operationId: 'campaigns/update-campaign',
    method: 'PATCH',
    path: '/orgs/{org}/campaigns/{campaign_number}',
    pathParams: ['campaign_number', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/check-runs`
  /// Create a check run
  static const checksCreate = RestOperationContract(
    operationId: 'checks/create',
    method: 'POST',
    path: '/repos/{owner}/{repo}/check-runs',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/check-suites`
  /// Create a check suite
  static const checksCreateSuite = RestOperationContract(
    operationId: 'checks/create-suite',
    method: 'POST',
    path: '/repos/{owner}/{repo}/check-suites',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `GET /repos/{owner}/{repo}/check-runs/{check_run_id}`
  /// Get a check run
  static const checksGet = RestOperationContract(
    operationId: 'checks/get',
    method: 'GET',
    path: '/repos/{owner}/{repo}/check-runs/{check_run_id}',
    pathParams: ['check_run_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/check-suites/{check_suite_id}`
  /// Get a check suite
  static const checksGetSuite = RestOperationContract(
    operationId: 'checks/get-suite',
    method: 'GET',
    path: '/repos/{owner}/{repo}/check-suites/{check_suite_id}',
    pathParams: ['check_suite_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/check-runs/{check_run_id}/annotations`
  /// List check run annotations
  static const checksListAnnotations = RestOperationContract(
    operationId: 'checks/list-annotations',
    method: 'GET',
    path: '/repos/{owner}/{repo}/check-runs/{check_run_id}/annotations',
    pathParams: ['check_run_id', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/commits/{ref}/check-runs`
  /// List check runs for a Git reference
  static const checksListForRef = RestOperationContract(
    operationId: 'checks/list-for-ref',
    method: 'GET',
    path: '/repos/{owner}/{repo}/commits/{ref}/check-runs',
    pathParams: ['owner', 'ref', 'repo'],
    queryParams: [
      'app_id',
      'check_name',
      'filter',
      'page',
      'per_page',
      'status'
    ],
  );

  /// `GET /repos/{owner}/{repo}/check-suites/{check_suite_id}/check-runs`
  /// List check runs in a check suite
  static const checksListForSuite = RestOperationContract(
    operationId: 'checks/list-for-suite',
    method: 'GET',
    path: '/repos/{owner}/{repo}/check-suites/{check_suite_id}/check-runs',
    pathParams: ['check_suite_id', 'owner', 'repo'],
    queryParams: ['check_name', 'filter', 'page', 'per_page', 'status'],
  );

  /// `GET /repos/{owner}/{repo}/commits/{ref}/check-suites`
  /// List check suites for a Git reference
  static const checksListSuitesForRef = RestOperationContract(
    operationId: 'checks/list-suites-for-ref',
    method: 'GET',
    path: '/repos/{owner}/{repo}/commits/{ref}/check-suites',
    pathParams: ['owner', 'ref', 'repo'],
    queryParams: ['app_id', 'check_name', 'page', 'per_page'],
  );

  /// `POST /repos/{owner}/{repo}/check-runs/{check_run_id}/rerequest`
  /// Rerequest a check run
  static const checksRerequestRun = RestOperationContract(
    operationId: 'checks/rerequest-run',
    method: 'POST',
    path: '/repos/{owner}/{repo}/check-runs/{check_run_id}/rerequest',
    pathParams: ['check_run_id', 'owner', 'repo'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/check-suites/{check_suite_id}/rerequest`
  /// Rerequest a check suite
  static const checksRerequestSuite = RestOperationContract(
    operationId: 'checks/rerequest-suite',
    method: 'POST',
    path: '/repos/{owner}/{repo}/check-suites/{check_suite_id}/rerequest',
    pathParams: ['check_suite_id', 'owner', 'repo'],
    successStatuses: [201],
  );

  /// `PATCH /repos/{owner}/{repo}/check-suites/preferences`
  /// Update repository preferences for check suites
  static const checksSetSuitesPreferences = RestOperationContract(
    operationId: 'checks/set-suites-preferences',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/check-suites/preferences',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/check-runs/{check_run_id}`
  /// Update a check run
  static const checksUpdate = RestOperationContract(
    operationId: 'checks/update',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/check-runs/{check_run_id}',
    pathParams: ['check_run_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /classrooms/{classroom_id}`
  /// Closed - Get a classroom
  static const classroomGetAClassroom = RestOperationContract(
    operationId: 'classroom/get-a-classroom',
    method: 'GET',
    path: '/classrooms/{classroom_id}',
    pathParams: ['classroom_id'],
  );

  /// `GET /assignments/{assignment_id}`
  /// Closed - Get an assignment
  static const classroomGetAnAssignment = RestOperationContract(
    operationId: 'classroom/get-an-assignment',
    method: 'GET',
    path: '/assignments/{assignment_id}',
    pathParams: ['assignment_id'],
  );

  /// `GET /assignments/{assignment_id}/grades`
  /// Closed - Get assignment grades
  static const classroomGetAssignmentGrades = RestOperationContract(
    operationId: 'classroom/get-assignment-grades',
    method: 'GET',
    path: '/assignments/{assignment_id}/grades',
    pathParams: ['assignment_id'],
  );

  /// `GET /assignments/{assignment_id}/accepted_assignments`
  /// Closed - List accepted assignments for an assignment
  static const classroomListAcceptedAssignmentsForAnAssignment =
      RestOperationContract(
    operationId: 'classroom/list-accepted-assignments-for-an-assignment',
    method: 'GET',
    path: '/assignments/{assignment_id}/accepted_assignments',
    pathParams: ['assignment_id'],
  );

  /// `GET /classrooms/{classroom_id}/assignments`
  /// Closed - List assignments for a classroom
  static const classroomListAssignmentsForAClassroom = RestOperationContract(
    operationId: 'classroom/list-assignments-for-a-classroom',
    method: 'GET',
    path: '/classrooms/{classroom_id}/assignments',
    pathParams: ['classroom_id'],
  );

  /// `GET /classrooms`
  /// Closed - List classrooms
  static const classroomListClassrooms = RestOperationContract(
    operationId: 'classroom/list-classrooms',
    method: 'GET',
    path: '/classrooms',
  );

  /// `GET /repos/{owner}/{repo}/code-quality/findings/{finding_number}`
  /// Get a code quality finding
  static const codeQualityGetFinding = RestOperationContract(
    operationId: 'code-quality/get-finding',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-quality/findings/{finding_number}',
    pathParams: ['finding_number', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/code-quality/setup`
  /// Get a code quality setup configuration
  static const codeQualityGetSetup = RestOperationContract(
    operationId: 'code-quality/get-setup',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-quality/setup',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/code-quality/findings`
  /// List code quality findings for a repository
  static const codeQualityListFindingsForRepo = RestOperationContract(
    operationId: 'code-quality/list-findings-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-quality/findings',
    pathParams: ['owner', 'repo'],
    queryParams: ['after', 'before', 'direction', 'per_page', 'state'],
  );

  /// `PATCH /repos/{owner}/{repo}/code-quality/setup`
  /// Update a code quality setup configuration
  static const codeQualityUpdateSetup = RestOperationContract(
    operationId: 'code-quality/update-setup',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/code-quality/setup',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 202],
  );

  /// `POST /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix/commits`
  /// Commit an autofix for a code scanning alert
  static const codeScanningCommitAutofix = RestOperationContract(
    operationId: 'code-scanning/commit-autofix',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix/commits',
    pathParams: ['alert_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix`
  /// Create an autofix for a code scanning alert
  static const codeScanningCreateAutofix = RestOperationContract(
    operationId: 'code-scanning/create-autofix',
    method: 'POST',
    path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix',
    pathParams: ['alert_number', 'owner', 'repo'],
    successStatuses: [200, 202],
  );

  /// `POST /repos/{owner}/{repo}/code-scanning/codeql/variant-analyses`
  /// Create a CodeQL variant analysis
  static const codeScanningCreateVariantAnalysis = RestOperationContract(
    operationId: 'code-scanning/create-variant-analysis',
    method: 'POST',
    path: '/repos/{owner}/{repo}/code-scanning/codeql/variant-analyses',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}`
  /// Delete a code scanning analysis from a repository
  static const codeScanningDeleteAnalysis = RestOperationContract(
    operationId: 'code-scanning/delete-analysis',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}',
    pathParams: ['analysis_id', 'owner', 'repo'],
    queryParams: ['confirm_delete'],
  );

  /// `DELETE /repos/{owner}/{repo}/code-scanning/codeql/databases/{language}`
  /// Delete a CodeQL database
  static const codeScanningDeleteCodeqlDatabase = RestOperationContract(
    operationId: 'code-scanning/delete-codeql-database',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/code-scanning/codeql/databases/{language}',
    pathParams: ['language', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/ai-scan`
  /// Get AI Scan enablement for a repository
  static const codeScanningGetAiScanEnablement = RestOperationContract(
    operationId: 'code-scanning/get-ai-scan-enablement',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/ai-scan',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/code-scanning/ai-scan`
  /// Get the AI Scan setting for an organization
  static const codeScanningGetAiScanEnablementForOrg = RestOperationContract(
    operationId: 'code-scanning/get-ai-scan-enablement-for-org',
    method: 'GET',
    path: '/orgs/{org}/code-scanning/ai-scan',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}`
  /// Get a code scanning alert
  static const codeScanningGetAlert = RestOperationContract(
    operationId: 'code-scanning/get-alert',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}',
    pathParams: ['alert_number', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}`
  /// Get a code scanning analysis for a repository
  static const codeScanningGetAnalysis = RestOperationContract(
    operationId: 'code-scanning/get-analysis',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}',
    pathParams: ['analysis_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix`
  /// Get the status of an autofix for a code scanning alert
  static const codeScanningGetAutofix = RestOperationContract(
    operationId: 'code-scanning/get-autofix',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix',
    pathParams: ['alert_number', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/codeql/databases/{language}`
  /// Get a CodeQL database for a repository
  static const codeScanningGetCodeqlDatabase = RestOperationContract(
    operationId: 'code-scanning/get-codeql-database',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/codeql/databases/{language}',
    pathParams: ['language', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/default-setup`
  /// Get a code scanning default setup configuration
  static const codeScanningGetDefaultSetup = RestOperationContract(
    operationId: 'code-scanning/get-default-setup',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/default-setup',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/sarifs/{sarif_id}`
  /// Get information about a SARIF upload
  static const codeScanningGetSarif = RestOperationContract(
    operationId: 'code-scanning/get-sarif',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/sarifs/{sarif_id}',
    pathParams: ['owner', 'repo', 'sarif_id'],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/codeql/variant-analyses/{codeql_variant_analysis_id}`
  /// Get the summary of a CodeQL variant analysis
  static const codeScanningGetVariantAnalysis = RestOperationContract(
    operationId: 'code-scanning/get-variant-analysis',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/code-scanning/codeql/variant-analyses/{codeql_variant_analysis_id}',
    pathParams: ['codeql_variant_analysis_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/codeql/variant-analyses/{codeql_variant_analysis_id}/repos/{repo_owner}/{repo_name}`
  /// Get the analysis status of a repository in a CodeQL variant analysis
  static const codeScanningGetVariantAnalysisRepoTask = RestOperationContract(
    operationId: 'code-scanning/get-variant-analysis-repo-task',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/code-scanning/codeql/variant-analyses/{codeql_variant_analysis_id}/repos/{repo_owner}/{repo_name}',
    pathParams: [
      'codeql_variant_analysis_id',
      'owner',
      'repo',
      'repo_name',
      'repo_owner'
    ],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/instances`
  /// List instances of a code scanning alert
  static const codeScanningListAlertInstances = RestOperationContract(
    operationId: 'code-scanning/list-alert-instances',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/instances',
    pathParams: ['alert_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page', 'pr', 'ref'],
  );

  /// `GET /orgs/{org}/code-scanning/alerts`
  /// List code scanning alerts for an organization
  static const codeScanningListAlertsForOrg = RestOperationContract(
    operationId: 'code-scanning/list-alerts-for-org',
    method: 'GET',
    path: '/orgs/{org}/code-scanning/alerts',
    pathParams: ['org'],
    queryParams: [
      'after',
      'assignees',
      'before',
      'direction',
      'page',
      'per_page',
      'severity',
      'sort',
      'state',
      'tool_guid',
      'tool_name'
    ],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/alerts`
  /// List code scanning alerts for a repository
  static const codeScanningListAlertsForRepo = RestOperationContract(
    operationId: 'code-scanning/list-alerts-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/alerts',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'after',
      'assignees',
      'before',
      'direction',
      'page',
      'per_page',
      'pr',
      'ref',
      'severity',
      'sort',
      'state',
      'tool_guid',
      'tool_name'
    ],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/codeql/databases`
  /// List CodeQL databases for a repository
  static const codeScanningListCodeqlDatabases = RestOperationContract(
    operationId: 'code-scanning/list-codeql-databases',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/codeql/databases',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/code-scanning/analyses`
  /// List code scanning analyses for a repository
  static const codeScanningListRecentAnalyses = RestOperationContract(
    operationId: 'code-scanning/list-recent-analyses',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-scanning/analyses',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'direction',
      'page',
      'per_page',
      'pr',
      'ref',
      'sarif_id',
      'sort',
      'tool_guid',
      'tool_name'
    ],
  );

  /// `PATCH /repos/{owner}/{repo}/code-scanning/ai-scan`
  /// Update AI Scan enablement for a repository
  static const codeScanningUpdateAiScanEnablement = RestOperationContract(
    operationId: 'code-scanning/update-ai-scan-enablement',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/code-scanning/ai-scan',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/code-scanning/ai-scan`
  /// Update the AI Scan setting for an organization
  static const codeScanningUpdateAiScanEnablementForOrg = RestOperationContract(
    operationId: 'code-scanning/update-ai-scan-enablement-for-org',
    method: 'PATCH',
    path: '/orgs/{org}/code-scanning/ai-scan',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}`
  /// Update a code scanning alert
  static const codeScanningUpdateAlert = RestOperationContract(
    operationId: 'code-scanning/update-alert',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}',
    pathParams: ['alert_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/code-scanning/default-setup`
  /// Update a code scanning default setup configuration
  static const codeScanningUpdateDefaultSetup = RestOperationContract(
    operationId: 'code-scanning/update-default-setup',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/code-scanning/default-setup',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 202],
  );

  /// `POST /repos/{owner}/{repo}/code-scanning/sarifs`
  /// Upload an analysis as SARIF data
  static const codeScanningUploadSarif = RestOperationContract(
    operationId: 'code-scanning/upload-sarif',
    method: 'POST',
    path: '/repos/{owner}/{repo}/code-scanning/sarifs',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `POST /orgs/{org}/code-security/configurations/{configuration_id}/attach`
  /// Attach a configuration to repositories
  static const codeSecurityAttachConfiguration = RestOperationContract(
    operationId: 'code-security/attach-configuration',
    method: 'POST',
    path: '/orgs/{org}/code-security/configurations/{configuration_id}/attach',
    pathParams: ['configuration_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `POST /enterprises/{enterprise}/code-security/configurations/{configuration_id}/attach`
  /// Attach an enterprise configuration to repositories
  static const codeSecurityAttachEnterpriseConfiguration =
      RestOperationContract(
    operationId: 'code-security/attach-enterprise-configuration',
    method: 'POST',
    path:
        '/enterprises/{enterprise}/code-security/configurations/{configuration_id}/attach',
    pathParams: ['configuration_id', 'enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `POST /orgs/{org}/code-security/configurations`
  /// Create a code security configuration
  static const codeSecurityCreateConfiguration = RestOperationContract(
    operationId: 'code-security/create-configuration',
    method: 'POST',
    path: '/orgs/{org}/code-security/configurations',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /enterprises/{enterprise}/code-security/configurations`
  /// Create a code security configuration for an enterprise
  static const codeSecurityCreateConfigurationForEnterprise =
      RestOperationContract(
    operationId: 'code-security/create-configuration-for-enterprise',
    method: 'POST',
    path: '/enterprises/{enterprise}/code-security/configurations',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /orgs/{org}/code-security/configurations/{configuration_id}`
  /// Delete a code security configuration
  static const codeSecurityDeleteConfiguration = RestOperationContract(
    operationId: 'code-security/delete-configuration',
    method: 'DELETE',
    path: '/orgs/{org}/code-security/configurations/{configuration_id}',
    pathParams: ['configuration_id', 'org'],
    successStatuses: [204],
  );

  /// `DELETE /enterprises/{enterprise}/code-security/configurations/{configuration_id}`
  /// Delete a code security configuration for an enterprise
  static const codeSecurityDeleteConfigurationForEnterprise =
      RestOperationContract(
    operationId: 'code-security/delete-configuration-for-enterprise',
    method: 'DELETE',
    path:
        '/enterprises/{enterprise}/code-security/configurations/{configuration_id}',
    pathParams: ['configuration_id', 'enterprise'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/code-security/configurations/detach`
  /// Detach configurations from repositories
  static const codeSecurityDetachConfiguration = RestOperationContract(
    operationId: 'code-security/detach-configuration',
    method: 'DELETE',
    path: '/orgs/{org}/code-security/configurations/detach',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/code-security/configurations/{configuration_id}`
  /// Get a code security configuration
  static const codeSecurityGetConfiguration = RestOperationContract(
    operationId: 'code-security/get-configuration',
    method: 'GET',
    path: '/orgs/{org}/code-security/configurations/{configuration_id}',
    pathParams: ['configuration_id', 'org'],
  );

  /// `GET /repos/{owner}/{repo}/code-security-configuration`
  /// Get the code security configuration associated with a repository
  static const codeSecurityGetConfigurationForRepository =
      RestOperationContract(
    operationId: 'code-security/get-configuration-for-repository',
    method: 'GET',
    path: '/repos/{owner}/{repo}/code-security-configuration',
    pathParams: ['owner', 'repo'],
    successStatuses: [200, 204],
  );

  /// `GET /enterprises/{enterprise}/code-security/configurations`
  /// Get code security configurations for an enterprise
  static const codeSecurityGetConfigurationsForEnterprise =
      RestOperationContract(
    operationId: 'code-security/get-configurations-for-enterprise',
    method: 'GET',
    path: '/enterprises/{enterprise}/code-security/configurations',
    pathParams: ['enterprise'],
    queryParams: ['after', 'before', 'per_page'],
  );

  /// `GET /orgs/{org}/code-security/configurations`
  /// Get code security configurations for an organization
  static const codeSecurityGetConfigurationsForOrg = RestOperationContract(
    operationId: 'code-security/get-configurations-for-org',
    method: 'GET',
    path: '/orgs/{org}/code-security/configurations',
    pathParams: ['org'],
    queryParams: ['after', 'before', 'per_page', 'target_type'],
  );

  /// `GET /orgs/{org}/code-security/configurations/defaults`
  /// Get default code security configurations
  static const codeSecurityGetDefaultConfigurations = RestOperationContract(
    operationId: 'code-security/get-default-configurations',
    method: 'GET',
    path: '/orgs/{org}/code-security/configurations/defaults',
    pathParams: ['org'],
  );

  /// `GET /enterprises/{enterprise}/code-security/configurations/defaults`
  /// Get default code security configurations for an enterprise
  static const codeSecurityGetDefaultConfigurationsForEnterprise =
      RestOperationContract(
    operationId: 'code-security/get-default-configurations-for-enterprise',
    method: 'GET',
    path: '/enterprises/{enterprise}/code-security/configurations/defaults',
    pathParams: ['enterprise'],
  );

  /// `GET /orgs/{org}/code-security/configurations/{configuration_id}/repositories`
  /// Get repositories associated with a code security configuration
  static const codeSecurityGetRepositoriesForConfiguration =
      RestOperationContract(
    operationId: 'code-security/get-repositories-for-configuration',
    method: 'GET',
    path:
        '/orgs/{org}/code-security/configurations/{configuration_id}/repositories',
    pathParams: ['configuration_id', 'org'],
    queryParams: ['after', 'before', 'per_page', 'status'],
  );

  /// `GET /enterprises/{enterprise}/code-security/configurations/{configuration_id}/repositories`
  /// Get repositories associated with an enterprise code security configuration
  static const codeSecurityGetRepositoriesForEnterpriseConfiguration =
      RestOperationContract(
    operationId: 'code-security/get-repositories-for-enterprise-configuration',
    method: 'GET',
    path:
        '/enterprises/{enterprise}/code-security/configurations/{configuration_id}/repositories',
    pathParams: ['configuration_id', 'enterprise'],
    queryParams: ['after', 'before', 'per_page', 'status'],
  );

  /// `GET /enterprises/{enterprise}/code-security/configurations/{configuration_id}`
  /// Retrieve a code security configuration of an enterprise
  static const codeSecurityGetSingleConfigurationForEnterprise =
      RestOperationContract(
    operationId: 'code-security/get-single-configuration-for-enterprise',
    method: 'GET',
    path:
        '/enterprises/{enterprise}/code-security/configurations/{configuration_id}',
    pathParams: ['configuration_id', 'enterprise'],
  );

  /// `PUT /orgs/{org}/code-security/configurations/{configuration_id}/defaults`
  /// Set a code security configuration as a default for an organization
  static const codeSecuritySetConfigurationAsDefault = RestOperationContract(
    operationId: 'code-security/set-configuration-as-default',
    method: 'PUT',
    path:
        '/orgs/{org}/code-security/configurations/{configuration_id}/defaults',
    pathParams: ['configuration_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /enterprises/{enterprise}/code-security/configurations/{configuration_id}/defaults`
  /// Set a code security configuration as a default for an enterprise
  static const codeSecuritySetConfigurationAsDefaultForEnterprise =
      RestOperationContract(
    operationId: 'code-security/set-configuration-as-default-for-enterprise',
    method: 'PUT',
    path:
        '/enterprises/{enterprise}/code-security/configurations/{configuration_id}/defaults',
    pathParams: ['configuration_id', 'enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/code-security/configurations/{configuration_id}`
  /// Update a code security configuration
  static const codeSecurityUpdateConfiguration = RestOperationContract(
    operationId: 'code-security/update-configuration',
    method: 'PATCH',
    path: '/orgs/{org}/code-security/configurations/{configuration_id}',
    pathParams: ['configuration_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 204],
  );

  /// `PATCH /enterprises/{enterprise}/code-security/configurations/{configuration_id}`
  /// Update a custom code security configuration for an enterprise
  static const codeSecurityUpdateEnterpriseConfiguration =
      RestOperationContract(
    operationId: 'code-security/update-enterprise-configuration',
    method: 'PATCH',
    path:
        '/enterprises/{enterprise}/code-security/configurations/{configuration_id}',
    pathParams: ['configuration_id', 'enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /codes_of_conduct`
  /// Get all codes of conduct
  static const codesOfConductGetAllCodesOfConduct = RestOperationContract(
    operationId: 'codes-of-conduct/get-all-codes-of-conduct',
    method: 'GET',
    path: '/codes_of_conduct',
  );

  /// `GET /codes_of_conduct/{key}`
  /// Get a code of conduct
  static const codesOfConductGetConductCode = RestOperationContract(
    operationId: 'codes-of-conduct/get-conduct-code',
    method: 'GET',
    path: '/codes_of_conduct/{key}',
    pathParams: ['key'],
  );

  /// `PUT /user/codespaces/secrets/{secret_name}/repositories/{repository_id}`
  /// Add a selected repository to a user secret
  static const codespacesAddRepositoryForSecretForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/add-repository-for-secret-for-authenticated-user',
    method: 'PUT',
    path: '/user/codespaces/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/codespaces/secrets/{secret_name}/repositories/{repository_id}`
  /// Add selected repository to an organization secret
  static const codespacesAddSelectedRepoToOrgSecret = RestOperationContract(
    operationId: 'codespaces/add-selected-repo-to-org-secret',
    method: 'PUT',
    path:
        '/orgs/{org}/codespaces/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/codespaces/permissions_check`
  /// Check if permissions defined by a devcontainer have been accepted by the authenticated user
  static const codespacesCheckPermissionsForDevcontainer =
      RestOperationContract(
    operationId: 'codespaces/check-permissions-for-devcontainer',
    method: 'GET',
    path: '/repos/{owner}/{repo}/codespaces/permissions_check',
    pathParams: ['owner', 'repo'],
    queryParams: ['devcontainer_path', 'ref'],
  );

  /// `GET /user/codespaces/{codespace_name}/machines`
  /// List machine types for a codespace
  static const codespacesCodespaceMachinesForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/codespace-machines-for-authenticated-user',
    method: 'GET',
    path: '/user/codespaces/{codespace_name}/machines',
    pathParams: ['codespace_name'],
  );

  /// `POST /user/codespaces`
  /// Create a codespace for the authenticated user
  static const codespacesCreateForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/create-for-authenticated-user',
    method: 'POST',
    path: '/user/codespaces',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 202],
  );

  /// `PUT /orgs/{org}/codespaces/secrets/{secret_name}`
  /// Create or update an organization secret
  static const codespacesCreateOrUpdateOrgSecret = RestOperationContract(
    operationId: 'codespaces/create-or-update-org-secret',
    method: 'PUT',
    path: '/orgs/{org}/codespaces/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `PUT /repos/{owner}/{repo}/codespaces/secrets/{secret_name}`
  /// Create or update a repository secret
  static const codespacesCreateOrUpdateRepoSecret = RestOperationContract(
    operationId: 'codespaces/create-or-update-repo-secret',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/codespaces/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `PUT /user/codespaces/secrets/{secret_name}`
  /// Create or update a secret for the authenticated user
  static const codespacesCreateOrUpdateSecretForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/create-or-update-secret-for-authenticated-user',
    method: 'PUT',
    path: '/user/codespaces/secrets/{secret_name}',
    pathParams: ['secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `POST /repos/{owner}/{repo}/pulls/{pull_number}/codespaces`
  /// Create a codespace from a pull request
  static const codespacesCreateWithPrForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/create-with-pr-for-authenticated-user',
    method: 'POST',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/codespaces',
    pathParams: ['owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 202],
  );

  /// `POST /repos/{owner}/{repo}/codespaces`
  /// Create a codespace in a repository
  static const codespacesCreateWithRepoForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/create-with-repo-for-authenticated-user',
    method: 'POST',
    path: '/repos/{owner}/{repo}/codespaces',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 202],
  );

  /// `DELETE /orgs/{org}/codespaces/access/selected_users`
  /// Remove users from Codespaces access for an organization
  static const codespacesDeleteCodespacesAccessUsers = RestOperationContract(
    operationId: 'codespaces/delete-codespaces-access-users',
    method: 'DELETE',
    path: '/orgs/{org}/codespaces/access/selected_users',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `DELETE /user/codespaces/{codespace_name}`
  /// Delete a codespace for the authenticated user
  static const codespacesDeleteForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/delete-for-authenticated-user',
    method: 'DELETE',
    path: '/user/codespaces/{codespace_name}',
    pathParams: ['codespace_name'],
    successStatuses: [202],
  );

  /// `DELETE /orgs/{org}/members/{username}/codespaces/{codespace_name}`
  /// Delete a codespace from the organization
  static const codespacesDeleteFromOrganization = RestOperationContract(
    operationId: 'codespaces/delete-from-organization',
    method: 'DELETE',
    path: '/orgs/{org}/members/{username}/codespaces/{codespace_name}',
    pathParams: ['codespace_name', 'org', 'username'],
    successStatuses: [202],
  );

  /// `DELETE /orgs/{org}/codespaces/secrets/{secret_name}`
  /// Delete an organization secret
  static const codespacesDeleteOrgSecret = RestOperationContract(
    operationId: 'codespaces/delete-org-secret',
    method: 'DELETE',
    path: '/orgs/{org}/codespaces/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/codespaces/secrets/{secret_name}`
  /// Delete a repository secret
  static const codespacesDeleteRepoSecret = RestOperationContract(
    operationId: 'codespaces/delete-repo-secret',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/codespaces/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /user/codespaces/secrets/{secret_name}`
  /// Delete a secret for the authenticated user
  static const codespacesDeleteSecretForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/delete-secret-for-authenticated-user',
    method: 'DELETE',
    path: '/user/codespaces/secrets/{secret_name}',
    pathParams: ['secret_name'],
    successStatuses: [204],
  );

  /// `POST /user/codespaces/{codespace_name}/exports`
  /// Export a codespace for the authenticated user
  static const codespacesExportForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/export-for-authenticated-user',
    method: 'POST',
    path: '/user/codespaces/{codespace_name}/exports',
    pathParams: ['codespace_name'],
    successStatuses: [202],
  );

  /// `GET /orgs/{org}/members/{username}/codespaces`
  /// List codespaces for a user in organization
  static const codespacesGetCodespacesForUserInOrg = RestOperationContract(
    operationId: 'codespaces/get-codespaces-for-user-in-org',
    method: 'GET',
    path: '/orgs/{org}/members/{username}/codespaces',
    pathParams: ['org', 'username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/codespaces/{codespace_name}/exports/{export_id}`
  /// Get details about a codespace export
  static const codespacesGetExportDetailsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/get-export-details-for-authenticated-user',
    method: 'GET',
    path: '/user/codespaces/{codespace_name}/exports/{export_id}',
    pathParams: ['codespace_name', 'export_id'],
  );

  /// `GET /user/codespaces/{codespace_name}`
  /// Get a codespace for the authenticated user
  static const codespacesGetForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/get-for-authenticated-user',
    method: 'GET',
    path: '/user/codespaces/{codespace_name}',
    pathParams: ['codespace_name'],
  );

  /// `GET /orgs/{org}/codespaces/secrets/public-key`
  /// Get an organization public key
  static const codespacesGetOrgPublicKey = RestOperationContract(
    operationId: 'codespaces/get-org-public-key',
    method: 'GET',
    path: '/orgs/{org}/codespaces/secrets/public-key',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/codespaces/secrets/{secret_name}`
  /// Get an organization secret
  static const codespacesGetOrgSecret = RestOperationContract(
    operationId: 'codespaces/get-org-secret',
    method: 'GET',
    path: '/orgs/{org}/codespaces/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
  );

  /// `GET /user/codespaces/secrets/public-key`
  /// Get public key for the authenticated user
  static const codespacesGetPublicKeyForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/get-public-key-for-authenticated-user',
    method: 'GET',
    path: '/user/codespaces/secrets/public-key',
  );

  /// `GET /repos/{owner}/{repo}/codespaces/secrets/public-key`
  /// Get a repository public key
  static const codespacesGetRepoPublicKey = RestOperationContract(
    operationId: 'codespaces/get-repo-public-key',
    method: 'GET',
    path: '/repos/{owner}/{repo}/codespaces/secrets/public-key',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/codespaces/secrets/{secret_name}`
  /// Get a repository secret
  static const codespacesGetRepoSecret = RestOperationContract(
    operationId: 'codespaces/get-repo-secret',
    method: 'GET',
    path: '/repos/{owner}/{repo}/codespaces/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
  );

  /// `GET /user/codespaces/secrets/{secret_name}`
  /// Get a secret for the authenticated user
  static const codespacesGetSecretForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/get-secret-for-authenticated-user',
    method: 'GET',
    path: '/user/codespaces/secrets/{secret_name}',
    pathParams: ['secret_name'],
  );

  /// `GET /repos/{owner}/{repo}/codespaces/devcontainers`
  /// List devcontainer configurations in a repository for the authenticated user
  static const codespacesListDevcontainersInRepositoryForAuthenticatedUser =
      RestOperationContract(
    operationId:
        'codespaces/list-devcontainers-in-repository-for-authenticated-user',
    method: 'GET',
    path: '/repos/{owner}/{repo}/codespaces/devcontainers',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/codespaces`
  /// List codespaces for the authenticated user
  static const codespacesListForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/list-for-authenticated-user',
    method: 'GET',
    path: '/user/codespaces',
    queryParams: ['page', 'per_page', 'repository_id'],
  );

  /// `GET /orgs/{org}/codespaces`
  /// List codespaces for the organization
  static const codespacesListInOrganization = RestOperationContract(
    operationId: 'codespaces/list-in-organization',
    method: 'GET',
    path: '/orgs/{org}/codespaces',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/codespaces`
  /// List codespaces in a repository for the authenticated user
  static const codespacesListInRepositoryForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/list-in-repository-for-authenticated-user',
    method: 'GET',
    path: '/repos/{owner}/{repo}/codespaces',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/codespaces/secrets`
  /// List organization secrets
  static const codespacesListOrgSecrets = RestOperationContract(
    operationId: 'codespaces/list-org-secrets',
    method: 'GET',
    path: '/orgs/{org}/codespaces/secrets',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/codespaces/secrets`
  /// List repository secrets
  static const codespacesListRepoSecrets = RestOperationContract(
    operationId: 'codespaces/list-repo-secrets',
    method: 'GET',
    path: '/repos/{owner}/{repo}/codespaces/secrets',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/codespaces/secrets/{secret_name}/repositories`
  /// List selected repositories for a user secret
  static const codespacesListRepositoriesForSecretForAuthenticatedUser =
      RestOperationContract(
    operationId:
        'codespaces/list-repositories-for-secret-for-authenticated-user',
    method: 'GET',
    path: '/user/codespaces/secrets/{secret_name}/repositories',
    pathParams: ['secret_name'],
  );

  /// `GET /user/codespaces/secrets`
  /// List secrets for the authenticated user
  static const codespacesListSecretsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/list-secrets-for-authenticated-user',
    method: 'GET',
    path: '/user/codespaces/secrets',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/codespaces/secrets/{secret_name}/repositories`
  /// List selected repositories for an organization secret
  static const codespacesListSelectedReposForOrgSecret = RestOperationContract(
    operationId: 'codespaces/list-selected-repos-for-org-secret',
    method: 'GET',
    path: '/orgs/{org}/codespaces/secrets/{secret_name}/repositories',
    pathParams: ['org', 'secret_name'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/codespaces/new`
  /// Get default attributes for a codespace
  static const codespacesPreFlightWithRepoForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/pre-flight-with-repo-for-authenticated-user',
    method: 'GET',
    path: '/repos/{owner}/{repo}/codespaces/new',
    pathParams: ['owner', 'repo'],
    queryParams: ['client_ip', 'ref'],
  );

  /// `POST /user/codespaces/{codespace_name}/publish`
  /// Create a repository from an unpublished codespace
  static const codespacesPublishForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/publish-for-authenticated-user',
    method: 'POST',
    path: '/user/codespaces/{codespace_name}/publish',
    pathParams: ['codespace_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /user/codespaces/secrets/{secret_name}/repositories/{repository_id}`
  /// Remove a selected repository from a user secret
  static const codespacesRemoveRepositoryForSecretForAuthenticatedUser =
      RestOperationContract(
    operationId:
        'codespaces/remove-repository-for-secret-for-authenticated-user',
    method: 'DELETE',
    path: '/user/codespaces/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/codespaces/secrets/{secret_name}/repositories/{repository_id}`
  /// Remove selected repository from an organization secret
  static const codespacesRemoveSelectedRepoFromOrgSecret =
      RestOperationContract(
    operationId: 'codespaces/remove-selected-repo-from-org-secret',
    method: 'DELETE',
    path:
        '/orgs/{org}/codespaces/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/codespaces/machines`
  /// List available machine types for a repository
  static const codespacesRepoMachinesForAuthenticatedUser =
      RestOperationContract(
    operationId: 'codespaces/repo-machines-for-authenticated-user',
    method: 'GET',
    path: '/repos/{owner}/{repo}/codespaces/machines',
    pathParams: ['owner', 'repo'],
    queryParams: ['client_ip', 'location', 'ref'],
  );

  /// `PUT /orgs/{org}/codespaces/access`
  /// Manage access control for organization codespaces
  static const codespacesSetCodespacesAccess = RestOperationContract(
    operationId: 'codespaces/set-codespaces-access',
    method: 'PUT',
    path: '/orgs/{org}/codespaces/access',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/codespaces/access/selected_users`
  /// Add users to Codespaces access for an organization
  static const codespacesSetCodespacesAccessUsers = RestOperationContract(
    operationId: 'codespaces/set-codespaces-access-users',
    method: 'POST',
    path: '/orgs/{org}/codespaces/access/selected_users',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /user/codespaces/secrets/{secret_name}/repositories`
  /// Set selected repositories for a user secret
  static const codespacesSetRepositoriesForSecretForAuthenticatedUser =
      RestOperationContract(
    operationId:
        'codespaces/set-repositories-for-secret-for-authenticated-user',
    method: 'PUT',
    path: '/user/codespaces/secrets/{secret_name}/repositories',
    pathParams: ['secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/codespaces/secrets/{secret_name}/repositories`
  /// Set selected repositories for an organization secret
  static const codespacesSetSelectedReposForOrgSecret = RestOperationContract(
    operationId: 'codespaces/set-selected-repos-for-org-secret',
    method: 'PUT',
    path: '/orgs/{org}/codespaces/secrets/{secret_name}/repositories',
    pathParams: ['org', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /user/codespaces/{codespace_name}/start`
  /// Start a codespace for the authenticated user
  static const codespacesStartForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/start-for-authenticated-user',
    method: 'POST',
    path: '/user/codespaces/{codespace_name}/start',
    pathParams: ['codespace_name'],
  );

  /// `POST /user/codespaces/{codespace_name}/stop`
  /// Stop a codespace for the authenticated user
  static const codespacesStopForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/stop-for-authenticated-user',
    method: 'POST',
    path: '/user/codespaces/{codespace_name}/stop',
    pathParams: ['codespace_name'],
  );

  /// `POST /orgs/{org}/members/{username}/codespaces/{codespace_name}/stop`
  /// Stop a codespace for an organization user
  static const codespacesStopInOrganization = RestOperationContract(
    operationId: 'codespaces/stop-in-organization',
    method: 'POST',
    path: '/orgs/{org}/members/{username}/codespaces/{codespace_name}/stop',
    pathParams: ['codespace_name', 'org', 'username'],
  );

  /// `PATCH /user/codespaces/{codespace_name}`
  /// Update a codespace for the authenticated user
  static const codespacesUpdateForAuthenticatedUser = RestOperationContract(
    operationId: 'codespaces/update-for-authenticated-user',
    method: 'PATCH',
    path: '/user/codespaces/{codespace_name}',
    pathParams: ['codespace_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /orgs/{org}/copilot-spaces/{space_number}/collaborators`
  /// Add a collaborator to an organization Copilot Space
  static const copilotSpacesAddCollaboratorForOrg = RestOperationContract(
    operationId: 'copilot-spaces/add-collaborator-for-org',
    method: 'POST',
    path: '/orgs/{org}/copilot-spaces/{space_number}/collaborators',
    pathParams: ['org', 'space_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /users/{username}/copilot-spaces/{space_number}/collaborators`
  /// Add a collaborator to a Copilot Space for a user
  static const copilotSpacesAddCollaboratorForUser = RestOperationContract(
    operationId: 'copilot-spaces/add-collaborator-for-user',
    method: 'POST',
    path: '/users/{username}/copilot-spaces/{space_number}/collaborators',
    pathParams: ['space_number', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/copilot-spaces`
  /// Create an organization Copilot Space
  static const copilotSpacesCreateForOrg = RestOperationContract(
    operationId: 'copilot-spaces/create-for-org',
    method: 'POST',
    path: '/orgs/{org}/copilot-spaces',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /users/{username}/copilot-spaces`
  /// Create a Copilot Space for a user
  static const copilotSpacesCreateForUser = RestOperationContract(
    operationId: 'copilot-spaces/create-for-user',
    method: 'POST',
    path: '/users/{username}/copilot-spaces',
    pathParams: ['username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/copilot-spaces/{space_number}/resources`
  /// Create a resource for an organization Copilot Space
  static const copilotSpacesCreateResourceForOrg = RestOperationContract(
    operationId: 'copilot-spaces/create-resource-for-org',
    method: 'POST',
    path: '/orgs/{org}/copilot-spaces/{space_number}/resources',
    pathParams: ['org', 'space_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `POST /users/{username}/copilot-spaces/{space_number}/resources`
  /// Create a resource for a Copilot Space for a user
  static const copilotSpacesCreateResourceForUser = RestOperationContract(
    operationId: 'copilot-spaces/create-resource-for-user',
    method: 'POST',
    path: '/users/{username}/copilot-spaces/{space_number}/resources',
    pathParams: ['space_number', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `DELETE /orgs/{org}/copilot-spaces/{space_number}`
  /// Delete an organization Copilot Space
  static const copilotSpacesDeleteForOrg = RestOperationContract(
    operationId: 'copilot-spaces/delete-for-org',
    method: 'DELETE',
    path: '/orgs/{org}/copilot-spaces/{space_number}',
    pathParams: ['org', 'space_number'],
    successStatuses: [204],
  );

  /// `DELETE /users/{username}/copilot-spaces/{space_number}`
  /// Delete a Copilot Space for a user
  static const copilotSpacesDeleteForUser = RestOperationContract(
    operationId: 'copilot-spaces/delete-for-user',
    method: 'DELETE',
    path: '/users/{username}/copilot-spaces/{space_number}',
    pathParams: ['space_number', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/copilot-spaces/{space_number}/resources/{space_resource_id}`
  /// Delete a resource from an organization Copilot Space
  static const copilotSpacesDeleteResourceForOrg = RestOperationContract(
    operationId: 'copilot-spaces/delete-resource-for-org',
    method: 'DELETE',
    path:
        '/orgs/{org}/copilot-spaces/{space_number}/resources/{space_resource_id}',
    pathParams: ['org', 'space_number', 'space_resource_id'],
    successStatuses: [204],
  );

  /// `DELETE /users/{username}/copilot-spaces/{space_number}/resources/{space_resource_id}`
  /// Delete a resource from a Copilot Space for a user
  static const copilotSpacesDeleteResourceForUser = RestOperationContract(
    operationId: 'copilot-spaces/delete-resource-for-user',
    method: 'DELETE',
    path:
        '/users/{username}/copilot-spaces/{space_number}/resources/{space_resource_id}',
    pathParams: ['space_number', 'space_resource_id', 'username'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/copilot-spaces/{space_number}`
  /// Get an organization Copilot Space
  static const copilotSpacesGetForOrg = RestOperationContract(
    operationId: 'copilot-spaces/get-for-org',
    method: 'GET',
    path: '/orgs/{org}/copilot-spaces/{space_number}',
    pathParams: ['org', 'space_number'],
  );

  /// `GET /users/{username}/copilot-spaces/{space_number}`
  /// Get a Copilot Space for a user
  static const copilotSpacesGetForUser = RestOperationContract(
    operationId: 'copilot-spaces/get-for-user',
    method: 'GET',
    path: '/users/{username}/copilot-spaces/{space_number}',
    pathParams: ['space_number', 'username'],
  );

  /// `GET /orgs/{org}/copilot-spaces/{space_number}/resources/{space_resource_id}`
  /// Get a resource for an organization Copilot Space
  static const copilotSpacesGetResourceForOrg = RestOperationContract(
    operationId: 'copilot-spaces/get-resource-for-org',
    method: 'GET',
    path:
        '/orgs/{org}/copilot-spaces/{space_number}/resources/{space_resource_id}',
    pathParams: ['org', 'space_number', 'space_resource_id'],
  );

  /// `GET /users/{username}/copilot-spaces/{space_number}/resources/{space_resource_id}`
  /// Get a resource for a Copilot Space for a user
  static const copilotSpacesGetResourceForUser = RestOperationContract(
    operationId: 'copilot-spaces/get-resource-for-user',
    method: 'GET',
    path:
        '/users/{username}/copilot-spaces/{space_number}/resources/{space_resource_id}',
    pathParams: ['space_number', 'space_resource_id', 'username'],
  );

  /// `GET /orgs/{org}/copilot-spaces/{space_number}/collaborators`
  /// List collaborators for an organization Copilot Space
  static const copilotSpacesListCollaboratorsForOrg = RestOperationContract(
    operationId: 'copilot-spaces/list-collaborators-for-org',
    method: 'GET',
    path: '/orgs/{org}/copilot-spaces/{space_number}/collaborators',
    pathParams: ['org', 'space_number'],
  );

  /// `GET /users/{username}/copilot-spaces/{space_number}/collaborators`
  /// List collaborators for a Copilot Space for a user
  static const copilotSpacesListCollaboratorsForUser = RestOperationContract(
    operationId: 'copilot-spaces/list-collaborators-for-user',
    method: 'GET',
    path: '/users/{username}/copilot-spaces/{space_number}/collaborators',
    pathParams: ['space_number', 'username'],
  );

  /// `GET /orgs/{org}/copilot-spaces`
  /// List organization Copilot Spaces
  static const copilotSpacesListForOrg = RestOperationContract(
    operationId: 'copilot-spaces/list-for-org',
    method: 'GET',
    path: '/orgs/{org}/copilot-spaces',
    pathParams: ['org'],
    queryParams: ['after', 'before', 'per_page'],
  );

  /// `GET /users/{username}/copilot-spaces`
  /// List Copilot Spaces for a user
  static const copilotSpacesListForUser = RestOperationContract(
    operationId: 'copilot-spaces/list-for-user',
    method: 'GET',
    path: '/users/{username}/copilot-spaces',
    pathParams: ['username'],
    queryParams: ['after', 'before', 'per_page'],
  );

  /// `GET /orgs/{org}/copilot-spaces/{space_number}/resources`
  /// List resources for an organization Copilot Space
  static const copilotSpacesListResourcesForOrg = RestOperationContract(
    operationId: 'copilot-spaces/list-resources-for-org',
    method: 'GET',
    path: '/orgs/{org}/copilot-spaces/{space_number}/resources',
    pathParams: ['org', 'space_number'],
  );

  /// `GET /users/{username}/copilot-spaces/{space_number}/resources`
  /// List resources for a Copilot Space for a user
  static const copilotSpacesListResourcesForUser = RestOperationContract(
    operationId: 'copilot-spaces/list-resources-for-user',
    method: 'GET',
    path: '/users/{username}/copilot-spaces/{space_number}/resources',
    pathParams: ['space_number', 'username'],
  );

  /// `DELETE /orgs/{org}/copilot-spaces/{space_number}/collaborators/{actor_type}/{actor_identifier}`
  /// Remove a collaborator from an organization Copilot Space
  static const copilotSpacesRemoveCollaboratorForOrg = RestOperationContract(
    operationId: 'copilot-spaces/remove-collaborator-for-org',
    method: 'DELETE',
    path:
        '/orgs/{org}/copilot-spaces/{space_number}/collaborators/{actor_type}/{actor_identifier}',
    pathParams: ['actor_identifier', 'actor_type', 'org', 'space_number'],
    successStatuses: [204],
  );

  /// `DELETE /users/{username}/copilot-spaces/{space_number}/collaborators/{actor_type}/{actor_identifier}`
  /// Remove a collaborator from a Copilot Space for a user
  static const copilotSpacesRemoveCollaboratorForUser = RestOperationContract(
    operationId: 'copilot-spaces/remove-collaborator-for-user',
    method: 'DELETE',
    path:
        '/users/{username}/copilot-spaces/{space_number}/collaborators/{actor_type}/{actor_identifier}',
    pathParams: ['actor_identifier', 'actor_type', 'space_number', 'username'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/copilot-spaces/{space_number}/collaborators/{actor_type}/{actor_identifier}`
  /// Set a collaborator role for an organization Copilot Space
  static const copilotSpacesUpdateCollaboratorForOrg = RestOperationContract(
    operationId: 'copilot-spaces/update-collaborator-for-org',
    method: 'PUT',
    path:
        '/orgs/{org}/copilot-spaces/{space_number}/collaborators/{actor_type}/{actor_identifier}',
    pathParams: ['actor_identifier', 'actor_type', 'org', 'space_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 204],
  );

  /// `PUT /users/{username}/copilot-spaces/{space_number}/collaborators/{actor_type}/{actor_identifier}`
  /// Set a collaborator role for a Copilot Space for a user
  static const copilotSpacesUpdateCollaboratorForUser = RestOperationContract(
    operationId: 'copilot-spaces/update-collaborator-for-user',
    method: 'PUT',
    path:
        '/users/{username}/copilot-spaces/{space_number}/collaborators/{actor_type}/{actor_identifier}',
    pathParams: ['actor_identifier', 'actor_type', 'space_number', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 204],
  );

  /// `PUT /orgs/{org}/copilot-spaces/{space_number}`
  /// Set an organization Copilot Space
  static const copilotSpacesUpdateForOrg = RestOperationContract(
    operationId: 'copilot-spaces/update-for-org',
    method: 'PUT',
    path: '/orgs/{org}/copilot-spaces/{space_number}',
    pathParams: ['org', 'space_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /users/{username}/copilot-spaces/{space_number}`
  /// Set a Copilot Space for a user
  static const copilotSpacesUpdateForUser = RestOperationContract(
    operationId: 'copilot-spaces/update-for-user',
    method: 'PUT',
    path: '/users/{username}/copilot-spaces/{space_number}',
    pathParams: ['space_number', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /orgs/{org}/copilot-spaces/{space_number}/resources/{space_resource_id}`
  /// Set a resource for an organization Copilot Space
  static const copilotSpacesUpdateResourceForOrg = RestOperationContract(
    operationId: 'copilot-spaces/update-resource-for-org',
    method: 'PUT',
    path:
        '/orgs/{org}/copilot-spaces/{space_number}/resources/{space_resource_id}',
    pathParams: ['org', 'space_number', 'space_resource_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /users/{username}/copilot-spaces/{space_number}/resources/{space_resource_id}`
  /// Set a resource for a Copilot Space for a user
  static const copilotSpacesUpdateResourceForUser = RestOperationContract(
    operationId: 'copilot-spaces/update-resource-for-user',
    method: 'PUT',
    path:
        '/users/{username}/copilot-spaces/{space_number}/resources/{space_resource_id}',
    pathParams: ['space_number', 'space_resource_id', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /orgs/{org}/copilot/billing/selected_teams`
  /// Add teams to the Copilot subscription for an organization
  static const copilotAddCopilotSeatsForTeams = RestOperationContract(
    operationId: 'copilot/add-copilot-seats-for-teams',
    method: 'POST',
    path: '/orgs/{org}/copilot/billing/selected_teams',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/copilot/billing/selected_users`
  /// Add users to the Copilot subscription for an organization
  static const copilotAddCopilotSeatsForUsers = RestOperationContract(
    operationId: 'copilot/add-copilot-seats-for-users',
    method: 'POST',
    path: '/orgs/{org}/copilot/billing/selected_users',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /enterprises/{enterprise}/copilot/policies/coding_agent/organizations`
  /// Add organizations to the enterprise coding agent policy
  static const copilotAddOrganizationsToEnterpriseCodingAgentPolicy =
      RestOperationContract(
    operationId: 'copilot/add-organizations-to-enterprise-coding-agent-policy',
    method: 'POST',
    path:
        '/enterprises/{enterprise}/copilot/policies/coding_agent/organizations',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/copilot/billing/selected_teams`
  /// Remove teams from the Copilot subscription for an organization
  static const copilotCancelCopilotSeatAssignmentForTeams =
      RestOperationContract(
    operationId: 'copilot/cancel-copilot-seat-assignment-for-teams',
    method: 'DELETE',
    path: '/orgs/{org}/copilot/billing/selected_teams',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /orgs/{org}/copilot/billing/selected_users`
  /// Remove users from the Copilot subscription for an organization
  static const copilotCancelCopilotSeatAssignmentForUsers =
      RestOperationContract(
    operationId: 'copilot/cancel-copilot-seat-assignment-for-users',
    method: 'DELETE',
    path: '/orgs/{org}/copilot/billing/selected_users',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /orgs/{org}/copilot/content_exclusion`
  /// Get Copilot content exclusion rules for an organization
  static const copilotCopilotContentExclusionForOrganization =
      RestOperationContract(
    operationId: 'copilot/copilot-content-exclusion-for-organization',
    method: 'GET',
    path: '/orgs/{org}/copilot/content_exclusion',
    pathParams: ['org'],
  );

  /// `GET /enterprises/{enterprise}/copilot/metrics/reports/enterprise-1-day`
  /// Get Copilot enterprise usage metrics for a specific day
  static const copilotCopilotEnterpriseOneDayUsageMetrics =
      RestOperationContract(
    operationId: 'copilot/copilot-enterprise-one-day-usage-metrics',
    method: 'GET',
    path: '/enterprises/{enterprise}/copilot/metrics/reports/enterprise-1-day',
    pathParams: ['enterprise'],
    queryParams: ['day'],
  );

  /// `GET /enterprises/{enterprise}/copilot/metrics/reports/repos-1-day`
  /// Get Copilot enterprise repository report for a specific day
  static const copilotCopilotEnterpriseReposOneDayReport =
      RestOperationContract(
    operationId: 'copilot/copilot-enterprise-repos-one-day-report',
    method: 'GET',
    path: '/enterprises/{enterprise}/copilot/metrics/reports/repos-1-day',
    pathParams: ['enterprise'],
    queryParams: ['day'],
    successStatuses: [200, 204],
  );

  /// `GET /enterprises/{enterprise}/copilot/metrics/reports/enterprise-28-day/latest`
  /// Get Copilot enterprise usage metrics
  static const copilotCopilotEnterpriseUsageMetrics = RestOperationContract(
    operationId: 'copilot/copilot-enterprise-usage-metrics',
    method: 'GET',
    path:
        '/enterprises/{enterprise}/copilot/metrics/reports/enterprise-28-day/latest',
    pathParams: ['enterprise'],
  );

  /// `GET /enterprises/{enterprise}/copilot/metrics/reports/user-teams-1-day`
  /// Get Copilot enterprise user-teams report for a specific day
  static const copilotCopilotEnterpriseUserTeamsOneDayReport =
      RestOperationContract(
    operationId: 'copilot/copilot-enterprise-user-teams-one-day-report',
    method: 'GET',
    path: '/enterprises/{enterprise}/copilot/metrics/reports/user-teams-1-day',
    pathParams: ['enterprise'],
    queryParams: ['day'],
  );

  /// `GET /orgs/{org}/copilot/metrics/reports/organization-1-day`
  /// Get Copilot organization usage metrics for a specific day
  static const copilotCopilotOrganizationOneDayUsageMetrics =
      RestOperationContract(
    operationId: 'copilot/copilot-organization-one-day-usage-metrics',
    method: 'GET',
    path: '/orgs/{org}/copilot/metrics/reports/organization-1-day',
    pathParams: ['org'],
    queryParams: ['day'],
    successStatuses: [200, 204],
  );

  /// `GET /orgs/{org}/copilot/metrics/reports/repos-1-day`
  /// Get Copilot organization repository report for a specific day
  static const copilotCopilotOrganizationReposOneDayReport =
      RestOperationContract(
    operationId: 'copilot/copilot-organization-repos-one-day-report',
    method: 'GET',
    path: '/orgs/{org}/copilot/metrics/reports/repos-1-day',
    pathParams: ['org'],
    queryParams: ['day'],
    successStatuses: [200, 204],
  );

  /// `GET /orgs/{org}/copilot/metrics/reports/organization-28-day/latest`
  /// Get Copilot organization usage metrics
  static const copilotCopilotOrganizationUsageMetrics = RestOperationContract(
    operationId: 'copilot/copilot-organization-usage-metrics',
    method: 'GET',
    path: '/orgs/{org}/copilot/metrics/reports/organization-28-day/latest',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/copilot/metrics/reports/user-teams-1-day`
  /// Get Copilot organization user-teams report for a specific day
  static const copilotCopilotOrganizationUserTeamsOneDayReport =
      RestOperationContract(
    operationId: 'copilot/copilot-organization-user-teams-one-day-report',
    method: 'GET',
    path: '/orgs/{org}/copilot/metrics/reports/user-teams-1-day',
    pathParams: ['org'],
    queryParams: ['day'],
    successStatuses: [200, 204],
  );

  /// `GET /orgs/{org}/copilot/metrics/reports/users-1-day`
  /// Get Copilot organization users usage metrics for a specific day
  static const copilotCopilotOrganizationUsersOneDayUsageMetrics =
      RestOperationContract(
    operationId: 'copilot/copilot-organization-users-one-day-usage-metrics',
    method: 'GET',
    path: '/orgs/{org}/copilot/metrics/reports/users-1-day',
    pathParams: ['org'],
    queryParams: ['day'],
    successStatuses: [200, 204],
  );

  /// `GET /orgs/{org}/copilot/metrics/reports/users-28-day/latest`
  /// Get Copilot organization users usage metrics
  static const copilotCopilotOrganizationUsersUsageMetrics =
      RestOperationContract(
    operationId: 'copilot/copilot-organization-users-usage-metrics',
    method: 'GET',
    path: '/orgs/{org}/copilot/metrics/reports/users-28-day/latest',
    pathParams: ['org'],
  );

  /// `GET /enterprises/{enterprise}/copilot/metrics/reports/users-1-day`
  /// Get Copilot users usage metrics for a specific day
  static const copilotCopilotUsersOneDayUsageMetrics = RestOperationContract(
    operationId: 'copilot/copilot-users-one-day-usage-metrics',
    method: 'GET',
    path: '/enterprises/{enterprise}/copilot/metrics/reports/users-1-day',
    pathParams: ['enterprise'],
    queryParams: ['day'],
  );

  /// `GET /enterprises/{enterprise}/copilot/metrics/reports/users-28-day/latest`
  /// Get Copilot users usage metrics
  static const copilotCopilotUsersUsageMetrics = RestOperationContract(
    operationId: 'copilot/copilot-users-usage-metrics',
    method: 'GET',
    path:
        '/enterprises/{enterprise}/copilot/metrics/reports/users-28-day/latest',
    pathParams: ['enterprise'],
  );

  /// `DELETE /orgs/{org}/copilot/coding-agent/permissions/repositories/{repository_id}`
  /// Disable a repository for Copilot cloud agent in an organization
  static const copilotDisableCopilotCodingAgentForRepositoryInOrganization =
      RestOperationContract(
    operationId:
        'copilot/disable-copilot-coding-agent-for-repository-in-organization',
    method: 'DELETE',
    path:
        '/orgs/{org}/copilot/coding-agent/permissions/repositories/{repository_id}',
    pathParams: ['org', 'repository_id'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/copilot/coding-agent/permissions/repositories/{repository_id}`
  /// Enable a repository for Copilot cloud agent in an organization
  static const copilotEnableCopilotCodingAgentForRepositoryInOrganization =
      RestOperationContract(
    operationId:
        'copilot/enable-copilot-coding-agent-for-repository-in-organization',
    method: 'PUT',
    path:
        '/orgs/{org}/copilot/coding-agent/permissions/repositories/{repository_id}',
    pathParams: ['org', 'repository_id'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/copilot/cloud-agent/configuration`
  /// Get Copilot cloud agent configuration for a repository
  static const copilotGetCopilotCloudAgentConfiguration = RestOperationContract(
    operationId: 'copilot/get-copilot-cloud-agent-configuration',
    method: 'GET',
    path: '/repos/{owner}/{repo}/copilot/cloud-agent/configuration',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/copilot/coding-agent/permissions`
  /// Get Copilot cloud agent permissions for an organization
  static const copilotGetCopilotCodingAgentPermissionsOrganization =
      RestOperationContract(
    operationId: 'copilot/get-copilot-coding-agent-permissions-organization',
    method: 'GET',
    path: '/orgs/{org}/copilot/coding-agent/permissions',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/copilot/billing`
  /// Get Copilot seat information and settings for an organization
  static const copilotGetCopilotOrganizationDetails = RestOperationContract(
    operationId: 'copilot/get-copilot-organization-details',
    method: 'GET',
    path: '/orgs/{org}/copilot/billing',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/members/{username}/copilot`
  /// Get Copilot seat assignment details for a user
  static const copilotGetCopilotSeatDetailsForUser = RestOperationContract(
    operationId: 'copilot/get-copilot-seat-details-for-user',
    method: 'GET',
    path: '/orgs/{org}/members/{username}/copilot',
    pathParams: ['org', 'username'],
  );

  /// `GET /orgs/{org}/copilot/coding-agent/permissions/repositories`
  /// List repositories enabled for Copilot cloud agent in an organization
  static const copilotListCopilotCodingAgentSelectedRepositoriesForOrganization =
      RestOperationContract(
    operationId:
        'copilot/list-copilot-coding-agent-selected-repositories-for-organization',
    method: 'GET',
    path: '/orgs/{org}/copilot/coding-agent/permissions/repositories',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/copilot/billing/seats`
  /// List all Copilot seat assignments for an organization
  static const copilotListCopilotSeats = RestOperationContract(
    operationId: 'copilot/list-copilot-seats',
    method: 'GET',
    path: '/orgs/{org}/copilot/billing/seats',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `DELETE /enterprises/{enterprise}/copilot/policies/coding_agent/organizations`
  /// Remove organizations from the enterprise coding agent policy
  static const copilotRemoveOrganizationsFromEnterpriseCodingAgentPolicy =
      RestOperationContract(
    operationId:
        'copilot/remove-organizations-from-enterprise-coding-agent-policy',
    method: 'DELETE',
    path:
        '/enterprises/{enterprise}/copilot/policies/coding_agent/organizations',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/copilot/coding-agent/permissions`
  /// Set Copilot cloud agent permissions for an organization
  static const copilotSetCopilotCodingAgentPermissionsOrganization =
      RestOperationContract(
    operationId: 'copilot/set-copilot-coding-agent-permissions-organization',
    method: 'PUT',
    path: '/orgs/{org}/copilot/coding-agent/permissions',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/copilot/coding-agent/permissions/repositories`
  /// Set selected repositories for Copilot cloud agent in an organization
  static const copilotSetCopilotCodingAgentSelectedRepositoriesForOrganization =
      RestOperationContract(
    operationId:
        'copilot/set-copilot-coding-agent-selected-repositories-for-organization',
    method: 'PUT',
    path: '/orgs/{org}/copilot/coding-agent/permissions/repositories',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/copilot/content_exclusion`
  /// Set Copilot content exclusion rules for an organization
  static const copilotSetCopilotContentExclusionForOrganization =
      RestOperationContract(
    operationId: 'copilot/set-copilot-content-exclusion-for-organization',
    method: 'PUT',
    path: '/orgs/{org}/copilot/content_exclusion',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /enterprises/{enterprise}/copilot/policies/coding_agent`
  /// Set the coding agent policy for an enterprise
  static const copilotSetEnterpriseCodingAgentPolicy = RestOperationContract(
    operationId: 'copilot/set-enterprise-coding-agent-policy',
    method: 'PUT',
    path: '/enterprises/{enterprise}/copilot/policies/coding_agent',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /credentials/revoke`
  /// Revoke a list of credentials
  static const credentialsRevoke = RestOperationContract(
    operationId: 'credentials/revoke',
    method: 'POST',
    path: '/credentials/revoke',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `PUT /orgs/{org}/dependabot/secrets/{secret_name}/repositories/{repository_id}`
  /// Add selected repository to an organization secret
  static const dependabotAddSelectedRepoToOrgSecret = RestOperationContract(
    operationId: 'dependabot/add-selected-repo-to-org-secret',
    method: 'PUT',
    path:
        '/orgs/{org}/dependabot/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/dependabot/secrets/{secret_name}`
  /// Create or update an organization secret
  static const dependabotCreateOrUpdateOrgSecret = RestOperationContract(
    operationId: 'dependabot/create-or-update-org-secret',
    method: 'PUT',
    path: '/orgs/{org}/dependabot/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `PUT /repos/{owner}/{repo}/dependabot/secrets/{secret_name}`
  /// Create or update a repository secret
  static const dependabotCreateOrUpdateRepoSecret = RestOperationContract(
    operationId: 'dependabot/create-or-update-repo-secret',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/dependabot/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `DELETE /orgs/{org}/dependabot/secrets/{secret_name}`
  /// Delete an organization secret
  static const dependabotDeleteOrgSecret = RestOperationContract(
    operationId: 'dependabot/delete-org-secret',
    method: 'DELETE',
    path: '/orgs/{org}/dependabot/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/dependabot/secrets/{secret_name}`
  /// Delete a repository secret
  static const dependabotDeleteRepoSecret = RestOperationContract(
    operationId: 'dependabot/delete-repo-secret',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/dependabot/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/dependabot/alerts/{alert_number}`
  /// Get a Dependabot alert
  static const dependabotGetAlert = RestOperationContract(
    operationId: 'dependabot/get-alert',
    method: 'GET',
    path: '/repos/{owner}/{repo}/dependabot/alerts/{alert_number}',
    pathParams: ['alert_number', 'owner', 'repo'],
  );

  /// `GET /orgs/{org}/dependabot/secrets/public-key`
  /// Get an organization public key
  static const dependabotGetOrgPublicKey = RestOperationContract(
    operationId: 'dependabot/get-org-public-key',
    method: 'GET',
    path: '/orgs/{org}/dependabot/secrets/public-key',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/dependabot/secrets/{secret_name}`
  /// Get an organization secret
  static const dependabotGetOrgSecret = RestOperationContract(
    operationId: 'dependabot/get-org-secret',
    method: 'GET',
    path: '/orgs/{org}/dependabot/secrets/{secret_name}',
    pathParams: ['org', 'secret_name'],
  );

  /// `GET /repos/{owner}/{repo}/dependabot/secrets/public-key`
  /// Get a repository public key
  static const dependabotGetRepoPublicKey = RestOperationContract(
    operationId: 'dependabot/get-repo-public-key',
    method: 'GET',
    path: '/repos/{owner}/{repo}/dependabot/secrets/public-key',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/dependabot/secrets/{secret_name}`
  /// Get a repository secret
  static const dependabotGetRepoSecret = RestOperationContract(
    operationId: 'dependabot/get-repo-secret',
    method: 'GET',
    path: '/repos/{owner}/{repo}/dependabot/secrets/{secret_name}',
    pathParams: ['owner', 'repo', 'secret_name'],
  );

  /// `GET /enterprises/{enterprise}/dependabot/alerts`
  /// List Dependabot alerts for an enterprise
  static const dependabotListAlertsForEnterprise = RestOperationContract(
    operationId: 'dependabot/list-alerts-for-enterprise',
    method: 'GET',
    path: '/enterprises/{enterprise}/dependabot/alerts',
    pathParams: ['enterprise'],
    queryParams: [
      'after',
      'assignee',
      'before',
      'classification',
      'direction',
      'ecosystem',
      'epss_percentage',
      'has',
      'package',
      'per_page',
      'relationship',
      'scope',
      'severity',
      'sort',
      'state'
    ],
  );

  /// `GET /orgs/{org}/dependabot/alerts`
  /// List Dependabot alerts for an organization
  static const dependabotListAlertsForOrg = RestOperationContract(
    operationId: 'dependabot/list-alerts-for-org',
    method: 'GET',
    path: '/orgs/{org}/dependabot/alerts',
    pathParams: ['org'],
    queryParams: [
      'after',
      'artifact_registry',
      'artifact_registry_url',
      'assignee',
      'before',
      'classification',
      'direction',
      'ecosystem',
      'epss_percentage',
      'has',
      'package',
      'per_page',
      'relationship',
      'runtime_risk',
      'scope',
      'severity',
      'sort',
      'state'
    ],
  );

  /// `GET /repos/{owner}/{repo}/dependabot/alerts`
  /// List Dependabot alerts for a repository
  static const dependabotListAlertsForRepo = RestOperationContract(
    operationId: 'dependabot/list-alerts-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/dependabot/alerts',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'after',
      'assignee',
      'before',
      'classification',
      'direction',
      'ecosystem',
      'epss_percentage',
      'has',
      'manifest',
      'package',
      'per_page',
      'relationship',
      'scope',
      'severity',
      'sort',
      'state'
    ],
  );

  /// `GET /orgs/{org}/dependabot/secrets`
  /// List organization secrets
  static const dependabotListOrgSecrets = RestOperationContract(
    operationId: 'dependabot/list-org-secrets',
    method: 'GET',
    path: '/orgs/{org}/dependabot/secrets',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/dependabot/secrets`
  /// List repository secrets
  static const dependabotListRepoSecrets = RestOperationContract(
    operationId: 'dependabot/list-repo-secrets',
    method: 'GET',
    path: '/repos/{owner}/{repo}/dependabot/secrets',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/dependabot/secrets/{secret_name}/repositories`
  /// List selected repositories for an organization secret
  static const dependabotListSelectedReposForOrgSecret = RestOperationContract(
    operationId: 'dependabot/list-selected-repos-for-org-secret',
    method: 'GET',
    path: '/orgs/{org}/dependabot/secrets/{secret_name}/repositories',
    pathParams: ['org', 'secret_name'],
    queryParams: ['page', 'per_page'],
  );

  /// `DELETE /orgs/{org}/dependabot/secrets/{secret_name}/repositories/{repository_id}`
  /// Remove selected repository from an organization secret
  static const dependabotRemoveSelectedRepoFromOrgSecret =
      RestOperationContract(
    operationId: 'dependabot/remove-selected-repo-from-org-secret',
    method: 'DELETE',
    path:
        '/orgs/{org}/dependabot/secrets/{secret_name}/repositories/{repository_id}',
    pathParams: ['org', 'repository_id', 'secret_name'],
    successStatuses: [204],
  );

  /// `GET /enterprises/{enterprise}/dependabot/repository-access`
  /// Lists the repositories Dependabot can access in an enterprise
  static const dependabotRepositoryAccessForEnterprise = RestOperationContract(
    operationId: 'dependabot/repository-access-for-enterprise',
    method: 'GET',
    path: '/enterprises/{enterprise}/dependabot/repository-access',
    pathParams: ['enterprise'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/dependabot/repository-access`
  /// Lists the repositories Dependabot can access in an organization
  static const dependabotRepositoryAccessForOrg = RestOperationContract(
    operationId: 'dependabot/repository-access-for-org',
    method: 'GET',
    path: '/orgs/{org}/dependabot/repository-access',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `PUT /orgs/{org}/dependabot/repository-access/default-level`
  /// Set the default repository access level for Dependabot
  static const dependabotSetRepositoryAccessDefaultLevel =
      RestOperationContract(
    operationId: 'dependabot/set-repository-access-default-level',
    method: 'PUT',
    path: '/orgs/{org}/dependabot/repository-access/default-level',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /enterprises/{enterprise}/dependabot/repository-access/default-level`
  /// Set the default repository access level for Dependabot in an enterprise
  static const dependabotSetRepositoryAccessDefaultLevelForEnterprise =
      RestOperationContract(
    operationId:
        'dependabot/set-repository-access-default-level-for-enterprise',
    method: 'PUT',
    path:
        '/enterprises/{enterprise}/dependabot/repository-access/default-level',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/dependabot/secrets/{secret_name}/repositories`
  /// Set selected repositories for an organization secret
  static const dependabotSetSelectedReposForOrgSecret = RestOperationContract(
    operationId: 'dependabot/set-selected-repos-for-org-secret',
    method: 'PUT',
    path: '/orgs/{org}/dependabot/secrets/{secret_name}/repositories',
    pathParams: ['org', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PATCH /repos/{owner}/{repo}/dependabot/alerts/{alert_number}`
  /// Update a Dependabot alert
  static const dependabotUpdateAlert = RestOperationContract(
    operationId: 'dependabot/update-alert',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/dependabot/alerts/{alert_number}',
    pathParams: ['alert_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /enterprises/{enterprise}/dependabot/repository-access`
  /// Updates Dependabot's repository access list for an enterprise
  static const dependabotUpdateRepositoryAccessForEnterprise =
      RestOperationContract(
    operationId: 'dependabot/update-repository-access-for-enterprise',
    method: 'PATCH',
    path: '/enterprises/{enterprise}/dependabot/repository-access',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PATCH /orgs/{org}/dependabot/repository-access`
  /// Updates Dependabot's repository access list for an organization
  static const dependabotUpdateRepositoryAccessForOrg = RestOperationContract(
    operationId: 'dependabot/update-repository-access-for-org',
    method: 'PATCH',
    path: '/orgs/{org}/dependabot/repository-access',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/dependency-graph/snapshots`
  /// Create a snapshot of dependencies for a repository
  static const dependencyGraphCreateRepositorySnapshot = RestOperationContract(
    operationId: 'dependency-graph/create-repository-snapshot',
    method: 'POST',
    path: '/repos/{owner}/{repo}/dependency-graph/snapshots',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `GET /repos/{owner}/{repo}/dependency-graph/compare/{basehead}`
  /// Get a diff of the dependencies between commits
  static const dependencyGraphDiffRange = RestOperationContract(
    operationId: 'dependency-graph/diff-range',
    method: 'GET',
    path: '/repos/{owner}/{repo}/dependency-graph/compare/{basehead}',
    pathParams: ['basehead', 'owner', 'repo'],
    queryParams: ['name'],
  );

  /// `GET /repos/{owner}/{repo}/dependency-graph/sbom`
  /// Export a software bill of materials (SBOM) for a repository.
  static const dependencyGraphExportSbom = RestOperationContract(
    operationId: 'dependency-graph/export-sbom',
    method: 'GET',
    path: '/repos/{owner}/{repo}/dependency-graph/sbom',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/dependency-graph/sbom/fetch-report/{sbom_uuid}`
  /// Fetch a software bill of materials (SBOM) for a repository.
  static const dependencyGraphFetchSbomReport = RestOperationContract(
    operationId: 'dependency-graph/fetch-sbom-report',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/dependency-graph/sbom/fetch-report/{sbom_uuid}',
    pathParams: ['owner', 'repo', 'sbom_uuid'],
    successStatuses: [202],
  );

  /// `GET /repos/{owner}/{repo}/dependency-graph/sbom/generate-report`
  /// Request generation of a software bill of materials (SBOM) for a repository.
  static const dependencyGraphGenerateSbomReport = RestOperationContract(
    operationId: 'dependency-graph/generate-sbom-report',
    method: 'GET',
    path: '/repos/{owner}/{repo}/dependency-graph/sbom/generate-report',
    pathParams: ['owner', 'repo'],
    successStatuses: [201],
  );

  /// `GET /emojis`
  /// Get emojis
  static const emojisGet = RestOperationContract(
    operationId: 'emojis/get',
    method: 'GET',
    path: '/emojis',
  );

  /// `PUT /enterprises/{enterprise}/teams/{enterprise-team}/memberships/{username}`
  /// Add team member
  static const enterpriseTeamMembershipsAdd = RestOperationContract(
    operationId: 'enterprise-team-memberships/add',
    method: 'PUT',
    path:
        '/enterprises/{enterprise}/teams/{enterprise-team}/memberships/{username}',
    pathParams: ['enterprise', 'enterprise-team', 'username'],
    successStatuses: [201],
  );

  /// `POST /enterprises/{enterprise}/teams/{enterprise-team}/memberships/add`
  /// Bulk add team members
  static const enterpriseTeamMembershipsBulkAdd = RestOperationContract(
    operationId: 'enterprise-team-memberships/bulk-add',
    method: 'POST',
    path: '/enterprises/{enterprise}/teams/{enterprise-team}/memberships/add',
    pathParams: ['enterprise', 'enterprise-team'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /enterprises/{enterprise}/teams/{enterprise-team}/memberships/remove`
  /// Bulk remove team members
  static const enterpriseTeamMembershipsBulkRemove = RestOperationContract(
    operationId: 'enterprise-team-memberships/bulk-remove',
    method: 'POST',
    path:
        '/enterprises/{enterprise}/teams/{enterprise-team}/memberships/remove',
    pathParams: ['enterprise', 'enterprise-team'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /enterprises/{enterprise}/teams/{enterprise-team}/memberships/{username}`
  /// Get enterprise team membership
  static const enterpriseTeamMembershipsGet = RestOperationContract(
    operationId: 'enterprise-team-memberships/get',
    method: 'GET',
    path:
        '/enterprises/{enterprise}/teams/{enterprise-team}/memberships/{username}',
    pathParams: ['enterprise', 'enterprise-team', 'username'],
  );

  /// `GET /enterprises/{enterprise}/teams/{enterprise-team}/memberships`
  /// List members in an enterprise team
  static const enterpriseTeamMembershipsList = RestOperationContract(
    operationId: 'enterprise-team-memberships/list',
    method: 'GET',
    path: '/enterprises/{enterprise}/teams/{enterprise-team}/memberships',
    pathParams: ['enterprise', 'enterprise-team'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /enterprises/{enterprise}/members/{username}/teams`
  /// List enterprise teams for a user
  static const enterpriseTeamMembershipsListTeamsForUser =
      RestOperationContract(
    operationId: 'enterprise-team-memberships/list-teams-for-user',
    method: 'GET',
    path: '/enterprises/{enterprise}/members/{username}/teams',
    pathParams: ['enterprise', 'username'],
    queryParams: ['page', 'per_page'],
  );

  /// `DELETE /enterprises/{enterprise}/teams/{enterprise-team}/memberships/{username}`
  /// Remove team membership
  static const enterpriseTeamMembershipsRemove = RestOperationContract(
    operationId: 'enterprise-team-memberships/remove',
    method: 'DELETE',
    path:
        '/enterprises/{enterprise}/teams/{enterprise-team}/memberships/{username}',
    pathParams: ['enterprise', 'enterprise-team', 'username'],
    successStatuses: [204],
  );

  /// `PUT /enterprises/{enterprise}/teams/{enterprise-team}/organizations/{org}`
  /// Add an organization assignment
  static const enterpriseTeamOrganizationsAdd = RestOperationContract(
    operationId: 'enterprise-team-organizations/add',
    method: 'PUT',
    path:
        '/enterprises/{enterprise}/teams/{enterprise-team}/organizations/{org}',
    pathParams: ['enterprise', 'enterprise-team', 'org'],
    successStatuses: [201],
  );

  /// `POST /enterprises/{enterprise}/teams/{enterprise-team}/organizations/add`
  /// Add organization assignments
  static const enterpriseTeamOrganizationsBulkAdd = RestOperationContract(
    operationId: 'enterprise-team-organizations/bulk-add',
    method: 'POST',
    path: '/enterprises/{enterprise}/teams/{enterprise-team}/organizations/add',
    pathParams: ['enterprise', 'enterprise-team'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /enterprises/{enterprise}/teams/{enterprise-team}/organizations/remove`
  /// Remove organization assignments
  static const enterpriseTeamOrganizationsBulkRemove = RestOperationContract(
    operationId: 'enterprise-team-organizations/bulk-remove',
    method: 'POST',
    path:
        '/enterprises/{enterprise}/teams/{enterprise-team}/organizations/remove',
    pathParams: ['enterprise', 'enterprise-team'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `DELETE /enterprises/{enterprise}/teams/{enterprise-team}/organizations/{org}`
  /// Delete an organization assignment
  static const enterpriseTeamOrganizationsDelete = RestOperationContract(
    operationId: 'enterprise-team-organizations/delete',
    method: 'DELETE',
    path:
        '/enterprises/{enterprise}/teams/{enterprise-team}/organizations/{org}',
    pathParams: ['enterprise', 'enterprise-team', 'org'],
    successStatuses: [204],
  );

  /// `GET /enterprises/{enterprise}/teams/{enterprise-team}/organizations/{org}`
  /// Get organization assignment
  static const enterpriseTeamOrganizationsGetAssignment = RestOperationContract(
    operationId: 'enterprise-team-organizations/get-assignment',
    method: 'GET',
    path:
        '/enterprises/{enterprise}/teams/{enterprise-team}/organizations/{org}',
    pathParams: ['enterprise', 'enterprise-team', 'org'],
  );

  /// `GET /enterprises/{enterprise}/teams/{enterprise-team}/organizations`
  /// Get organization assignments
  static const enterpriseTeamOrganizationsGetAssignments =
      RestOperationContract(
    operationId: 'enterprise-team-organizations/get-assignments',
    method: 'GET',
    path: '/enterprises/{enterprise}/teams/{enterprise-team}/organizations',
    pathParams: ['enterprise', 'enterprise-team'],
    queryParams: ['page', 'per_page'],
  );

  /// `POST /enterprises/{enterprise}/teams`
  /// Create an enterprise team
  static const enterpriseTeamsCreate = RestOperationContract(
    operationId: 'enterprise-teams/create',
    method: 'POST',
    path: '/enterprises/{enterprise}/teams',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /enterprises/{enterprise}/teams/{team_slug}`
  /// Delete an enterprise team
  static const enterpriseTeamsDelete = RestOperationContract(
    operationId: 'enterprise-teams/delete',
    method: 'DELETE',
    path: '/enterprises/{enterprise}/teams/{team_slug}',
    pathParams: ['enterprise', 'team_slug'],
    successStatuses: [204],
  );

  /// `GET /enterprises/{enterprise}/teams/{team_slug}`
  /// Get an enterprise team
  static const enterpriseTeamsGet = RestOperationContract(
    operationId: 'enterprise-teams/get',
    method: 'GET',
    path: '/enterprises/{enterprise}/teams/{team_slug}',
    pathParams: ['enterprise', 'team_slug'],
  );

  /// `GET /enterprises/{enterprise}/teams`
  /// List enterprise teams
  static const enterpriseTeamsList = RestOperationContract(
    operationId: 'enterprise-teams/list',
    method: 'GET',
    path: '/enterprises/{enterprise}/teams',
    pathParams: ['enterprise'],
    queryParams: ['page', 'per_page'],
  );

  /// `PATCH /enterprises/{enterprise}/teams/{team_slug}`
  /// Update an enterprise team
  static const enterpriseTeamsUpdate = RestOperationContract(
    operationId: 'enterprise-teams/update',
    method: 'PATCH',
    path: '/enterprises/{enterprise}/teams/{team_slug}',
    pathParams: ['enterprise', 'team_slug'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /gists/{gist_id}/star`
  /// Check if a gist is starred
  static const gistsCheckIsStarred = RestOperationContract(
    operationId: 'gists/check-is-starred',
    method: 'GET',
    path: '/gists/{gist_id}/star',
    pathParams: ['gist_id'],
    successStatuses: [204],
  );

  /// `POST /gists`
  /// Create a gist
  static const gistsCreate = RestOperationContract(
    operationId: 'gists/create',
    method: 'POST',
    path: '/gists',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /gists/{gist_id}/comments`
  /// Create a gist comment
  static const gistsCreateComment = RestOperationContract(
    operationId: 'gists/create-comment',
    method: 'POST',
    path: '/gists/{gist_id}/comments',
    pathParams: ['gist_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /gists/{gist_id}`
  /// Delete a gist
  static const gistsDelete = RestOperationContract(
    operationId: 'gists/delete',
    method: 'DELETE',
    path: '/gists/{gist_id}',
    pathParams: ['gist_id'],
    successStatuses: [204],
  );

  /// `DELETE /gists/{gist_id}/comments/{comment_id}`
  /// Delete a gist comment
  static const gistsDeleteComment = RestOperationContract(
    operationId: 'gists/delete-comment',
    method: 'DELETE',
    path: '/gists/{gist_id}/comments/{comment_id}',
    pathParams: ['comment_id', 'gist_id'],
    successStatuses: [204],
  );

  /// `POST /gists/{gist_id}/forks`
  /// Fork a gist
  static const gistsFork = RestOperationContract(
    operationId: 'gists/fork',
    method: 'POST',
    path: '/gists/{gist_id}/forks',
    pathParams: ['gist_id'],
    successStatuses: [201],
  );

  /// `GET /gists/{gist_id}`
  /// Get a gist
  static const gistsGet = RestOperationContract(
    operationId: 'gists/get',
    method: 'GET',
    path: '/gists/{gist_id}',
    pathParams: ['gist_id'],
  );

  /// `GET /gists/{gist_id}/comments/{comment_id}`
  /// Get a gist comment
  static const gistsGetComment = RestOperationContract(
    operationId: 'gists/get-comment',
    method: 'GET',
    path: '/gists/{gist_id}/comments/{comment_id}',
    pathParams: ['comment_id', 'gist_id'],
  );

  /// `GET /gists/{gist_id}/{sha}`
  /// Get a gist revision
  static const gistsGetRevision = RestOperationContract(
    operationId: 'gists/get-revision',
    method: 'GET',
    path: '/gists/{gist_id}/{sha}',
    pathParams: ['gist_id', 'sha'],
  );

  /// `GET /gists`
  /// List gists for the authenticated user
  static const gistsList = RestOperationContract(
    operationId: 'gists/list',
    method: 'GET',
    path: '/gists',
    queryParams: ['page', 'per_page', 'since'],
  );

  /// `GET /gists/{gist_id}/comments`
  /// List gist comments
  static const gistsListComments = RestOperationContract(
    operationId: 'gists/list-comments',
    method: 'GET',
    path: '/gists/{gist_id}/comments',
    pathParams: ['gist_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /gists/{gist_id}/commits`
  /// List gist commits
  static const gistsListCommits = RestOperationContract(
    operationId: 'gists/list-commits',
    method: 'GET',
    path: '/gists/{gist_id}/commits',
    pathParams: ['gist_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/gists`
  /// List gists for a user
  static const gistsListForUser = RestOperationContract(
    operationId: 'gists/list-for-user',
    method: 'GET',
    path: '/users/{username}/gists',
    pathParams: ['username'],
    queryParams: ['page', 'per_page', 'since'],
  );

  /// `GET /gists/{gist_id}/forks`
  /// List gist forks
  static const gistsListForks = RestOperationContract(
    operationId: 'gists/list-forks',
    method: 'GET',
    path: '/gists/{gist_id}/forks',
    pathParams: ['gist_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /gists/public`
  /// List public gists
  static const gistsListPublic = RestOperationContract(
    operationId: 'gists/list-public',
    method: 'GET',
    path: '/gists/public',
    queryParams: ['page', 'per_page', 'since'],
  );

  /// `GET /gists/starred`
  /// List starred gists
  static const gistsListStarred = RestOperationContract(
    operationId: 'gists/list-starred',
    method: 'GET',
    path: '/gists/starred',
    queryParams: ['page', 'per_page', 'since'],
  );

  /// `PUT /gists/{gist_id}/star`
  /// Star a gist
  static const gistsStar = RestOperationContract(
    operationId: 'gists/star',
    method: 'PUT',
    path: '/gists/{gist_id}/star',
    pathParams: ['gist_id'],
    successStatuses: [204],
  );

  /// `DELETE /gists/{gist_id}/star`
  /// Unstar a gist
  static const gistsUnstar = RestOperationContract(
    operationId: 'gists/unstar',
    method: 'DELETE',
    path: '/gists/{gist_id}/star',
    pathParams: ['gist_id'],
    successStatuses: [204],
  );

  /// `PATCH /gists/{gist_id}`
  /// Update a gist
  static const gistsUpdate = RestOperationContract(
    operationId: 'gists/update',
    method: 'PATCH',
    path: '/gists/{gist_id}',
    pathParams: ['gist_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /gists/{gist_id}/comments/{comment_id}`
  /// Update a gist comment
  static const gistsUpdateComment = RestOperationContract(
    operationId: 'gists/update-comment',
    method: 'PATCH',
    path: '/gists/{gist_id}/comments/{comment_id}',
    pathParams: ['comment_id', 'gist_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/git/blobs`
  /// Create a blob
  static const gitCreateBlob = RestOperationContract(
    operationId: 'git/create-blob',
    method: 'POST',
    path: '/repos/{owner}/{repo}/git/blobs',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/git/commits`
  /// Create a commit
  static const gitCreateCommit = RestOperationContract(
    operationId: 'git/create-commit',
    method: 'POST',
    path: '/repos/{owner}/{repo}/git/commits',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/git/refs`
  /// Create a reference
  static const gitCreateRef = RestOperationContract(
    operationId: 'git/create-ref',
    method: 'POST',
    path: '/repos/{owner}/{repo}/git/refs',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/git/tags`
  /// Create a tag object
  static const gitCreateTag = RestOperationContract(
    operationId: 'git/create-tag',
    method: 'POST',
    path: '/repos/{owner}/{repo}/git/tags',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/git/trees`
  /// Create a tree
  static const gitCreateTree = RestOperationContract(
    operationId: 'git/create-tree',
    method: 'POST',
    path: '/repos/{owner}/{repo}/git/trees',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /repos/{owner}/{repo}/git/refs/{ref}`
  /// Delete a reference
  static const gitDeleteRef = RestOperationContract(
    operationId: 'git/delete-ref',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/git/refs/{ref}',
    pathParams: ['owner', 'ref', 'repo'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/git/blobs/{file_sha}`
  /// Get a blob
  static const gitGetBlob = RestOperationContract(
    operationId: 'git/get-blob',
    method: 'GET',
    path: '/repos/{owner}/{repo}/git/blobs/{file_sha}',
    pathParams: ['file_sha', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/git/commits/{commit_sha}`
  /// Get a commit object
  static const gitGetCommit = RestOperationContract(
    operationId: 'git/get-commit',
    method: 'GET',
    path: '/repos/{owner}/{repo}/git/commits/{commit_sha}',
    pathParams: ['commit_sha', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/git/ref/{ref}`
  /// Get a reference
  static const gitGetRef = RestOperationContract(
    operationId: 'git/get-ref',
    method: 'GET',
    path: '/repos/{owner}/{repo}/git/ref/{ref}',
    pathParams: ['owner', 'ref', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/git/tags/{tag_sha}`
  /// Get a tag
  static const gitGetTag = RestOperationContract(
    operationId: 'git/get-tag',
    method: 'GET',
    path: '/repos/{owner}/{repo}/git/tags/{tag_sha}',
    pathParams: ['owner', 'repo', 'tag_sha'],
  );

  /// `GET /repos/{owner}/{repo}/git/trees/{tree_sha}`
  /// Get a tree
  static const gitGetTree = RestOperationContract(
    operationId: 'git/get-tree',
    method: 'GET',
    path: '/repos/{owner}/{repo}/git/trees/{tree_sha}',
    pathParams: ['owner', 'repo', 'tree_sha'],
    queryParams: ['recursive'],
  );

  /// `GET /repos/{owner}/{repo}/git/matching-refs/{ref}`
  /// List matching references
  static const gitListMatchingRefs = RestOperationContract(
    operationId: 'git/list-matching-refs',
    method: 'GET',
    path: '/repos/{owner}/{repo}/git/matching-refs/{ref}',
    pathParams: ['owner', 'ref', 'repo'],
  );

  /// `PATCH /repos/{owner}/{repo}/git/refs/{ref}`
  /// Update a reference
  static const gitUpdateRef = RestOperationContract(
    operationId: 'git/update-ref',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/git/refs/{ref}',
    pathParams: ['owner', 'ref', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /gitignore/templates`
  /// Get all gitignore templates
  static const gitignoreGetAllTemplates = RestOperationContract(
    operationId: 'gitignore/get-all-templates',
    method: 'GET',
    path: '/gitignore/templates',
  );

  /// `GET /gitignore/templates/{name}`
  /// Get a gitignore template
  static const gitignoreGetTemplate = RestOperationContract(
    operationId: 'gitignore/get-template',
    method: 'GET',
    path: '/gitignore/templates/{name}',
    pathParams: ['name'],
  );

  /// `POST /orgs/{org}/settings/network-configurations`
  /// Create a hosted compute network configuration for an organization
  static const hostedComputeCreateNetworkConfigurationForOrg =
      RestOperationContract(
    operationId: 'hosted-compute/create-network-configuration-for-org',
    method: 'POST',
    path: '/orgs/{org}/settings/network-configurations',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /orgs/{org}/settings/network-configurations/{network_configuration_id}`
  /// Delete a hosted compute network configuration from an organization
  static const hostedComputeDeleteNetworkConfigurationFromOrg =
      RestOperationContract(
    operationId: 'hosted-compute/delete-network-configuration-from-org',
    method: 'DELETE',
    path:
        '/orgs/{org}/settings/network-configurations/{network_configuration_id}',
    pathParams: ['network_configuration_id', 'org'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/settings/network-configurations/{network_configuration_id}`
  /// Get a hosted compute network configuration for an organization
  static const hostedComputeGetNetworkConfigurationForOrg =
      RestOperationContract(
    operationId: 'hosted-compute/get-network-configuration-for-org',
    method: 'GET',
    path:
        '/orgs/{org}/settings/network-configurations/{network_configuration_id}',
    pathParams: ['network_configuration_id', 'org'],
  );

  /// `GET /orgs/{org}/settings/network-settings/{network_settings_id}`
  /// Get a hosted compute network settings resource for an organization
  static const hostedComputeGetNetworkSettingsForOrg = RestOperationContract(
    operationId: 'hosted-compute/get-network-settings-for-org',
    method: 'GET',
    path: '/orgs/{org}/settings/network-settings/{network_settings_id}',
    pathParams: ['network_settings_id', 'org'],
  );

  /// `GET /orgs/{org}/settings/network-configurations`
  /// List hosted compute network configurations for an organization
  static const hostedComputeListNetworkConfigurationsForOrg =
      RestOperationContract(
    operationId: 'hosted-compute/list-network-configurations-for-org',
    method: 'GET',
    path: '/orgs/{org}/settings/network-configurations',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `PATCH /orgs/{org}/settings/network-configurations/{network_configuration_id}`
  /// Update a hosted compute network configuration for an organization
  static const hostedComputeUpdateNetworkConfigurationForOrg =
      RestOperationContract(
    operationId: 'hosted-compute/update-network-configuration-for-org',
    method: 'PATCH',
    path:
        '/orgs/{org}/settings/network-configurations/{network_configuration_id}',
    pathParams: ['network_configuration_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /repos/{owner}/{repo}/interaction-limits/pulls/bypass-list`
  /// Get pull request creation cap bypass list for a repository
  static const interactionsGetPullRequestBypassListForRepo =
      RestOperationContract(
    operationId: 'interactions/get-pull-request-bypass-list-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/interaction-limits/pulls/bypass-list',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/interaction-limits/pulls/creation-cap`
  /// Get pull request creation cap for an org
  static const interactionsGetPullRequestCreationCapForOrg =
      RestOperationContract(
    operationId: 'interactions/get-pull-request-creation-cap-for-org',
    method: 'GET',
    path: '/orgs/{org}/interaction-limits/pulls/creation-cap',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/interaction-limits/pulls/creation-cap`
  /// Get pull request creation cap for a repository
  static const interactionsGetPullRequestCreationCapForRepo =
      RestOperationContract(
    operationId: 'interactions/get-pull-request-creation-cap-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/interaction-limits/pulls/creation-cap',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /user/interaction-limits`
  /// Get interaction restrictions for your public repositories
  static const interactionsGetRestrictionsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'interactions/get-restrictions-for-authenticated-user',
    method: 'GET',
    path: '/user/interaction-limits',
    successStatuses: [200, 204],
  );

  /// `GET /orgs/{org}/interaction-limits`
  /// Get interaction restrictions for an organization
  static const interactionsGetRestrictionsForOrg = RestOperationContract(
    operationId: 'interactions/get-restrictions-for-org',
    method: 'GET',
    path: '/orgs/{org}/interaction-limits',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/interaction-limits`
  /// Get interaction restrictions for a repository
  static const interactionsGetRestrictionsForRepo = RestOperationContract(
    operationId: 'interactions/get-restrictions-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/interaction-limits',
    pathParams: ['owner', 'repo'],
  );

  /// `DELETE /repos/{owner}/{repo}/interaction-limits/pulls/bypass-list`
  /// Remove users from the pull request creation cap bypass list for a repository
  static const interactionsRemovePullRequestBypassListForRepo =
      RestOperationContract(
    operationId: 'interactions/remove-pull-request-bypass-list-for-repo',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/interaction-limits/pulls/bypass-list',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `DELETE /user/interaction-limits`
  /// Remove interaction restrictions from your public repositories
  static const interactionsRemoveRestrictionsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'interactions/remove-restrictions-for-authenticated-user',
    method: 'DELETE',
    path: '/user/interaction-limits',
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/interaction-limits`
  /// Remove interaction restrictions for an organization
  static const interactionsRemoveRestrictionsForOrg = RestOperationContract(
    operationId: 'interactions/remove-restrictions-for-org',
    method: 'DELETE',
    path: '/orgs/{org}/interaction-limits',
    pathParams: ['org'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/interaction-limits`
  /// Remove interaction restrictions for a repository
  static const interactionsRemoveRestrictionsForRepo = RestOperationContract(
    operationId: 'interactions/remove-restrictions-for-repo',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/interaction-limits',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/interaction-limits/pulls/bypass-list`
  /// Add users to the pull request creation cap bypass list for a repository
  static const interactionsSetPullRequestBypassListForRepo =
      RestOperationContract(
    operationId: 'interactions/set-pull-request-bypass-list-for-repo',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/interaction-limits/pulls/bypass-list',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /user/interaction-limits`
  /// Set interaction restrictions for your public repositories
  static const interactionsSetRestrictionsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'interactions/set-restrictions-for-authenticated-user',
    method: 'PUT',
    path: '/user/interaction-limits',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /orgs/{org}/interaction-limits`
  /// Set interaction restrictions for an organization
  static const interactionsSetRestrictionsForOrg = RestOperationContract(
    operationId: 'interactions/set-restrictions-for-org',
    method: 'PUT',
    path: '/orgs/{org}/interaction-limits',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/interaction-limits`
  /// Set interaction restrictions for a repository
  static const interactionsSetRestrictionsForRepo = RestOperationContract(
    operationId: 'interactions/set-restrictions-for-repo',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/interaction-limits',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/interaction-limits/pulls/creation-cap`
  /// Update pull request creation cap for an org
  static const interactionsUpdatePullRequestCreationCapForOrg =
      RestOperationContract(
    operationId: 'interactions/update-pull-request-creation-cap-for-org',
    method: 'PATCH',
    path: '/orgs/{org}/interaction-limits/pulls/creation-cap',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/interaction-limits/pulls/creation-cap`
  /// Update pull request creation cap for a repository
  static const interactionsUpdatePullRequestCreationCapForRepo =
      RestOperationContract(
    operationId: 'interactions/update-pull-request-creation-cap-for-repo',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/interaction-limits/pulls/creation-cap',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/issues/{issue_number}/assignees`
  /// Add assignees to an issue
  static const issuesAddAssignees = RestOperationContract(
    operationId: 'issues/add-assignees',
    method: 'POST',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/assignees',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/issues/{issue_number}/dependencies/blocked_by`
  /// Add a dependency an issue is blocked by
  static const issuesAddBlockedByDependency = RestOperationContract(
    operationId: 'issues/add-blocked-by-dependency',
    method: 'POST',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/dependencies/blocked_by',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/issues/{issue_number}/issue-field-values`
  /// Add issue field values to an issue
  static const issuesAddIssueFieldValues = RestOperationContract(
    operationId: 'issues/add-issue-field-values',
    method: 'POST',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/issue-field-values',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/issues/{issue_number}/labels`
  /// Add labels to an issue
  static const issuesAddLabels = RestOperationContract(
    operationId: 'issues/add-labels',
    method: 'POST',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/labels',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/issues/{issue_number}/sub_issues`
  /// Add sub-issue
  static const issuesAddSubIssue = RestOperationContract(
    operationId: 'issues/add-sub-issue',
    method: 'POST',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/sub_issues',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/issues/{issue_number}/suggestions/{suggestion_id}/approve`
  /// Approve an issue suggestion
  static const issuesApproveSuggestion = RestOperationContract(
    operationId: 'issues/approve-suggestion',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/issues/{issue_number}/suggestions/{suggestion_id}/approve',
    pathParams: ['issue_number', 'owner', 'repo', 'suggestion_id'],
  );

  /// `GET /repos/{owner}/{repo}/assignees/{assignee}`
  /// Check if a user can be assigned
  static const issuesCheckUserCanBeAssigned = RestOperationContract(
    operationId: 'issues/check-user-can-be-assigned',
    method: 'GET',
    path: '/repos/{owner}/{repo}/assignees/{assignee}',
    pathParams: ['assignee', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/assignees/{assignee}`
  /// Check if a user can be assigned to a issue
  static const issuesCheckUserCanBeAssignedToIssue = RestOperationContract(
    operationId: 'issues/check-user-can-be-assigned-to-issue',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/assignees/{assignee}',
    pathParams: ['assignee', 'issue_number', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/issues`
  /// Create an issue
  static const issuesCreate = RestOperationContract(
    operationId: 'issues/create',
    method: 'POST',
    path: '/repos/{owner}/{repo}/issues',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/issues/{issue_number}/comments`
  /// Create an issue comment
  static const issuesCreateComment = RestOperationContract(
    operationId: 'issues/create-comment',
    method: 'POST',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/comments',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/labels`
  /// Create a label
  static const issuesCreateLabel = RestOperationContract(
    operationId: 'issues/create-label',
    method: 'POST',
    path: '/repos/{owner}/{repo}/labels',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/milestones`
  /// Create a milestone
  static const issuesCreateMilestone = RestOperationContract(
    operationId: 'issues/create-milestone',
    method: 'POST',
    path: '/repos/{owner}/{repo}/milestones',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/comments/{comment_id}`
  /// Delete an issue comment
  static const issuesDeleteComment = RestOperationContract(
    operationId: 'issues/delete-comment',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/issues/comments/{comment_id}',
    pathParams: ['comment_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/{issue_number}/issue-field-values/{issue_field_id}`
  /// Delete an issue field value from an issue
  static const issuesDeleteIssueFieldValue = RestOperationContract(
    operationId: 'issues/delete-issue-field-value',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/issues/{issue_number}/issue-field-values/{issue_field_id}',
    pathParams: ['issue_field_id', 'issue_number', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/labels/{name}`
  /// Delete a label
  static const issuesDeleteLabel = RestOperationContract(
    operationId: 'issues/delete-label',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/labels/{name}',
    pathParams: ['name', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/milestones/{milestone_number}`
  /// Delete a milestone
  static const issuesDeleteMilestone = RestOperationContract(
    operationId: 'issues/delete-milestone',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/milestones/{milestone_number}',
    pathParams: ['milestone_number', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/issues/{issue_number}/suggestions/{suggestion_id}/dismiss`
  /// Dismiss an issue suggestion
  static const issuesDismissSuggestion = RestOperationContract(
    operationId: 'issues/dismiss-suggestion',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/issues/{issue_number}/suggestions/{suggestion_id}/dismiss',
    pathParams: ['issue_number', 'owner', 'repo', 'suggestion_id'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}`
  /// Get an issue
  static const issuesGet = RestOperationContract(
    operationId: 'issues/get',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}',
    pathParams: ['issue_number', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/issues/comments/{comment_id}`
  /// Get an issue comment
  static const issuesGetComment = RestOperationContract(
    operationId: 'issues/get-comment',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/comments/{comment_id}',
    pathParams: ['comment_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/issues/events/{event_id}`
  /// Get an issue event
  static const issuesGetEvent = RestOperationContract(
    operationId: 'issues/get-event',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/events/{event_id}',
    pathParams: ['event_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/labels/{name}`
  /// Get a label
  static const issuesGetLabel = RestOperationContract(
    operationId: 'issues/get-label',
    method: 'GET',
    path: '/repos/{owner}/{repo}/labels/{name}',
    pathParams: ['name', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/milestones/{milestone_number}`
  /// Get a milestone
  static const issuesGetMilestone = RestOperationContract(
    operationId: 'issues/get-milestone',
    method: 'GET',
    path: '/repos/{owner}/{repo}/milestones/{milestone_number}',
    pathParams: ['milestone_number', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/parent`
  /// Get parent issue
  static const issuesGetParent = RestOperationContract(
    operationId: 'issues/get-parent',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/parent',
    pathParams: ['issue_number', 'owner', 'repo'],
  );

  /// `GET /issues`
  /// List issues assigned to the authenticated user
  static const issuesList = RestOperationContract(
    operationId: 'issues/list',
    method: 'GET',
    path: '/issues',
    queryParams: [
      'collab',
      'direction',
      'filter',
      'labels',
      'orgs',
      'owned',
      'page',
      'per_page',
      'pulls',
      'since',
      'sort',
      'state'
    ],
  );

  /// `GET /repos/{owner}/{repo}/assignees`
  /// List assignees
  static const issuesListAssignees = RestOperationContract(
    operationId: 'issues/list-assignees',
    method: 'GET',
    path: '/repos/{owner}/{repo}/assignees',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/comments`
  /// List issue comments
  static const issuesListComments = RestOperationContract(
    operationId: 'issues/list-comments',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/comments',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page', 'since'],
  );

  /// `GET /repos/{owner}/{repo}/issues/comments`
  /// List issue comments for a repository
  static const issuesListCommentsForRepo = RestOperationContract(
    operationId: 'issues/list-comments-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/comments',
    pathParams: ['owner', 'repo'],
    queryParams: ['direction', 'page', 'per_page', 'since', 'sort'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/dependencies/blocked_by`
  /// List dependencies an issue is blocked by
  static const issuesListDependenciesBlockedBy = RestOperationContract(
    operationId: 'issues/list-dependencies-blocked-by',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/dependencies/blocked_by',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/dependencies/blocking`
  /// List dependencies an issue is blocking
  static const issuesListDependenciesBlocking = RestOperationContract(
    operationId: 'issues/list-dependencies-blocking',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/dependencies/blocking',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/events`
  /// List issue events
  static const issuesListEvents = RestOperationContract(
    operationId: 'issues/list-events',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/events',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issues/events`
  /// List issue events for a repository
  static const issuesListEventsForRepo = RestOperationContract(
    operationId: 'issues/list-events-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/events',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/timeline`
  /// List timeline events for an issue
  static const issuesListEventsForTimeline = RestOperationContract(
    operationId: 'issues/list-events-for-timeline',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/timeline',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['exclude', 'page', 'per_page'],
  );

  /// `GET /user/issues`
  /// List user account issues assigned to the authenticated user
  static const issuesListForAuthenticatedUser = RestOperationContract(
    operationId: 'issues/list-for-authenticated-user',
    method: 'GET',
    path: '/user/issues',
    queryParams: [
      'direction',
      'filter',
      'labels',
      'page',
      'per_page',
      'since',
      'sort',
      'state'
    ],
  );

  /// `GET /orgs/{org}/issues`
  /// List organization issues assigned to the authenticated user
  static const issuesListForOrg = RestOperationContract(
    operationId: 'issues/list-for-org',
    method: 'GET',
    path: '/orgs/{org}/issues',
    pathParams: ['org'],
    queryParams: [
      'direction',
      'filter',
      'labels',
      'page',
      'per_page',
      'since',
      'sort',
      'state',
      'type'
    ],
  );

  /// `GET /repos/{owner}/{repo}/issues`
  /// List repository issues
  static const issuesListForRepo = RestOperationContract(
    operationId: 'issues/list-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'assignee',
      'creator',
      'direction',
      'issue_field_values',
      'labels',
      'mentioned',
      'milestone',
      'page',
      'per_page',
      'since',
      'sort',
      'state',
      'type'
    ],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/issue-field-values`
  /// List issue field values for an issue
  static const issuesListIssueFieldValuesForIssue = RestOperationContract(
    operationId: 'issues/list-issue-field-values-for-issue',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/issue-field-values',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/milestones/{milestone_number}/labels`
  /// List labels for issues in a milestone
  static const issuesListLabelsForMilestone = RestOperationContract(
    operationId: 'issues/list-labels-for-milestone',
    method: 'GET',
    path: '/repos/{owner}/{repo}/milestones/{milestone_number}/labels',
    pathParams: ['milestone_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/labels`
  /// List labels for a repository
  static const issuesListLabelsForRepo = RestOperationContract(
    operationId: 'issues/list-labels-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/labels',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/labels`
  /// List labels for an issue
  static const issuesListLabelsOnIssue = RestOperationContract(
    operationId: 'issues/list-labels-on-issue',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/labels',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/milestones`
  /// List milestones
  static const issuesListMilestones = RestOperationContract(
    operationId: 'issues/list-milestones',
    method: 'GET',
    path: '/repos/{owner}/{repo}/milestones',
    pathParams: ['owner', 'repo'],
    queryParams: ['direction', 'page', 'per_page', 'sort', 'state'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/sub_issues`
  /// List sub-issues
  static const issuesListSubIssues = RestOperationContract(
    operationId: 'issues/list-sub-issues',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/sub_issues',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/suggestions`
  /// List issue suggestions
  static const issuesListSuggestions = RestOperationContract(
    operationId: 'issues/list-suggestions',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/suggestions',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['action', 'page', 'per_page', 'state'],
  );

  /// `PUT /repos/{owner}/{repo}/issues/{issue_number}/lock`
  /// Lock an issue
  static const issuesLock = RestOperationContract(
    operationId: 'issues/lock',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/lock',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/issues/comments/{comment_id}/pin`
  /// Pin an issue comment
  static const issuesPinComment = RestOperationContract(
    operationId: 'issues/pin-comment',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/issues/comments/{comment_id}/pin',
    pathParams: ['comment_id', 'owner', 'repo'],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/{issue_number}/labels`
  /// Remove all labels from an issue
  static const issuesRemoveAllLabels = RestOperationContract(
    operationId: 'issues/remove-all-labels',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/labels',
    pathParams: ['issue_number', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/{issue_number}/assignees`
  /// Remove assignees from an issue
  static const issuesRemoveAssignees = RestOperationContract(
    operationId: 'issues/remove-assignees',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/assignees',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/{issue_number}/dependencies/blocked_by/{issue_id}`
  /// Remove dependency an issue is blocked by
  static const issuesRemoveDependencyBlockedBy = RestOperationContract(
    operationId: 'issues/remove-dependency-blocked-by',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/issues/{issue_number}/dependencies/blocked_by/{issue_id}',
    pathParams: ['issue_id', 'issue_number', 'owner', 'repo'],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/{issue_number}/labels/{name}`
  /// Remove a label from an issue
  static const issuesRemoveLabel = RestOperationContract(
    operationId: 'issues/remove-label',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/labels/{name}',
    pathParams: ['issue_number', 'name', 'owner', 'repo'],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/{issue_number}/sub_issue`
  /// Remove sub-issue
  static const issuesRemoveSubIssue = RestOperationContract(
    operationId: 'issues/remove-sub-issue',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/sub_issue',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/issues/{issue_number}/sub_issues/priority`
  /// Reprioritize sub-issue
  static const issuesReprioritizeSubIssue = RestOperationContract(
    operationId: 'issues/reprioritize-sub-issue',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/sub_issues/priority',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/issues/{issue_number}/issue-field-values`
  /// Set issue field values for an issue
  static const issuesSetIssueFieldValues = RestOperationContract(
    operationId: 'issues/set-issue-field-values',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/issue-field-values',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/issues/{issue_number}/labels`
  /// Set labels for an issue
  static const issuesSetLabels = RestOperationContract(
    operationId: 'issues/set-labels',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/labels',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/{issue_number}/lock`
  /// Unlock an issue
  static const issuesUnlock = RestOperationContract(
    operationId: 'issues/unlock',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/lock',
    pathParams: ['issue_number', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/comments/{comment_id}/pin`
  /// Unpin an issue comment
  static const issuesUnpinComment = RestOperationContract(
    operationId: 'issues/unpin-comment',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/issues/comments/{comment_id}/pin',
    pathParams: ['comment_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `PATCH /repos/{owner}/{repo}/issues/{issue_number}`
  /// Update an issue
  static const issuesUpdate = RestOperationContract(
    operationId: 'issues/update',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/issues/{issue_number}',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/issues/comments/{comment_id}`
  /// Update an issue comment
  static const issuesUpdateComment = RestOperationContract(
    operationId: 'issues/update-comment',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/issues/comments/{comment_id}',
    pathParams: ['comment_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/labels/{name}`
  /// Update a label
  static const issuesUpdateLabel = RestOperationContract(
    operationId: 'issues/update-label',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/labels/{name}',
    pathParams: ['name', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/milestones/{milestone_number}`
  /// Update a milestone
  static const issuesUpdateMilestone = RestOperationContract(
    operationId: 'issues/update-milestone',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/milestones/{milestone_number}',
    pathParams: ['milestone_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /licenses/{license}`
  /// Get a license
  static const licensesGet = RestOperationContract(
    operationId: 'licenses/get',
    method: 'GET',
    path: '/licenses/{license}',
    pathParams: ['license'],
  );

  /// `GET /licenses`
  /// Get all commonly used licenses
  static const licensesGetAllCommonlyUsed = RestOperationContract(
    operationId: 'licenses/get-all-commonly-used',
    method: 'GET',
    path: '/licenses',
    queryParams: ['featured', 'page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/license`
  /// Get the license for a repository
  static const licensesGetForRepo = RestOperationContract(
    operationId: 'licenses/get-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/license',
    pathParams: ['owner', 'repo'],
    queryParams: ['ref'],
  );

  /// `POST /markdown`
  /// Render a Markdown document
  static const markdownRender = RestOperationContract(
    operationId: 'markdown/render',
    method: 'POST',
    path: '/markdown',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /markdown/raw`
  /// Render a Markdown document in raw mode
  static const markdownRenderRaw = RestOperationContract(
    operationId: 'markdown/render-raw',
    method: 'POST',
    path: '/markdown/raw',
    hasRequestBody: true,
    requestMediaTypes: ['text/plain', 'text/x-markdown'],
  );

  /// `GET /meta`
  /// Get GitHub meta information
  static const metaGet = RestOperationContract(
    operationId: 'meta/get',
    method: 'GET',
    path: '/meta',
  );

  /// `GET /versions`
  /// Get all API versions
  static const metaGetAllVersions = RestOperationContract(
    operationId: 'meta/get-all-versions',
    method: 'GET',
    path: '/versions',
  );

  /// `GET /octocat`
  /// Get Octocat
  static const metaGetOctocat = RestOperationContract(
    operationId: 'meta/get-octocat',
    method: 'GET',
    path: '/octocat',
    queryParams: ['s'],
  );

  /// `GET /zen`
  /// Get the Zen of GitHub
  static const metaGetZen = RestOperationContract(
    operationId: 'meta/get-zen',
    method: 'GET',
    path: '/zen',
  );

  /// `GET /`
  /// GitHub API Root
  static const metaRoot = RestOperationContract(
    operationId: 'meta/root',
    method: 'GET',
    path: '/',
  );

  /// `DELETE /repos/{owner}/{repo}/import`
  /// Cancel an import
  static const migrationsCancelImport = RestOperationContract(
    operationId: 'migrations/cancel-import',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/import',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /user/migrations/{migration_id}/archive`
  /// Delete a user migration archive
  static const migrationsDeleteArchiveForAuthenticatedUser =
      RestOperationContract(
    operationId: 'migrations/delete-archive-for-authenticated-user',
    method: 'DELETE',
    path: '/user/migrations/{migration_id}/archive',
    pathParams: ['migration_id'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/migrations/{migration_id}/archive`
  /// Delete an organization migration archive
  static const migrationsDeleteArchiveForOrg = RestOperationContract(
    operationId: 'migrations/delete-archive-for-org',
    method: 'DELETE',
    path: '/orgs/{org}/migrations/{migration_id}/archive',
    pathParams: ['migration_id', 'org'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/migrations/{migration_id}/archive`
  /// Download an organization migration archive
  static const migrationsDownloadArchiveForOrg = RestOperationContract(
    operationId: 'migrations/download-archive-for-org',
    method: 'GET',
    path: '/orgs/{org}/migrations/{migration_id}/archive',
    pathParams: ['migration_id', 'org'],
  );

  /// `GET /user/migrations/{migration_id}/archive`
  /// Download a user migration archive
  static const migrationsGetArchiveForAuthenticatedUser = RestOperationContract(
    operationId: 'migrations/get-archive-for-authenticated-user',
    method: 'GET',
    path: '/user/migrations/{migration_id}/archive',
    pathParams: ['migration_id'],
  );

  /// `GET /repos/{owner}/{repo}/import/authors`
  /// Get commit authors
  static const migrationsGetCommitAuthors = RestOperationContract(
    operationId: 'migrations/get-commit-authors',
    method: 'GET',
    path: '/repos/{owner}/{repo}/import/authors',
    pathParams: ['owner', 'repo'],
    queryParams: ['since'],
  );

  /// `GET /repos/{owner}/{repo}/import`
  /// Get an import status
  static const migrationsGetImportStatus = RestOperationContract(
    operationId: 'migrations/get-import-status',
    method: 'GET',
    path: '/repos/{owner}/{repo}/import',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/import/large_files`
  /// Get large files
  static const migrationsGetLargeFiles = RestOperationContract(
    operationId: 'migrations/get-large-files',
    method: 'GET',
    path: '/repos/{owner}/{repo}/import/large_files',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /user/migrations/{migration_id}`
  /// Get a user migration status
  static const migrationsGetStatusForAuthenticatedUser = RestOperationContract(
    operationId: 'migrations/get-status-for-authenticated-user',
    method: 'GET',
    path: '/user/migrations/{migration_id}',
    pathParams: ['migration_id'],
    queryParams: ['exclude'],
  );

  /// `GET /orgs/{org}/migrations/{migration_id}`
  /// Get an organization migration status
  static const migrationsGetStatusForOrg = RestOperationContract(
    operationId: 'migrations/get-status-for-org',
    method: 'GET',
    path: '/orgs/{org}/migrations/{migration_id}',
    pathParams: ['migration_id', 'org'],
    queryParams: ['exclude'],
  );

  /// `GET /user/migrations`
  /// List user migrations
  static const migrationsListForAuthenticatedUser = RestOperationContract(
    operationId: 'migrations/list-for-authenticated-user',
    method: 'GET',
    path: '/user/migrations',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/migrations`
  /// List organization migrations
  static const migrationsListForOrg = RestOperationContract(
    operationId: 'migrations/list-for-org',
    method: 'GET',
    path: '/orgs/{org}/migrations',
    pathParams: ['org'],
    queryParams: ['exclude', 'page', 'per_page'],
  );

  /// `GET /user/migrations/{migration_id}/repositories`
  /// List repositories for a user migration
  static const migrationsListReposForAuthenticatedUser = RestOperationContract(
    operationId: 'migrations/list-repos-for-authenticated-user',
    method: 'GET',
    path: '/user/migrations/{migration_id}/repositories',
    pathParams: ['migration_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/migrations/{migration_id}/repositories`
  /// List repositories in an organization migration
  static const migrationsListReposForOrg = RestOperationContract(
    operationId: 'migrations/list-repos-for-org',
    method: 'GET',
    path: '/orgs/{org}/migrations/{migration_id}/repositories',
    pathParams: ['migration_id', 'org'],
    queryParams: ['page', 'per_page'],
  );

  /// `PATCH /repos/{owner}/{repo}/import/authors/{author_id}`
  /// Map a commit author
  static const migrationsMapCommitAuthor = RestOperationContract(
    operationId: 'migrations/map-commit-author',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/import/authors/{author_id}',
    pathParams: ['author_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/import/lfs`
  /// Update Git LFS preference
  static const migrationsSetLfsPreference = RestOperationContract(
    operationId: 'migrations/set-lfs-preference',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/import/lfs',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /user/migrations`
  /// Start a user migration
  static const migrationsStartForAuthenticatedUser = RestOperationContract(
    operationId: 'migrations/start-for-authenticated-user',
    method: 'POST',
    path: '/user/migrations',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/migrations`
  /// Start an organization migration
  static const migrationsStartForOrg = RestOperationContract(
    operationId: 'migrations/start-for-org',
    method: 'POST',
    path: '/orgs/{org}/migrations',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `PUT /repos/{owner}/{repo}/import`
  /// Start an import
  static const migrationsStartImport = RestOperationContract(
    operationId: 'migrations/start-import',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/import',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /user/migrations/{migration_id}/repos/{repo_name}/lock`
  /// Unlock a user repository
  static const migrationsUnlockRepoForAuthenticatedUser = RestOperationContract(
    operationId: 'migrations/unlock-repo-for-authenticated-user',
    method: 'DELETE',
    path: '/user/migrations/{migration_id}/repos/{repo_name}/lock',
    pathParams: ['migration_id', 'repo_name'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/migrations/{migration_id}/repos/{repo_name}/lock`
  /// Unlock an organization repository
  static const migrationsUnlockRepoForOrg = RestOperationContract(
    operationId: 'migrations/unlock-repo-for-org',
    method: 'DELETE',
    path: '/orgs/{org}/migrations/{migration_id}/repos/{repo_name}/lock',
    pathParams: ['migration_id', 'org', 'repo_name'],
    successStatuses: [204],
  );

  /// `PATCH /repos/{owner}/{repo}/import`
  /// Update an import
  static const migrationsUpdateImport = RestOperationContract(
    operationId: 'migrations/update-import',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/import',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /enterprises/{enterprise}/actions/oidc/customization/properties/repo`
  /// Create an OIDC custom property inclusion for an enterprise
  static const oidcCreateOidcCustomPropertyInclusionForEnterprise =
      RestOperationContract(
    operationId: 'oidc/create-oidc-custom-property-inclusion-for-enterprise',
    method: 'POST',
    path:
        '/enterprises/{enterprise}/actions/oidc/customization/properties/repo',
    pathParams: ['enterprise'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/actions/oidc/customization/properties/repo`
  /// Create an OIDC custom property inclusion for an organization
  static const oidcCreateOidcCustomPropertyInclusionForOrg =
      RestOperationContract(
    operationId: 'oidc/create-oidc-custom-property-inclusion-for-org',
    method: 'POST',
    path: '/orgs/{org}/actions/oidc/customization/properties/repo',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /enterprises/{enterprise}/actions/oidc/customization/properties/repo/{custom_property_name}`
  /// Delete an OIDC custom property inclusion for an enterprise
  static const oidcDeleteOidcCustomPropertyInclusionForEnterprise =
      RestOperationContract(
    operationId: 'oidc/delete-oidc-custom-property-inclusion-for-enterprise',
    method: 'DELETE',
    path:
        '/enterprises/{enterprise}/actions/oidc/customization/properties/repo/{custom_property_name}',
    pathParams: ['custom_property_name', 'enterprise'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/actions/oidc/customization/properties/repo/{custom_property_name}`
  /// Delete an OIDC custom property inclusion for an organization
  static const oidcDeleteOidcCustomPropertyInclusionForOrg =
      RestOperationContract(
    operationId: 'oidc/delete-oidc-custom-property-inclusion-for-org',
    method: 'DELETE',
    path:
        '/orgs/{org}/actions/oidc/customization/properties/repo/{custom_property_name}',
    pathParams: ['custom_property_name', 'org'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/actions/oidc/customization/sub`
  /// Get the customization template for an OIDC subject claim for an organization
  static const oidcGetOidcCustomSubTemplateForOrg = RestOperationContract(
    operationId: 'oidc/get-oidc-custom-sub-template-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/oidc/customization/sub',
    pathParams: ['org'],
  );

  /// `GET /enterprises/{enterprise}/actions/oidc/customization/properties/repo`
  /// List OIDC custom property inclusions for an enterprise
  static const oidcListOidcCustomPropertyInclusionsForEnterprise =
      RestOperationContract(
    operationId: 'oidc/list-oidc-custom-property-inclusions-for-enterprise',
    method: 'GET',
    path:
        '/enterprises/{enterprise}/actions/oidc/customization/properties/repo',
    pathParams: ['enterprise'],
  );

  /// `GET /orgs/{org}/actions/oidc/customization/properties/repo`
  /// List OIDC custom property inclusions for an organization
  static const oidcListOidcCustomPropertyInclusionsForOrg =
      RestOperationContract(
    operationId: 'oidc/list-oidc-custom-property-inclusions-for-org',
    method: 'GET',
    path: '/orgs/{org}/actions/oidc/customization/properties/repo',
    pathParams: ['org'],
  );

  /// `PUT /orgs/{org}/actions/oidc/customization/sub`
  /// Set the customization template for an OIDC subject claim for an organization
  static const oidcUpdateOidcCustomSubTemplateForOrg = RestOperationContract(
    operationId: 'oidc/update-oidc-custom-sub-template-for-org',
    method: 'PUT',
    path: '/orgs/{org}/actions/oidc/customization/sub',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `PUT /orgs/{org}/security-managers/teams/{team_slug}`
  /// Add a security manager team
  static const orgsAddSecurityManagerTeam = RestOperationContract(
    operationId: 'orgs/add-security-manager-team',
    method: 'PUT',
    path: '/orgs/{org}/security-managers/teams/{team_slug}',
    pathParams: ['org', 'team_slug'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/organization-roles/teams/{team_slug}/{role_id}`
  /// Assign an organization role to a team
  static const orgsAssignTeamToOrgRole = RestOperationContract(
    operationId: 'orgs/assign-team-to-org-role',
    method: 'PUT',
    path: '/orgs/{org}/organization-roles/teams/{team_slug}/{role_id}',
    pathParams: ['org', 'role_id', 'team_slug'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/organization-roles/users/{username}/{role_id}`
  /// Assign an organization role to a user
  static const orgsAssignUserToOrgRole = RestOperationContract(
    operationId: 'orgs/assign-user-to-org-role',
    method: 'PUT',
    path: '/orgs/{org}/organization-roles/users/{username}/{role_id}',
    pathParams: ['org', 'role_id', 'username'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/blocks/{username}`
  /// Block a user from an organization
  static const orgsBlockUser = RestOperationContract(
    operationId: 'orgs/block-user',
    method: 'PUT',
    path: '/orgs/{org}/blocks/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/invitations/{invitation_id}`
  /// Cancel an organization invitation
  static const orgsCancelInvitation = RestOperationContract(
    operationId: 'orgs/cancel-invitation',
    method: 'DELETE',
    path: '/orgs/{org}/invitations/{invitation_id}',
    pathParams: ['invitation_id', 'org'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/blocks/{username}`
  /// Check if a user is blocked by an organization
  static const orgsCheckBlockedUser = RestOperationContract(
    operationId: 'orgs/check-blocked-user',
    method: 'GET',
    path: '/orgs/{org}/blocks/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/members/{username}`
  /// Check organization membership for a user
  static const orgsCheckMembershipForUser = RestOperationContract(
    operationId: 'orgs/check-membership-for-user',
    method: 'GET',
    path: '/orgs/{org}/members/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/public_members/{username}`
  /// Check public organization membership for a user
  static const orgsCheckPublicMembershipForUser = RestOperationContract(
    operationId: 'orgs/check-public-membership-for-user',
    method: 'GET',
    path: '/orgs/{org}/public_members/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/outside_collaborators/{username}`
  /// Convert an organization member to outside collaborator
  static const orgsConvertMemberToOutsideCollaborator = RestOperationContract(
    operationId: 'orgs/convert-member-to-outside-collaborator',
    method: 'PUT',
    path: '/orgs/{org}/outside_collaborators/{username}',
    pathParams: ['org', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202, 204],
  );

  /// `POST /orgs/{org}/artifacts/metadata/deployment-record`
  /// Create an artifact deployment record
  static const orgsCreateArtifactDeploymentRecord = RestOperationContract(
    operationId: 'orgs/create-artifact-deployment-record',
    method: 'POST',
    path: '/orgs/{org}/artifacts/metadata/deployment-record',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /orgs/{org}/artifacts/metadata/storage-record`
  /// Create artifact metadata storage record
  static const orgsCreateArtifactStorageRecord = RestOperationContract(
    operationId: 'orgs/create-artifact-storage-record',
    method: 'POST',
    path: '/orgs/{org}/artifacts/metadata/storage-record',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /orgs/{org}/artifacts/metadata/deployment-record/cluster/{cluster}/jobs`
  /// Create a cluster deployment records job
  static const orgsCreateClusterDeploymentRecordsJob = RestOperationContract(
    operationId: 'orgs/create-cluster-deployment-records-job',
    method: 'POST',
    path:
        '/orgs/{org}/artifacts/metadata/deployment-record/cluster/{cluster}/jobs',
    pathParams: ['cluster', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `POST /orgs/{org}/invitations`
  /// Create an organization invitation
  static const orgsCreateInvitation = RestOperationContract(
    operationId: 'orgs/create-invitation',
    method: 'POST',
    path: '/orgs/{org}/invitations',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/issue-fields`
  /// Create issue field for an organization
  static const orgsCreateIssueField = RestOperationContract(
    operationId: 'orgs/create-issue-field',
    method: 'POST',
    path: '/orgs/{org}/issue-fields',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /orgs/{org}/issue-types`
  /// Create issue type for an organization
  static const orgsCreateIssueType = RestOperationContract(
    operationId: 'orgs/create-issue-type',
    method: 'POST',
    path: '/orgs/{org}/issue-types',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /orgs/{org}/hooks`
  /// Create an organization webhook
  static const orgsCreateWebhook = RestOperationContract(
    operationId: 'orgs/create-webhook',
    method: 'POST',
    path: '/orgs/{org}/hooks',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `PUT /orgs/{org}/properties/schema/{custom_property_name}`
  /// Create or update a custom property for an organization
  static const orgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinition =
      RestOperationContract(
    operationId:
        'orgs/custom-properties-for-repos-create-or-update-organization-definition',
    method: 'PUT',
    path: '/orgs/{org}/properties/schema/{custom_property_name}',
    pathParams: ['custom_property_name', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/properties/schema`
  /// Create or update custom properties for an organization
  static const orgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitions =
      RestOperationContract(
    operationId:
        'orgs/custom-properties-for-repos-create-or-update-organization-definitions',
    method: 'PATCH',
    path: '/orgs/{org}/properties/schema',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/properties/values`
  /// Create or update custom property values for organization repositories
  static const orgsCustomPropertiesForReposCreateOrUpdateOrganizationValues =
      RestOperationContract(
    operationId:
        'orgs/custom-properties-for-repos-create-or-update-organization-values',
    method: 'PATCH',
    path: '/orgs/{org}/properties/values',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/properties/schema/{custom_property_name}`
  /// Remove a custom property for an organization
  static const orgsCustomPropertiesForReposDeleteOrganizationDefinition =
      RestOperationContract(
    operationId:
        'orgs/custom-properties-for-repos-delete-organization-definition',
    method: 'DELETE',
    path: '/orgs/{org}/properties/schema/{custom_property_name}',
    pathParams: ['custom_property_name', 'org'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/properties/schema/{custom_property_name}`
  /// Get a custom property for an organization
  static const orgsCustomPropertiesForReposGetOrganizationDefinition =
      RestOperationContract(
    operationId: 'orgs/custom-properties-for-repos-get-organization-definition',
    method: 'GET',
    path: '/orgs/{org}/properties/schema/{custom_property_name}',
    pathParams: ['custom_property_name', 'org'],
  );

  /// `GET /orgs/{org}/properties/schema`
  /// Get all custom properties for an organization
  static const orgsCustomPropertiesForReposGetOrganizationDefinitions =
      RestOperationContract(
    operationId:
        'orgs/custom-properties-for-repos-get-organization-definitions',
    method: 'GET',
    path: '/orgs/{org}/properties/schema',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/properties/values`
  /// List custom property values for organization repositories
  static const orgsCustomPropertiesForReposGetOrganizationValues =
      RestOperationContract(
    operationId: 'orgs/custom-properties-for-repos-get-organization-values',
    method: 'GET',
    path: '/orgs/{org}/properties/values',
    pathParams: ['org'],
    queryParams: ['page', 'per_page', 'repository_query'],
  );

  /// `DELETE /orgs/{org}`
  /// Delete an organization
  static const orgsDelete = RestOperationContract(
    operationId: 'orgs/delete',
    method: 'DELETE',
    path: '/orgs/{org}',
    pathParams: ['org'],
    successStatuses: [202],
  );

  /// `POST /orgs/{org}/attestations/delete-request`
  /// Delete attestations in bulk
  static const orgsDeleteAttestationsBulk = RestOperationContract(
    operationId: 'orgs/delete-attestations-bulk',
    method: 'POST',
    path: '/orgs/{org}/attestations/delete-request',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /orgs/{org}/attestations/{attestation_id}`
  /// Delete attestations by ID
  static const orgsDeleteAttestationsById = RestOperationContract(
    operationId: 'orgs/delete-attestations-by-id',
    method: 'DELETE',
    path: '/orgs/{org}/attestations/{attestation_id}',
    pathParams: ['attestation_id', 'org'],
    successStatuses: [200, 204],
  );

  /// `DELETE /orgs/{org}/attestations/digest/{subject_digest}`
  /// Delete attestations by subject digest
  static const orgsDeleteAttestationsBySubjectDigest = RestOperationContract(
    operationId: 'orgs/delete-attestations-by-subject-digest',
    method: 'DELETE',
    path: '/orgs/{org}/attestations/digest/{subject_digest}',
    pathParams: ['org', 'subject_digest'],
    successStatuses: [200, 204],
  );

  /// `DELETE /orgs/{org}/issue-fields/{issue_field_id}`
  /// Delete issue field for an organization
  static const orgsDeleteIssueField = RestOperationContract(
    operationId: 'orgs/delete-issue-field',
    method: 'DELETE',
    path: '/orgs/{org}/issue-fields/{issue_field_id}',
    pathParams: ['issue_field_id', 'org'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/issue-types/{issue_type_id}`
  /// Delete issue type for an organization
  static const orgsDeleteIssueType = RestOperationContract(
    operationId: 'orgs/delete-issue-type',
    method: 'DELETE',
    path: '/orgs/{org}/issue-types/{issue_type_id}',
    pathParams: ['issue_type_id', 'org'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/hooks/{hook_id}`
  /// Delete an organization webhook
  static const orgsDeleteWebhook = RestOperationContract(
    operationId: 'orgs/delete-webhook',
    method: 'DELETE',
    path: '/orgs/{org}/hooks/{hook_id}',
    pathParams: ['hook_id', 'org'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/settings/immutable-releases/repositories/{repository_id}`
  /// Disable a selected repository for immutable releases in an organization
  static const orgsDisableSelectedRepositoryImmutableReleasesOrganization =
      RestOperationContract(
    operationId:
        'orgs/disable-selected-repository-immutable-releases-organization',
    method: 'DELETE',
    path:
        '/orgs/{org}/settings/immutable-releases/repositories/{repository_id}',
    pathParams: ['org', 'repository_id'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/{security_product}/{enablement}`
  /// Enable or disable a security feature for an organization
  static const orgsEnableOrDisableSecurityProductOnAllOrgRepos =
      RestOperationContract(
    operationId: 'orgs/enable-or-disable-security-product-on-all-org-repos',
    method: 'POST',
    path: '/orgs/{org}/{security_product}/{enablement}',
    pathParams: ['enablement', 'org', 'security_product'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/settings/immutable-releases/repositories/{repository_id}`
  /// Enable a selected repository for immutable releases in an organization
  static const orgsEnableSelectedRepositoryImmutableReleasesOrganization =
      RestOperationContract(
    operationId:
        'orgs/enable-selected-repository-immutable-releases-organization',
    method: 'PUT',
    path:
        '/orgs/{org}/settings/immutable-releases/repositories/{repository_id}',
    pathParams: ['org', 'repository_id'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}`
  /// Get an organization
  static const orgsGet = RestOperationContract(
    operationId: 'orgs/get',
    method: 'GET',
    path: '/orgs/{org}',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/artifacts/metadata/deployment-record/cluster/{cluster}/jobs/{job_id}`
  /// Get cluster deployment records job status
  static const orgsGetClusterDeploymentRecordsJob = RestOperationContract(
    operationId: 'orgs/get-cluster-deployment-records-job',
    method: 'GET',
    path:
        '/orgs/{org}/artifacts/metadata/deployment-record/cluster/{cluster}/jobs/{job_id}',
    pathParams: ['cluster', 'job_id', 'org'],
  );

  /// `GET /orgs/{org}/settings/immutable-releases`
  /// Get immutable releases settings for an organization
  static const orgsGetImmutableReleasesSettings = RestOperationContract(
    operationId: 'orgs/get-immutable-releases-settings',
    method: 'GET',
    path: '/orgs/{org}/settings/immutable-releases',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/settings/immutable-releases/repositories`
  /// List selected repositories for immutable releases enforcement
  static const orgsGetImmutableReleasesSettingsRepositories =
      RestOperationContract(
    operationId: 'orgs/get-immutable-releases-settings-repositories',
    method: 'GET',
    path: '/orgs/{org}/settings/immutable-releases/repositories',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/memberships/orgs/{org}`
  /// Get an organization membership for the authenticated user
  static const orgsGetMembershipForAuthenticatedUser = RestOperationContract(
    operationId: 'orgs/get-membership-for-authenticated-user',
    method: 'GET',
    path: '/user/memberships/orgs/{org}',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/memberships/{username}`
  /// Get organization membership for a user
  static const orgsGetMembershipForUser = RestOperationContract(
    operationId: 'orgs/get-membership-for-user',
    method: 'GET',
    path: '/orgs/{org}/memberships/{username}',
    pathParams: ['org', 'username'],
  );

  /// `GET /orgs/{org}/organization-roles/{role_id}`
  /// Get an organization role
  static const orgsGetOrgRole = RestOperationContract(
    operationId: 'orgs/get-org-role',
    method: 'GET',
    path: '/orgs/{org}/organization-roles/{role_id}',
    pathParams: ['org', 'role_id'],
  );

  /// `GET /orgs/{org}/rulesets/{ruleset_id}/history`
  /// Get organization ruleset history
  static const orgsGetOrgRulesetHistory = RestOperationContract(
    operationId: 'orgs/get-org-ruleset-history',
    method: 'GET',
    path: '/orgs/{org}/rulesets/{ruleset_id}/history',
    pathParams: ['org', 'ruleset_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/rulesets/{ruleset_id}/history/{version_id}`
  /// Get organization ruleset version
  static const orgsGetOrgRulesetVersion = RestOperationContract(
    operationId: 'orgs/get-org-ruleset-version',
    method: 'GET',
    path: '/orgs/{org}/rulesets/{ruleset_id}/history/{version_id}',
    pathParams: ['org', 'ruleset_id', 'version_id'],
  );

  /// `GET /orgs/{org}/hooks/{hook_id}`
  /// Get an organization webhook
  static const orgsGetWebhook = RestOperationContract(
    operationId: 'orgs/get-webhook',
    method: 'GET',
    path: '/orgs/{org}/hooks/{hook_id}',
    pathParams: ['hook_id', 'org'],
  );

  /// `GET /orgs/{org}/hooks/{hook_id}/config`
  /// Get a webhook configuration for an organization
  static const orgsGetWebhookConfigForOrg = RestOperationContract(
    operationId: 'orgs/get-webhook-config-for-org',
    method: 'GET',
    path: '/orgs/{org}/hooks/{hook_id}/config',
    pathParams: ['hook_id', 'org'],
  );

  /// `GET /orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}`
  /// Get a webhook delivery for an organization webhook
  static const orgsGetWebhookDelivery = RestOperationContract(
    operationId: 'orgs/get-webhook-delivery',
    method: 'GET',
    path: '/orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}',
    pathParams: ['delivery_id', 'hook_id', 'org'],
  );

  /// `GET /organizations`
  /// List organizations
  static const orgsList = RestOperationContract(
    operationId: 'orgs/list',
    method: 'GET',
    path: '/organizations',
    queryParams: ['per_page', 'since'],
  );

  /// `GET /orgs/{org}/installations`
  /// List app installations for an organization
  static const orgsListAppInstallations = RestOperationContract(
    operationId: 'orgs/list-app-installations',
    method: 'GET',
    path: '/orgs/{org}/installations',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/artifacts/{subject_digest}/metadata/deployment-records`
  /// List artifact deployment records
  static const orgsListArtifactDeploymentRecords = RestOperationContract(
    operationId: 'orgs/list-artifact-deployment-records',
    method: 'GET',
    path: '/orgs/{org}/artifacts/{subject_digest}/metadata/deployment-records',
    pathParams: ['org', 'subject_digest'],
  );

  /// `GET /orgs/{org}/artifacts/{subject_digest}/metadata/storage-records`
  /// List artifact storage records
  static const orgsListArtifactStorageRecords = RestOperationContract(
    operationId: 'orgs/list-artifact-storage-records',
    method: 'GET',
    path: '/orgs/{org}/artifacts/{subject_digest}/metadata/storage-records',
    pathParams: ['org', 'subject_digest'],
  );

  /// `GET /orgs/{org}/attestations/repositories`
  /// List attestation repositories
  static const orgsListAttestationRepositories = RestOperationContract(
    operationId: 'orgs/list-attestation-repositories',
    method: 'GET',
    path: '/orgs/{org}/attestations/repositories',
    pathParams: ['org'],
    queryParams: ['after', 'before', 'per_page', 'predicate_type'],
  );

  /// `GET /orgs/{org}/attestations/{subject_digest}`
  /// List attestations
  static const orgsListAttestations = RestOperationContract(
    operationId: 'orgs/list-attestations',
    method: 'GET',
    path: '/orgs/{org}/attestations/{subject_digest}',
    pathParams: ['org', 'subject_digest'],
    queryParams: ['after', 'before', 'per_page', 'predicate_type'],
  );

  /// `POST /orgs/{org}/attestations/bulk-list`
  /// List attestations by bulk subject digests
  static const orgsListAttestationsBulk = RestOperationContract(
    operationId: 'orgs/list-attestations-bulk',
    method: 'POST',
    path: '/orgs/{org}/attestations/bulk-list',
    pathParams: ['org'],
    queryParams: ['after', 'before', 'per_page'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /orgs/{org}/blocks`
  /// List users blocked by an organization
  static const orgsListBlockedUsers = RestOperationContract(
    operationId: 'orgs/list-blocked-users',
    method: 'GET',
    path: '/orgs/{org}/blocks',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/failed_invitations`
  /// List failed organization invitations
  static const orgsListFailedInvitations = RestOperationContract(
    operationId: 'orgs/list-failed-invitations',
    method: 'GET',
    path: '/orgs/{org}/failed_invitations',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/orgs`
  /// List organizations for the authenticated user
  static const orgsListForAuthenticatedUser = RestOperationContract(
    operationId: 'orgs/list-for-authenticated-user',
    method: 'GET',
    path: '/user/orgs',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/orgs`
  /// List organizations for a user
  static const orgsListForUser = RestOperationContract(
    operationId: 'orgs/list-for-user',
    method: 'GET',
    path: '/users/{username}/orgs',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/invitations/{invitation_id}/teams`
  /// List organization invitation teams
  static const orgsListInvitationTeams = RestOperationContract(
    operationId: 'orgs/list-invitation-teams',
    method: 'GET',
    path: '/orgs/{org}/invitations/{invitation_id}/teams',
    pathParams: ['invitation_id', 'org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/issue-fields`
  /// List issue fields for an organization
  static const orgsListIssueFields = RestOperationContract(
    operationId: 'orgs/list-issue-fields',
    method: 'GET',
    path: '/orgs/{org}/issue-fields',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/issue-types`
  /// List issue types for an organization
  static const orgsListIssueTypes = RestOperationContract(
    operationId: 'orgs/list-issue-types',
    method: 'GET',
    path: '/orgs/{org}/issue-types',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/members`
  /// List organization members
  static const orgsListMembers = RestOperationContract(
    operationId: 'orgs/list-members',
    method: 'GET',
    path: '/orgs/{org}/members',
    pathParams: ['org'],
    queryParams: ['filter', 'page', 'per_page', 'role'],
  );

  /// `GET /user/memberships/orgs`
  /// List organization memberships for the authenticated user
  static const orgsListMembershipsForAuthenticatedUser = RestOperationContract(
    operationId: 'orgs/list-memberships-for-authenticated-user',
    method: 'GET',
    path: '/user/memberships/orgs',
    queryParams: ['page', 'per_page', 'state'],
  );

  /// `GET /orgs/{org}/organization-roles/{role_id}/teams`
  /// List teams that are assigned to an organization role
  static const orgsListOrgRoleTeams = RestOperationContract(
    operationId: 'orgs/list-org-role-teams',
    method: 'GET',
    path: '/orgs/{org}/organization-roles/{role_id}/teams',
    pathParams: ['org', 'role_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/organization-roles/{role_id}/users`
  /// List users that are assigned to an organization role
  static const orgsListOrgRoleUsers = RestOperationContract(
    operationId: 'orgs/list-org-role-users',
    method: 'GET',
    path: '/orgs/{org}/organization-roles/{role_id}/users',
    pathParams: ['org', 'role_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/organization-roles`
  /// Get all organization roles for an organization
  static const orgsListOrgRoles = RestOperationContract(
    operationId: 'orgs/list-org-roles',
    method: 'GET',
    path: '/orgs/{org}/organization-roles',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/outside_collaborators`
  /// List outside collaborators for an organization
  static const orgsListOutsideCollaborators = RestOperationContract(
    operationId: 'orgs/list-outside-collaborators',
    method: 'GET',
    path: '/orgs/{org}/outside_collaborators',
    pathParams: ['org'],
    queryParams: ['filter', 'page', 'per_page'],
  );

  /// `GET /orgs/{org}/personal-access-tokens/{pat_id}/repositories`
  /// List repositories a fine-grained personal access token has access to
  static const orgsListPatGrantRepositories = RestOperationContract(
    operationId: 'orgs/list-pat-grant-repositories',
    method: 'GET',
    path: '/orgs/{org}/personal-access-tokens/{pat_id}/repositories',
    pathParams: ['org', 'pat_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/personal-access-token-requests/{pat_request_id}/repositories`
  /// List repositories requested to be accessed by a fine-grained personal access token
  static const orgsListPatGrantRequestRepositories = RestOperationContract(
    operationId: 'orgs/list-pat-grant-request-repositories',
    method: 'GET',
    path:
        '/orgs/{org}/personal-access-token-requests/{pat_request_id}/repositories',
    pathParams: ['org', 'pat_request_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/personal-access-token-requests`
  /// List requests to access organization resources with fine-grained personal access tokens
  static const orgsListPatGrantRequests = RestOperationContract(
    operationId: 'orgs/list-pat-grant-requests',
    method: 'GET',
    path: '/orgs/{org}/personal-access-token-requests',
    pathParams: ['org'],
    queryParams: [
      'direction',
      'last_used_after',
      'last_used_before',
      'owner',
      'page',
      'per_page',
      'permission',
      'repository',
      'sort',
      'token_id'
    ],
  );

  /// `GET /orgs/{org}/personal-access-tokens`
  /// List fine-grained personal access tokens with access to organization resources
  static const orgsListPatGrants = RestOperationContract(
    operationId: 'orgs/list-pat-grants',
    method: 'GET',
    path: '/orgs/{org}/personal-access-tokens',
    pathParams: ['org'],
    queryParams: [
      'direction',
      'last_used_after',
      'last_used_before',
      'owner',
      'page',
      'per_page',
      'permission',
      'repository',
      'sort',
      'token_id'
    ],
  );

  /// `GET /orgs/{org}/invitations`
  /// List pending organization invitations
  static const orgsListPendingInvitations = RestOperationContract(
    operationId: 'orgs/list-pending-invitations',
    method: 'GET',
    path: '/orgs/{org}/invitations',
    pathParams: ['org'],
    queryParams: ['invitation_source', 'page', 'per_page', 'role'],
  );

  /// `GET /orgs/{org}/public_members`
  /// List public organization members
  static const orgsListPublicMembers = RestOperationContract(
    operationId: 'orgs/list-public-members',
    method: 'GET',
    path: '/orgs/{org}/public_members',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/security-managers`
  /// List security manager teams
  static const orgsListSecurityManagerTeams = RestOperationContract(
    operationId: 'orgs/list-security-manager-teams',
    method: 'GET',
    path: '/orgs/{org}/security-managers',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/hooks/{hook_id}/deliveries`
  /// List deliveries for an organization webhook
  static const orgsListWebhookDeliveries = RestOperationContract(
    operationId: 'orgs/list-webhook-deliveries',
    method: 'GET',
    path: '/orgs/{org}/hooks/{hook_id}/deliveries',
    pathParams: ['hook_id', 'org'],
    queryParams: ['cursor', 'per_page', 'status'],
  );

  /// `GET /orgs/{org}/hooks`
  /// List organization webhooks
  static const orgsListWebhooks = RestOperationContract(
    operationId: 'orgs/list-webhooks',
    method: 'GET',
    path: '/orgs/{org}/hooks',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `POST /orgs/{org}/hooks/{hook_id}/pings`
  /// Ping an organization webhook
  static const orgsPingWebhook = RestOperationContract(
    operationId: 'orgs/ping-webhook',
    method: 'POST',
    path: '/orgs/{org}/hooks/{hook_id}/pings',
    pathParams: ['hook_id', 'org'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}/attempts`
  /// Redeliver a delivery for an organization webhook
  static const orgsRedeliverWebhookDelivery = RestOperationContract(
    operationId: 'orgs/redeliver-webhook-delivery',
    method: 'POST',
    path: '/orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}/attempts',
    pathParams: ['delivery_id', 'hook_id', 'org'],
    successStatuses: [202],
  );

  /// `DELETE /orgs/{org}/members/{username}`
  /// Remove an organization member
  static const orgsRemoveMember = RestOperationContract(
    operationId: 'orgs/remove-member',
    method: 'DELETE',
    path: '/orgs/{org}/members/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/memberships/{username}`
  /// Remove organization membership for a user
  static const orgsRemoveMembershipForUser = RestOperationContract(
    operationId: 'orgs/remove-membership-for-user',
    method: 'DELETE',
    path: '/orgs/{org}/memberships/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/outside_collaborators/{username}`
  /// Remove outside collaborator from an organization
  static const orgsRemoveOutsideCollaborator = RestOperationContract(
    operationId: 'orgs/remove-outside-collaborator',
    method: 'DELETE',
    path: '/orgs/{org}/outside_collaborators/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/public_members/{username}`
  /// Remove public organization membership for the authenticated user
  static const orgsRemovePublicMembershipForAuthenticatedUser =
      RestOperationContract(
    operationId: 'orgs/remove-public-membership-for-authenticated-user',
    method: 'DELETE',
    path: '/orgs/{org}/public_members/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/security-managers/teams/{team_slug}`
  /// Remove a security manager team
  static const orgsRemoveSecurityManagerTeam = RestOperationContract(
    operationId: 'orgs/remove-security-manager-team',
    method: 'DELETE',
    path: '/orgs/{org}/security-managers/teams/{team_slug}',
    pathParams: ['org', 'team_slug'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/personal-access-token-requests/{pat_request_id}`
  /// Review a request to access organization resources with a fine-grained personal access token
  static const orgsReviewPatGrantRequest = RestOperationContract(
    operationId: 'orgs/review-pat-grant-request',
    method: 'POST',
    path: '/orgs/{org}/personal-access-token-requests/{pat_request_id}',
    pathParams: ['org', 'pat_request_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/personal-access-token-requests`
  /// Review requests to access organization resources with fine-grained personal access tokens
  static const orgsReviewPatGrantRequestsInBulk = RestOperationContract(
    operationId: 'orgs/review-pat-grant-requests-in-bulk',
    method: 'POST',
    path: '/orgs/{org}/personal-access-token-requests',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `DELETE /orgs/{org}/organization-roles/teams/{team_slug}`
  /// Remove all organization roles for a team
  static const orgsRevokeAllOrgRolesTeam = RestOperationContract(
    operationId: 'orgs/revoke-all-org-roles-team',
    method: 'DELETE',
    path: '/orgs/{org}/organization-roles/teams/{team_slug}',
    pathParams: ['org', 'team_slug'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/organization-roles/users/{username}`
  /// Remove all organization roles for a user
  static const orgsRevokeAllOrgRolesUser = RestOperationContract(
    operationId: 'orgs/revoke-all-org-roles-user',
    method: 'DELETE',
    path: '/orgs/{org}/organization-roles/users/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/organization-roles/teams/{team_slug}/{role_id}`
  /// Remove an organization role from a team
  static const orgsRevokeOrgRoleTeam = RestOperationContract(
    operationId: 'orgs/revoke-org-role-team',
    method: 'DELETE',
    path: '/orgs/{org}/organization-roles/teams/{team_slug}/{role_id}',
    pathParams: ['org', 'role_id', 'team_slug'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/organization-roles/users/{username}/{role_id}`
  /// Remove an organization role from a user
  static const orgsRevokeOrgRoleUser = RestOperationContract(
    operationId: 'orgs/revoke-org-role-user',
    method: 'DELETE',
    path: '/orgs/{org}/organization-roles/users/{username}/{role_id}',
    pathParams: ['org', 'role_id', 'username'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/artifacts/metadata/deployment-record/cluster/{cluster}`
  /// Set cluster deployment records
  static const orgsSetClusterDeploymentRecords = RestOperationContract(
    operationId: 'orgs/set-cluster-deployment-records',
    method: 'POST',
    path: '/orgs/{org}/artifacts/metadata/deployment-record/cluster/{cluster}',
    pathParams: ['cluster', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 207],
  );

  /// `PUT /orgs/{org}/settings/immutable-releases`
  /// Set immutable releases settings for an organization
  static const orgsSetImmutableReleasesSettings = RestOperationContract(
    operationId: 'orgs/set-immutable-releases-settings',
    method: 'PUT',
    path: '/orgs/{org}/settings/immutable-releases',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/settings/immutable-releases/repositories`
  /// Set selected repositories for immutable releases enforcement
  static const orgsSetImmutableReleasesSettingsRepositories =
      RestOperationContract(
    operationId: 'orgs/set-immutable-releases-settings-repositories',
    method: 'PUT',
    path: '/orgs/{org}/settings/immutable-releases/repositories',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/memberships/{username}`
  /// Set organization membership for a user
  static const orgsSetMembershipForUser = RestOperationContract(
    operationId: 'orgs/set-membership-for-user',
    method: 'PUT',
    path: '/orgs/{org}/memberships/{username}',
    pathParams: ['org', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /orgs/{org}/public_members/{username}`
  /// Set public organization membership for the authenticated user
  static const orgsSetPublicMembershipForAuthenticatedUser =
      RestOperationContract(
    operationId: 'orgs/set-public-membership-for-authenticated-user',
    method: 'PUT',
    path: '/orgs/{org}/public_members/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/blocks/{username}`
  /// Unblock a user from an organization
  static const orgsUnblockUser = RestOperationContract(
    operationId: 'orgs/unblock-user',
    method: 'DELETE',
    path: '/orgs/{org}/blocks/{username}',
    pathParams: ['org', 'username'],
    successStatuses: [204],
  );

  /// `PATCH /orgs/{org}`
  /// Update an organization
  static const orgsUpdate = RestOperationContract(
    operationId: 'orgs/update',
    method: 'PATCH',
    path: '/orgs/{org}',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/issue-fields/{issue_field_id}`
  /// Update issue field for an organization
  static const orgsUpdateIssueField = RestOperationContract(
    operationId: 'orgs/update-issue-field',
    method: 'PATCH',
    path: '/orgs/{org}/issue-fields/{issue_field_id}',
    pathParams: ['issue_field_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /orgs/{org}/issue-types/{issue_type_id}`
  /// Update issue type for an organization
  static const orgsUpdateIssueType = RestOperationContract(
    operationId: 'orgs/update-issue-type',
    method: 'PUT',
    path: '/orgs/{org}/issue-types/{issue_type_id}',
    pathParams: ['issue_type_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /user/memberships/orgs/{org}`
  /// Update an organization membership for the authenticated user
  static const orgsUpdateMembershipForAuthenticatedUser = RestOperationContract(
    operationId: 'orgs/update-membership-for-authenticated-user',
    method: 'PATCH',
    path: '/user/memberships/orgs/{org}',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 202],
  );

  /// `POST /orgs/{org}/personal-access-tokens/{pat_id}`
  /// Update the access a fine-grained personal access token has to organization resources
  static const orgsUpdatePatAccess = RestOperationContract(
    operationId: 'orgs/update-pat-access',
    method: 'POST',
    path: '/orgs/{org}/personal-access-tokens/{pat_id}',
    pathParams: ['org', 'pat_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/personal-access-tokens`
  /// Update the access to organization resources via fine-grained personal access tokens
  static const orgsUpdatePatAccesses = RestOperationContract(
    operationId: 'orgs/update-pat-accesses',
    method: 'POST',
    path: '/orgs/{org}/personal-access-tokens',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `PATCH /orgs/{org}/hooks/{hook_id}`
  /// Update an organization webhook
  static const orgsUpdateWebhook = RestOperationContract(
    operationId: 'orgs/update-webhook',
    method: 'PATCH',
    path: '/orgs/{org}/hooks/{hook_id}',
    pathParams: ['hook_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/hooks/{hook_id}/config`
  /// Update a webhook configuration for an organization
  static const orgsUpdateWebhookConfigForOrg = RestOperationContract(
    operationId: 'orgs/update-webhook-config-for-org',
    method: 'PATCH',
    path: '/orgs/{org}/hooks/{hook_id}/config',
    pathParams: ['hook_id', 'org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /user/packages/{package_type}/{package_name}`
  /// Delete a package for the authenticated user
  static const packagesDeletePackageForAuthenticatedUser =
      RestOperationContract(
    operationId: 'packages/delete-package-for-authenticated-user',
    method: 'DELETE',
    path: '/user/packages/{package_type}/{package_name}',
    pathParams: ['package_name', 'package_type'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/packages/{package_type}/{package_name}`
  /// Delete a package for an organization
  static const packagesDeletePackageForOrg = RestOperationContract(
    operationId: 'packages/delete-package-for-org',
    method: 'DELETE',
    path: '/orgs/{org}/packages/{package_type}/{package_name}',
    pathParams: ['org', 'package_name', 'package_type'],
    successStatuses: [204],
  );

  /// `DELETE /users/{username}/packages/{package_type}/{package_name}`
  /// Delete a package for a user
  static const packagesDeletePackageForUser = RestOperationContract(
    operationId: 'packages/delete-package-for-user',
    method: 'DELETE',
    path: '/users/{username}/packages/{package_type}/{package_name}',
    pathParams: ['package_name', 'package_type', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /user/packages/{package_type}/{package_name}/versions/{package_version_id}`
  /// Delete a package version for the authenticated user
  static const packagesDeletePackageVersionForAuthenticatedUser =
      RestOperationContract(
    operationId: 'packages/delete-package-version-for-authenticated-user',
    method: 'DELETE',
    path:
        '/user/packages/{package_type}/{package_name}/versions/{package_version_id}',
    pathParams: ['package_name', 'package_type', 'package_version_id'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}`
  /// Delete package version for an organization
  static const packagesDeletePackageVersionForOrg = RestOperationContract(
    operationId: 'packages/delete-package-version-for-org',
    method: 'DELETE',
    path:
        '/orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}',
    pathParams: ['org', 'package_name', 'package_type', 'package_version_id'],
    successStatuses: [204],
  );

  /// `DELETE /users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}`
  /// Delete package version for a user
  static const packagesDeletePackageVersionForUser = RestOperationContract(
    operationId: 'packages/delete-package-version-for-user',
    method: 'DELETE',
    path:
        '/users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}',
    pathParams: [
      'package_name',
      'package_type',
      'package_version_id',
      'username'
    ],
    successStatuses: [204],
  );

  /// `GET /user/packages/{package_type}/{package_name}/versions`
  /// List package versions for a package owned by the authenticated user
  static const packagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUser =
      RestOperationContract(
    operationId:
        'packages/get-all-package-versions-for-package-owned-by-authenticated-user',
    method: 'GET',
    path: '/user/packages/{package_type}/{package_name}/versions',
    pathParams: ['package_name', 'package_type'],
    queryParams: ['page', 'per_page', 'state'],
  );

  /// `GET /orgs/{org}/packages/{package_type}/{package_name}/versions`
  /// List package versions for a package owned by an organization
  static const packagesGetAllPackageVersionsForPackageOwnedByOrg =
      RestOperationContract(
    operationId: 'packages/get-all-package-versions-for-package-owned-by-org',
    method: 'GET',
    path: '/orgs/{org}/packages/{package_type}/{package_name}/versions',
    pathParams: ['org', 'package_name', 'package_type'],
    queryParams: ['page', 'per_page', 'state'],
  );

  /// `GET /users/{username}/packages/{package_type}/{package_name}/versions`
  /// List package versions for a package owned by a user
  static const packagesGetAllPackageVersionsForPackageOwnedByUser =
      RestOperationContract(
    operationId: 'packages/get-all-package-versions-for-package-owned-by-user',
    method: 'GET',
    path: '/users/{username}/packages/{package_type}/{package_name}/versions',
    pathParams: ['package_name', 'package_type', 'username'],
  );

  /// `GET /user/packages/{package_type}/{package_name}`
  /// Get a package for the authenticated user
  static const packagesGetPackageForAuthenticatedUser = RestOperationContract(
    operationId: 'packages/get-package-for-authenticated-user',
    method: 'GET',
    path: '/user/packages/{package_type}/{package_name}',
    pathParams: ['package_name', 'package_type'],
  );

  /// `GET /orgs/{org}/packages/{package_type}/{package_name}`
  /// Get a package for an organization
  static const packagesGetPackageForOrganization = RestOperationContract(
    operationId: 'packages/get-package-for-organization',
    method: 'GET',
    path: '/orgs/{org}/packages/{package_type}/{package_name}',
    pathParams: ['org', 'package_name', 'package_type'],
  );

  /// `GET /users/{username}/packages/{package_type}/{package_name}`
  /// Get a package for a user
  static const packagesGetPackageForUser = RestOperationContract(
    operationId: 'packages/get-package-for-user',
    method: 'GET',
    path: '/users/{username}/packages/{package_type}/{package_name}',
    pathParams: ['package_name', 'package_type', 'username'],
  );

  /// `GET /user/packages/{package_type}/{package_name}/versions/{package_version_id}`
  /// Get a package version for the authenticated user
  static const packagesGetPackageVersionForAuthenticatedUser =
      RestOperationContract(
    operationId: 'packages/get-package-version-for-authenticated-user',
    method: 'GET',
    path:
        '/user/packages/{package_type}/{package_name}/versions/{package_version_id}',
    pathParams: ['package_name', 'package_type', 'package_version_id'],
  );

  /// `GET /orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}`
  /// Get a package version for an organization
  static const packagesGetPackageVersionForOrganization = RestOperationContract(
    operationId: 'packages/get-package-version-for-organization',
    method: 'GET',
    path:
        '/orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}',
    pathParams: ['org', 'package_name', 'package_type', 'package_version_id'],
  );

  /// `GET /users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}`
  /// Get a package version for a user
  static const packagesGetPackageVersionForUser = RestOperationContract(
    operationId: 'packages/get-package-version-for-user',
    method: 'GET',
    path:
        '/users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}',
    pathParams: [
      'package_name',
      'package_type',
      'package_version_id',
      'username'
    ],
  );

  /// `GET /user/docker/conflicts`
  /// Get list of conflicting packages during Docker migration for authenticated-user
  static const packagesListDockerMigrationConflictingPackagesForAuthenticatedUser =
      RestOperationContract(
    operationId:
        'packages/list-docker-migration-conflicting-packages-for-authenticated-user',
    method: 'GET',
    path: '/user/docker/conflicts',
  );

  /// `GET /orgs/{org}/docker/conflicts`
  /// Get list of conflicting packages during Docker migration for organization
  static const packagesListDockerMigrationConflictingPackagesForOrganization =
      RestOperationContract(
    operationId:
        'packages/list-docker-migration-conflicting-packages-for-organization',
    method: 'GET',
    path: '/orgs/{org}/docker/conflicts',
    pathParams: ['org'],
  );

  /// `GET /users/{username}/docker/conflicts`
  /// Get list of conflicting packages during Docker migration for user
  static const packagesListDockerMigrationConflictingPackagesForUser =
      RestOperationContract(
    operationId: 'packages/list-docker-migration-conflicting-packages-for-user',
    method: 'GET',
    path: '/users/{username}/docker/conflicts',
    pathParams: ['username'],
  );

  /// `GET /user/packages`
  /// List packages for the authenticated user's namespace
  static const packagesListPackagesForAuthenticatedUser = RestOperationContract(
    operationId: 'packages/list-packages-for-authenticated-user',
    method: 'GET',
    path: '/user/packages',
    queryParams: ['package_type', 'page', 'per_page', 'visibility'],
  );

  /// `GET /orgs/{org}/packages`
  /// List packages for an organization
  static const packagesListPackagesForOrganization = RestOperationContract(
    operationId: 'packages/list-packages-for-organization',
    method: 'GET',
    path: '/orgs/{org}/packages',
    pathParams: ['org'],
    queryParams: ['package_type', 'page', 'per_page', 'visibility'],
  );

  /// `GET /users/{username}/packages`
  /// List packages for a user
  static const packagesListPackagesForUser = RestOperationContract(
    operationId: 'packages/list-packages-for-user',
    method: 'GET',
    path: '/users/{username}/packages',
    pathParams: ['username'],
    queryParams: ['package_type', 'page', 'per_page', 'visibility'],
  );

  /// `POST /user/packages/{package_type}/{package_name}/restore`
  /// Restore a package for the authenticated user
  static const packagesRestorePackageForAuthenticatedUser =
      RestOperationContract(
    operationId: 'packages/restore-package-for-authenticated-user',
    method: 'POST',
    path: '/user/packages/{package_type}/{package_name}/restore',
    pathParams: ['package_name', 'package_type'],
    queryParams: ['token'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/packages/{package_type}/{package_name}/restore`
  /// Restore a package for an organization
  static const packagesRestorePackageForOrg = RestOperationContract(
    operationId: 'packages/restore-package-for-org',
    method: 'POST',
    path: '/orgs/{org}/packages/{package_type}/{package_name}/restore',
    pathParams: ['org', 'package_name', 'package_type'],
    queryParams: ['token'],
    successStatuses: [204],
  );

  /// `POST /users/{username}/packages/{package_type}/{package_name}/restore`
  /// Restore a package for a user
  static const packagesRestorePackageForUser = RestOperationContract(
    operationId: 'packages/restore-package-for-user',
    method: 'POST',
    path: '/users/{username}/packages/{package_type}/{package_name}/restore',
    pathParams: ['package_name', 'package_type', 'username'],
    queryParams: ['token'],
    successStatuses: [204],
  );

  /// `POST /user/packages/{package_type}/{package_name}/versions/{package_version_id}/restore`
  /// Restore a package version for the authenticated user
  static const packagesRestorePackageVersionForAuthenticatedUser =
      RestOperationContract(
    operationId: 'packages/restore-package-version-for-authenticated-user',
    method: 'POST',
    path:
        '/user/packages/{package_type}/{package_name}/versions/{package_version_id}/restore',
    pathParams: ['package_name', 'package_type', 'package_version_id'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore`
  /// Restore package version for an organization
  static const packagesRestorePackageVersionForOrg = RestOperationContract(
    operationId: 'packages/restore-package-version-for-org',
    method: 'POST',
    path:
        '/orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore',
    pathParams: ['org', 'package_name', 'package_type', 'package_version_id'],
    successStatuses: [204],
  );

  /// `POST /users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore`
  /// Restore package version for a user
  static const packagesRestorePackageVersionForUser = RestOperationContract(
    operationId: 'packages/restore-package-version-for-user',
    method: 'POST',
    path:
        '/users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore',
    pathParams: [
      'package_name',
      'package_type',
      'package_version_id',
      'username'
    ],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/private-registries`
  /// Create a private registry for an organization
  static const privateRegistriesCreateOrgPrivateRegistry =
      RestOperationContract(
    operationId: 'private-registries/create-org-private-registry',
    method: 'POST',
    path: '/orgs/{org}/private-registries',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /orgs/{org}/private-registries/{secret_name}`
  /// Delete a private registry for an organization
  static const privateRegistriesDeleteOrgPrivateRegistry =
      RestOperationContract(
    operationId: 'private-registries/delete-org-private-registry',
    method: 'DELETE',
    path: '/orgs/{org}/private-registries/{secret_name}',
    pathParams: ['org', 'secret_name'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/private-registries/{secret_name}`
  /// Get a private registry for an organization
  static const privateRegistriesGetOrgPrivateRegistry = RestOperationContract(
    operationId: 'private-registries/get-org-private-registry',
    method: 'GET',
    path: '/orgs/{org}/private-registries/{secret_name}',
    pathParams: ['org', 'secret_name'],
  );

  /// `GET /orgs/{org}/private-registries/public-key`
  /// Get private registries public key for an organization
  static const privateRegistriesGetOrgPublicKey = RestOperationContract(
    operationId: 'private-registries/get-org-public-key',
    method: 'GET',
    path: '/orgs/{org}/private-registries/public-key',
    pathParams: ['org'],
  );

  /// `GET /orgs/{org}/private-registries`
  /// List private registries for an organization
  static const privateRegistriesListOrgPrivateRegistries =
      RestOperationContract(
    operationId: 'private-registries/list-org-private-registries',
    method: 'GET',
    path: '/orgs/{org}/private-registries',
    pathParams: ['org'],
    queryParams: ['page', 'per_page'],
  );

  /// `PATCH /orgs/{org}/private-registries/{secret_name}`
  /// Update a private registry for an organization
  static const privateRegistriesUpdateOrgPrivateRegistry =
      RestOperationContract(
    operationId: 'private-registries/update-org-private-registry',
    method: 'PATCH',
    path: '/orgs/{org}/private-registries/{secret_name}',
    pathParams: ['org', 'secret_name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /orgs/{org}/projectsV2/{project_number}/fields`
  /// Add a field to an organization-owned project.
  static const projectsAddFieldForOrg = RestOperationContract(
    operationId: 'projects/add-field-for-org',
    method: 'POST',
    path: '/orgs/{org}/projectsV2/{project_number}/fields',
    pathParams: ['org', 'project_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /users/{username}/projectsV2/{project_number}/fields`
  /// Add field to user owned project
  static const projectsAddFieldForUser = RestOperationContract(
    operationId: 'projects/add-field-for-user',
    method: 'POST',
    path: '/users/{username}/projectsV2/{project_number}/fields',
    pathParams: ['project_number', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/projectsV2/{project_number}/items`
  /// Add item to organization owned project
  static const projectsAddItemForOrg = RestOperationContract(
    operationId: 'projects/add-item-for-org',
    method: 'POST',
    path: '/orgs/{org}/projectsV2/{project_number}/items',
    pathParams: ['org', 'project_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /users/{username}/projectsV2/{project_number}/items`
  /// Add item to user owned project
  static const projectsAddItemForUser = RestOperationContract(
    operationId: 'projects/add-item-for-user',
    method: 'POST',
    path: '/users/{username}/projectsV2/{project_number}/items',
    pathParams: ['project_number', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /user/{user_id}/projectsV2/{project_number}/drafts`
  /// Create draft item for user owned project
  static const projectsCreateDraftItemForAuthenticatedUser =
      RestOperationContract(
    operationId: 'projects/create-draft-item-for-authenticated-user',
    method: 'POST',
    path: '/user/{user_id}/projectsV2/{project_number}/drafts',
    pathParams: ['project_number', 'user_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/projectsV2/{project_number}/drafts`
  /// Create draft item for organization owned project
  static const projectsCreateDraftItemForOrg = RestOperationContract(
    operationId: 'projects/create-draft-item-for-org',
    method: 'POST',
    path: '/orgs/{org}/projectsV2/{project_number}/drafts',
    pathParams: ['org', 'project_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /orgs/{org}/projectsV2/{project_number}/views`
  /// Create a view for an organization-owned project
  static const projectsCreateViewForOrg = RestOperationContract(
    operationId: 'projects/create-view-for-org',
    method: 'POST',
    path: '/orgs/{org}/projectsV2/{project_number}/views',
    pathParams: ['org', 'project_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /users/{user_id}/projectsV2/{project_number}/views`
  /// Create a view for a user-owned project
  static const projectsCreateViewForUser = RestOperationContract(
    operationId: 'projects/create-view-for-user',
    method: 'POST',
    path: '/users/{user_id}/projectsV2/{project_number}/views',
    pathParams: ['project_number', 'user_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /orgs/{org}/projectsV2/{project_number}/items/{item_id}`
  /// Delete project item for organization
  static const projectsDeleteItemForOrg = RestOperationContract(
    operationId: 'projects/delete-item-for-org',
    method: 'DELETE',
    path: '/orgs/{org}/projectsV2/{project_number}/items/{item_id}',
    pathParams: ['item_id', 'org', 'project_number'],
    successStatuses: [204],
  );

  /// `DELETE /users/{username}/projectsV2/{project_number}/items/{item_id}`
  /// Delete project item for user
  static const projectsDeleteItemForUser = RestOperationContract(
    operationId: 'projects/delete-item-for-user',
    method: 'DELETE',
    path: '/users/{username}/projectsV2/{project_number}/items/{item_id}',
    pathParams: ['item_id', 'project_number', 'username'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/projectsV2/{project_number}/fields/{field_id}`
  /// Get project field for organization
  static const projectsGetFieldForOrg = RestOperationContract(
    operationId: 'projects/get-field-for-org',
    method: 'GET',
    path: '/orgs/{org}/projectsV2/{project_number}/fields/{field_id}',
    pathParams: ['field_id', 'org', 'project_number'],
  );

  /// `GET /users/{username}/projectsV2/{project_number}/fields/{field_id}`
  /// Get project field for user
  static const projectsGetFieldForUser = RestOperationContract(
    operationId: 'projects/get-field-for-user',
    method: 'GET',
    path: '/users/{username}/projectsV2/{project_number}/fields/{field_id}',
    pathParams: ['field_id', 'project_number', 'username'],
  );

  /// `GET /orgs/{org}/projectsV2/{project_number}`
  /// Get project for organization
  static const projectsGetForOrg = RestOperationContract(
    operationId: 'projects/get-for-org',
    method: 'GET',
    path: '/orgs/{org}/projectsV2/{project_number}',
    pathParams: ['org', 'project_number'],
  );

  /// `GET /users/{username}/projectsV2/{project_number}`
  /// Get project for user
  static const projectsGetForUser = RestOperationContract(
    operationId: 'projects/get-for-user',
    method: 'GET',
    path: '/users/{username}/projectsV2/{project_number}',
    pathParams: ['project_number', 'username'],
  );

  /// `GET /orgs/{org}/projectsV2/{project_number}/items/{item_id}`
  /// Get an item for an organization owned project
  static const projectsGetOrgItem = RestOperationContract(
    operationId: 'projects/get-org-item',
    method: 'GET',
    path: '/orgs/{org}/projectsV2/{project_number}/items/{item_id}',
    pathParams: ['item_id', 'org', 'project_number'],
    queryParams: ['fields'],
  );

  /// `GET /users/{username}/projectsV2/{project_number}/items/{item_id}`
  /// Get an item for a user owned project
  static const projectsGetUserItem = RestOperationContract(
    operationId: 'projects/get-user-item',
    method: 'GET',
    path: '/users/{username}/projectsV2/{project_number}/items/{item_id}',
    pathParams: ['item_id', 'project_number', 'username'],
    queryParams: ['fields'],
  );

  /// `GET /orgs/{org}/projectsV2/{project_number}/fields`
  /// List project fields for organization
  static const projectsListFieldsForOrg = RestOperationContract(
    operationId: 'projects/list-fields-for-org',
    method: 'GET',
    path: '/orgs/{org}/projectsV2/{project_number}/fields',
    pathParams: ['org', 'project_number'],
    queryParams: ['after', 'before', 'per_page'],
  );

  /// `GET /users/{username}/projectsV2/{project_number}/fields`
  /// List project fields for user
  static const projectsListFieldsForUser = RestOperationContract(
    operationId: 'projects/list-fields-for-user',
    method: 'GET',
    path: '/users/{username}/projectsV2/{project_number}/fields',
    pathParams: ['project_number', 'username'],
    queryParams: ['after', 'before', 'per_page'],
  );

  /// `GET /orgs/{org}/projectsV2`
  /// List projects for organization
  static const projectsListForOrg = RestOperationContract(
    operationId: 'projects/list-for-org',
    method: 'GET',
    path: '/orgs/{org}/projectsV2',
    pathParams: ['org'],
    queryParams: ['after', 'before', 'per_page', 'q'],
  );

  /// `GET /users/{username}/projectsV2`
  /// List projects for user
  static const projectsListForUser = RestOperationContract(
    operationId: 'projects/list-for-user',
    method: 'GET',
    path: '/users/{username}/projectsV2',
    pathParams: ['username'],
    queryParams: ['after', 'before', 'per_page', 'q'],
  );

  /// `GET /orgs/{org}/projectsV2/{project_number}/items`
  /// List items for an organization owned project
  static const projectsListItemsForOrg = RestOperationContract(
    operationId: 'projects/list-items-for-org',
    method: 'GET',
    path: '/orgs/{org}/projectsV2/{project_number}/items',
    pathParams: ['org', 'project_number'],
    queryParams: ['after', 'before', 'fields', 'per_page', 'q'],
  );

  /// `GET /users/{username}/projectsV2/{project_number}/items`
  /// List items for a user owned project
  static const projectsListItemsForUser = RestOperationContract(
    operationId: 'projects/list-items-for-user',
    method: 'GET',
    path: '/users/{username}/projectsV2/{project_number}/items',
    pathParams: ['project_number', 'username'],
    queryParams: ['after', 'before', 'fields', 'per_page', 'q'],
  );

  /// `GET /orgs/{org}/projectsV2/{project_number}/views/{view_number}/items`
  /// List items for an organization project view
  static const projectsListViewItemsForOrg = RestOperationContract(
    operationId: 'projects/list-view-items-for-org',
    method: 'GET',
    path: '/orgs/{org}/projectsV2/{project_number}/views/{view_number}/items',
    pathParams: ['org', 'project_number', 'view_number'],
    queryParams: ['after', 'before', 'fields', 'per_page'],
  );

  /// `GET /users/{username}/projectsV2/{project_number}/views/{view_number}/items`
  /// List items for a user project view
  static const projectsListViewItemsForUser = RestOperationContract(
    operationId: 'projects/list-view-items-for-user',
    method: 'GET',
    path:
        '/users/{username}/projectsV2/{project_number}/views/{view_number}/items',
    pathParams: ['project_number', 'username', 'view_number'],
    queryParams: ['after', 'before', 'fields', 'per_page'],
  );

  /// `PATCH /orgs/{org}/projectsV2/{project_number}/items/{item_id}`
  /// Update project item for organization
  static const projectsUpdateItemForOrg = RestOperationContract(
    operationId: 'projects/update-item-for-org',
    method: 'PATCH',
    path: '/orgs/{org}/projectsV2/{project_number}/items/{item_id}',
    pathParams: ['item_id', 'org', 'project_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /users/{username}/projectsV2/{project_number}/items/{item_id}`
  /// Update project item for user
  static const projectsUpdateItemForUser = RestOperationContract(
    operationId: 'projects/update-item-for-user',
    method: 'PATCH',
    path: '/users/{username}/projectsV2/{project_number}/items/{item_id}',
    pathParams: ['item_id', 'project_number', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/stacks/{stack_number}/add`
  /// Add pull requests to a pull request stack
  static const pullRequestStacksAdd = RestOperationContract(
    operationId: 'pull-request-stacks/add',
    method: 'POST',
    path: '/repos/{owner}/{repo}/stacks/{stack_number}/add',
    pathParams: ['owner', 'repo', 'stack_number'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/stacks`
  /// Create a pull request stack
  static const pullRequestStacksCreate = RestOperationContract(
    operationId: 'pull-request-stacks/create',
    method: 'POST',
    path: '/repos/{owner}/{repo}/stacks',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `GET /repos/{owner}/{repo}/stacks/{stack_number}`
  /// Get a pull request stack
  static const pullRequestStacksGet = RestOperationContract(
    operationId: 'pull-request-stacks/get',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stacks/{stack_number}',
    pathParams: ['owner', 'repo', 'stack_number'],
  );

  /// `GET /repos/{owner}/{repo}/stacks`
  /// List pull request stacks
  static const pullRequestStacksList = RestOperationContract(
    operationId: 'pull-request-stacks/list',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stacks',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page', 'pull_request'],
  );

  /// `POST /repos/{owner}/{repo}/stacks/{stack_number}/unstack`
  /// Remove pull requests from a pull request stack
  static const pullRequestStacksUnstack = RestOperationContract(
    operationId: 'pull-request-stacks/unstack',
    method: 'POST',
    path: '/repos/{owner}/{repo}/stacks/{stack_number}/unstack',
    pathParams: ['owner', 'repo', 'stack_number'],
    successStatuses: [200, 204],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}/merge`
  /// Check if a pull request has been merged
  static const pullsCheckIfMerged = RestOperationContract(
    operationId: 'pulls/check-if-merged',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/merge',
    pathParams: ['owner', 'pull_number', 'repo'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/pulls`
  /// Create a pull request
  static const pullsCreate = RestOperationContract(
    operationId: 'pulls/create',
    method: 'POST',
    path: '/repos/{owner}/{repo}/pulls',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/pulls/{pull_number}/comments/{comment_id}/replies`
  /// Create a reply for a review comment
  static const pullsCreateReplyForReviewComment = RestOperationContract(
    operationId: 'pulls/create-reply-for-review-comment',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/pulls/{pull_number}/comments/{comment_id}/replies',
    pathParams: ['comment_id', 'owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/pulls/{pull_number}/reviews`
  /// Create a review for a pull request
  static const pullsCreateReview = RestOperationContract(
    operationId: 'pulls/create-review',
    method: 'POST',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews',
    pathParams: ['owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/pulls/{pull_number}/comments`
  /// Create a review comment for a pull request
  static const pullsCreateReviewComment = RestOperationContract(
    operationId: 'pulls/create-review-comment',
    method: 'POST',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/comments',
    pathParams: ['owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}`
  /// Delete a pending review for a pull request
  static const pullsDeletePendingReview = RestOperationContract(
    operationId: 'pulls/delete-pending-review',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}',
    pathParams: ['owner', 'pull_number', 'repo', 'review_id'],
  );

  /// `DELETE /repos/{owner}/{repo}/pulls/comments/{comment_id}`
  /// Delete a review comment for a pull request
  static const pullsDeleteReviewComment = RestOperationContract(
    operationId: 'pulls/delete-review-comment',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}',
    pathParams: ['comment_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/dismissals`
  /// Dismiss a review for a pull request
  static const pullsDismissReview = RestOperationContract(
    operationId: 'pulls/dismiss-review',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/dismissals',
    pathParams: ['owner', 'pull_number', 'repo', 'review_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}`
  /// Get a pull request
  static const pullsGet = RestOperationContract(
    operationId: 'pulls/get',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}',
    pathParams: ['owner', 'pull_number', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}/merge-async/{uuid}`
  /// Get the result of an asynchronous merge
  static const pullsGetMergeAsyncResult = RestOperationContract(
    operationId: 'pulls/get-merge-async-result',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/merge-async/{uuid}',
    pathParams: ['owner', 'pull_number', 'repo', 'uuid'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}`
  /// Get a review for a pull request
  static const pullsGetReview = RestOperationContract(
    operationId: 'pulls/get-review',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}',
    pathParams: ['owner', 'pull_number', 'repo', 'review_id'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/comments/{comment_id}`
  /// Get a review comment for a pull request
  static const pullsGetReviewComment = RestOperationContract(
    operationId: 'pulls/get-review-comment',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}',
    pathParams: ['comment_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/pulls`
  /// List pull requests
  static const pullsList = RestOperationContract(
    operationId: 'pulls/list',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'base',
      'direction',
      'head',
      'page',
      'per_page',
      'sort',
      'state'
    ],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/comments`
  /// List comments for a pull request review
  static const pullsListCommentsForReview = RestOperationContract(
    operationId: 'pulls/list-comments-for-review',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/comments',
    pathParams: ['owner', 'pull_number', 'repo', 'review_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}/commits`
  /// List commits on a pull request
  static const pullsListCommits = RestOperationContract(
    operationId: 'pulls/list-commits',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/commits',
    pathParams: ['owner', 'pull_number', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}/files`
  /// List pull requests files
  static const pullsListFiles = RestOperationContract(
    operationId: 'pulls/list-files',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/files',
    pathParams: ['owner', 'pull_number', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers`
  /// Get all requested reviewers for a pull request
  static const pullsListRequestedReviewers = RestOperationContract(
    operationId: 'pulls/list-requested-reviewers',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers',
    pathParams: ['owner', 'pull_number', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}/comments`
  /// List review comments on a pull request
  static const pullsListReviewComments = RestOperationContract(
    operationId: 'pulls/list-review-comments',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/comments',
    pathParams: ['owner', 'pull_number', 'repo'],
    queryParams: ['direction', 'page', 'per_page', 'since', 'sort'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/comments`
  /// List review comments in a repository
  static const pullsListReviewCommentsForRepo = RestOperationContract(
    operationId: 'pulls/list-review-comments-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/comments',
    pathParams: ['owner', 'repo'],
    queryParams: ['direction', 'page', 'per_page', 'since', 'sort'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/{pull_number}/reviews`
  /// List reviews for a pull request
  static const pullsListReviews = RestOperationContract(
    operationId: 'pulls/list-reviews',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews',
    pathParams: ['owner', 'pull_number', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `PUT /repos/{owner}/{repo}/pulls/{pull_number}/merge`
  /// Merge a pull request
  static const pullsMerge = RestOperationContract(
    operationId: 'pulls/merge',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/merge',
    pathParams: ['owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/pulls/{pull_number}/merge-async`
  /// Merge a pull request asynchronously
  static const pullsMergeAsync = RestOperationContract(
    operationId: 'pulls/merge-async',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/merge-async',
    pathParams: ['owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 202],
  );

  /// `DELETE /repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers`
  /// Remove requested reviewers from a pull request
  static const pullsRemoveRequestedReviewers = RestOperationContract(
    operationId: 'pulls/remove-requested-reviewers',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers',
    pathParams: ['owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers`
  /// Request reviewers for a pull request
  static const pullsRequestReviewers = RestOperationContract(
    operationId: 'pulls/request-reviewers',
    method: 'POST',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers',
    pathParams: ['owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/events`
  /// Submit a review for a pull request
  static const pullsSubmitReview = RestOperationContract(
    operationId: 'pulls/submit-review',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/events',
    pathParams: ['owner', 'pull_number', 'repo', 'review_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/pulls/{pull_number}`
  /// Update a pull request
  static const pullsUpdate = RestOperationContract(
    operationId: 'pulls/update',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}',
    pathParams: ['owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/pulls/{pull_number}/update-branch`
  /// Update a pull request branch
  static const pullsUpdateBranch = RestOperationContract(
    operationId: 'pulls/update-branch',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/update-branch',
    pathParams: ['owner', 'pull_number', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `PUT /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}`
  /// Update a review for a pull request
  static const pullsUpdateReview = RestOperationContract(
    operationId: 'pulls/update-review',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}',
    pathParams: ['owner', 'pull_number', 'repo', 'review_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/pulls/comments/{comment_id}`
  /// Update a review comment for a pull request
  static const pullsUpdateReviewComment = RestOperationContract(
    operationId: 'pulls/update-review-comment',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}',
    pathParams: ['comment_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /rate_limit`
  /// Get rate limit status for the authenticated user
  static const rateLimitGet = RestOperationContract(
    operationId: 'rate-limit/get',
    method: 'GET',
    path: '/rate_limit',
  );

  /// `POST /repos/{owner}/{repo}/comments/{comment_id}/reactions`
  /// Create reaction for a commit comment
  static const reactionsCreateForCommitComment = RestOperationContract(
    operationId: 'reactions/create-for-commit-comment',
    method: 'POST',
    path: '/repos/{owner}/{repo}/comments/{comment_id}/reactions',
    pathParams: ['comment_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `POST /repos/{owner}/{repo}/issues/{issue_number}/reactions`
  /// Create reaction for an issue
  static const reactionsCreateForIssue = RestOperationContract(
    operationId: 'reactions/create-for-issue',
    method: 'POST',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/reactions',
    pathParams: ['issue_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `POST /repos/{owner}/{repo}/issues/comments/{comment_id}/reactions`
  /// Create reaction for an issue comment
  static const reactionsCreateForIssueComment = RestOperationContract(
    operationId: 'reactions/create-for-issue-comment',
    method: 'POST',
    path: '/repos/{owner}/{repo}/issues/comments/{comment_id}/reactions',
    pathParams: ['comment_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `POST /repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions`
  /// Create reaction for a pull request review comment
  static const reactionsCreateForPullRequestReviewComment =
      RestOperationContract(
    operationId: 'reactions/create-for-pull-request-review-comment',
    method: 'POST',
    path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions',
    pathParams: ['comment_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `POST /repos/{owner}/{repo}/releases/{release_id}/reactions`
  /// Create reaction for a release
  static const reactionsCreateForRelease = RestOperationContract(
    operationId: 'reactions/create-for-release',
    method: 'POST',
    path: '/repos/{owner}/{repo}/releases/{release_id}/reactions',
    pathParams: ['owner', 'release_id', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `DELETE /repos/{owner}/{repo}/comments/{comment_id}/reactions/{reaction_id}`
  /// Delete a commit comment reaction
  static const reactionsDeleteForCommitComment = RestOperationContract(
    operationId: 'reactions/delete-for-commit-comment',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/comments/{comment_id}/reactions/{reaction_id}',
    pathParams: ['comment_id', 'owner', 'reaction_id', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/{issue_number}/reactions/{reaction_id}`
  /// Delete an issue reaction
  static const reactionsDeleteForIssue = RestOperationContract(
    operationId: 'reactions/delete-for-issue',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/reactions/{reaction_id}',
    pathParams: ['issue_number', 'owner', 'reaction_id', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/issues/comments/{comment_id}/reactions/{reaction_id}`
  /// Delete an issue comment reaction
  static const reactionsDeleteForIssueComment = RestOperationContract(
    operationId: 'reactions/delete-for-issue-comment',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/issues/comments/{comment_id}/reactions/{reaction_id}',
    pathParams: ['comment_id', 'owner', 'reaction_id', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions/{reaction_id}`
  /// Delete a pull request comment reaction
  static const reactionsDeleteForPullRequestComment = RestOperationContract(
    operationId: 'reactions/delete-for-pull-request-comment',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions/{reaction_id}',
    pathParams: ['comment_id', 'owner', 'reaction_id', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/releases/{release_id}/reactions/{reaction_id}`
  /// Delete a release reaction
  static const reactionsDeleteForRelease = RestOperationContract(
    operationId: 'reactions/delete-for-release',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/releases/{release_id}/reactions/{reaction_id}',
    pathParams: ['owner', 'reaction_id', 'release_id', 'repo'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/comments/{comment_id}/reactions`
  /// List reactions for a commit comment
  static const reactionsListForCommitComment = RestOperationContract(
    operationId: 'reactions/list-for-commit-comment',
    method: 'GET',
    path: '/repos/{owner}/{repo}/comments/{comment_id}/reactions',
    pathParams: ['comment_id', 'owner', 'repo'],
    queryParams: ['content', 'page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issues/{issue_number}/reactions`
  /// List reactions for an issue
  static const reactionsListForIssue = RestOperationContract(
    operationId: 'reactions/list-for-issue',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/{issue_number}/reactions',
    pathParams: ['issue_number', 'owner', 'repo'],
    queryParams: ['content', 'page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issues/comments/{comment_id}/reactions`
  /// List reactions for an issue comment
  static const reactionsListForIssueComment = RestOperationContract(
    operationId: 'reactions/list-for-issue-comment',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issues/comments/{comment_id}/reactions',
    pathParams: ['comment_id', 'owner', 'repo'],
    queryParams: ['content', 'page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions`
  /// List reactions for a pull request review comment
  static const reactionsListForPullRequestReviewComment = RestOperationContract(
    operationId: 'reactions/list-for-pull-request-review-comment',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions',
    pathParams: ['comment_id', 'owner', 'repo'],
    queryParams: ['content', 'page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/releases/{release_id}/reactions`
  /// List reactions for a release
  static const reactionsListForRelease = RestOperationContract(
    operationId: 'reactions/list-for-release',
    method: 'GET',
    path: '/repos/{owner}/{repo}/releases/{release_id}/reactions',
    pathParams: ['owner', 'release_id', 'repo'],
    queryParams: ['content', 'page', 'per_page'],
  );

  /// `PATCH /user/repository_invitations/{invitation_id}`
  /// Accept a repository invitation
  static const reposAcceptInvitationForAuthenticatedUser =
      RestOperationContract(
    operationId: 'repos/accept-invitation-for-authenticated-user',
    method: 'PATCH',
    path: '/user/repository_invitations/{invitation_id}',
    pathParams: ['invitation_id'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps`
  /// Add app access restrictions
  static const reposAddAppAccessRestrictions = RestOperationContract(
    operationId: 'repos/add-app-access-restrictions',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/collaborators/{username}`
  /// Add a repository collaborator
  static const reposAddCollaborator = RestOperationContract(
    operationId: 'repos/add-collaborator',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/collaborators/{username}',
    pathParams: ['owner', 'repo', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `POST /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts`
  /// Add status check contexts
  static const reposAddStatusCheckContexts = RestOperationContract(
    operationId: 'repos/add-status-check-contexts',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams`
  /// Add team access restrictions
  static const reposAddTeamAccessRestrictions = RestOperationContract(
    operationId: 'repos/add-team-access-restrictions',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users`
  /// Add user access restrictions
  static const reposAddUserAccessRestrictions = RestOperationContract(
    operationId: 'repos/add-user-access-restrictions',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/pages/deployments/{pages_deployment_id}/cancel`
  /// Cancel a GitHub Pages deployment
  static const reposCancelPagesDeployment = RestOperationContract(
    operationId: 'repos/cancel-pages-deployment',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/pages/deployments/{pages_deployment_id}/cancel',
    pathParams: ['owner', 'pages_deployment_id', 'repo'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/automated-security-fixes`
  /// Check if Dependabot security updates are enabled for a repository
  static const reposCheckAutomatedSecurityFixes = RestOperationContract(
    operationId: 'repos/check-automated-security-fixes',
    method: 'GET',
    path: '/repos/{owner}/{repo}/automated-security-fixes',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/collaborators/{username}`
  /// Check if a user is a repository collaborator
  static const reposCheckCollaborator = RestOperationContract(
    operationId: 'repos/check-collaborator',
    method: 'GET',
    path: '/repos/{owner}/{repo}/collaborators/{username}',
    pathParams: ['owner', 'repo', 'username'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/immutable-releases`
  /// Check if immutable releases are enabled for a repository
  static const reposCheckImmutableReleases = RestOperationContract(
    operationId: 'repos/check-immutable-releases',
    method: 'GET',
    path: '/repos/{owner}/{repo}/immutable-releases',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/private-vulnerability-reporting`
  /// Check if private vulnerability reporting is enabled for a repository
  static const reposCheckPrivateVulnerabilityReporting = RestOperationContract(
    operationId: 'repos/check-private-vulnerability-reporting',
    method: 'GET',
    path: '/repos/{owner}/{repo}/private-vulnerability-reporting',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/vulnerability-alerts`
  /// Check if vulnerability alerts are enabled for a repository
  static const reposCheckVulnerabilityAlerts = RestOperationContract(
    operationId: 'repos/check-vulnerability-alerts',
    method: 'GET',
    path: '/repos/{owner}/{repo}/vulnerability-alerts',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/codeowners/errors`
  /// List CODEOWNERS errors
  static const reposCodeownersErrors = RestOperationContract(
    operationId: 'repos/codeowners-errors',
    method: 'GET',
    path: '/repos/{owner}/{repo}/codeowners/errors',
    pathParams: ['owner', 'repo'],
    queryParams: ['ref'],
  );

  /// `GET /repos/{owner}/{repo}/compare/{basehead}`
  /// Compare two commits
  static const reposCompareCommits = RestOperationContract(
    operationId: 'repos/compare-commits',
    method: 'GET',
    path: '/repos/{owner}/{repo}/compare/{basehead}',
    pathParams: ['basehead', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `POST /repos/{owner}/{repo}/attestations`
  /// Create an attestation
  static const reposCreateAttestation = RestOperationContract(
    operationId: 'repos/create-attestation',
    method: 'POST',
    path: '/repos/{owner}/{repo}/attestations',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/autolinks`
  /// Create an autolink reference for a repository
  static const reposCreateAutolink = RestOperationContract(
    operationId: 'repos/create-autolink',
    method: 'POST',
    path: '/repos/{owner}/{repo}/autolinks',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/commits/{commit_sha}/comments`
  /// Create a commit comment
  static const reposCreateCommitComment = RestOperationContract(
    operationId: 'repos/create-commit-comment',
    method: 'POST',
    path: '/repos/{owner}/{repo}/commits/{commit_sha}/comments',
    pathParams: ['commit_sha', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/branches/{branch}/protection/required_signatures`
  /// Create commit signature protection
  static const reposCreateCommitSignatureProtection = RestOperationContract(
    operationId: 'repos/create-commit-signature-protection',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_signatures',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `POST /repos/{owner}/{repo}/statuses/{sha}`
  /// Create a commit status
  static const reposCreateCommitStatus = RestOperationContract(
    operationId: 'repos/create-commit-status',
    method: 'POST',
    path: '/repos/{owner}/{repo}/statuses/{sha}',
    pathParams: ['owner', 'repo', 'sha'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/keys`
  /// Create a deploy key
  static const reposCreateDeployKey = RestOperationContract(
    operationId: 'repos/create-deploy-key',
    method: 'POST',
    path: '/repos/{owner}/{repo}/keys',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/deployments`
  /// Create a deployment
  static const reposCreateDeployment = RestOperationContract(
    operationId: 'repos/create-deployment',
    method: 'POST',
    path: '/repos/{owner}/{repo}/deployments',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 202],
  );

  /// `POST /repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies`
  /// Create a deployment branch policy
  static const reposCreateDeploymentBranchPolicy = RestOperationContract(
    operationId: 'repos/create-deployment-branch-policy',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies',
    pathParams: ['environment_name', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules`
  /// Create a custom deployment protection rule on an environment
  static const reposCreateDeploymentProtectionRule = RestOperationContract(
    operationId: 'repos/create-deployment-protection-rule',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules',
    pathParams: ['environment_name', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/deployments/{deployment_id}/statuses`
  /// Create a deployment status
  static const reposCreateDeploymentStatus = RestOperationContract(
    operationId: 'repos/create-deployment-status',
    method: 'POST',
    path: '/repos/{owner}/{repo}/deployments/{deployment_id}/statuses',
    pathParams: ['deployment_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/dispatches`
  /// Create a repository dispatch event
  static const reposCreateDispatchEvent = RestOperationContract(
    operationId: 'repos/create-dispatch-event',
    method: 'POST',
    path: '/repos/{owner}/{repo}/dispatches',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /user/repos`
  /// Create a repository for the authenticated user
  static const reposCreateForAuthenticatedUser = RestOperationContract(
    operationId: 'repos/create-for-authenticated-user',
    method: 'POST',
    path: '/user/repos',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/forks`
  /// Create a fork
  static const reposCreateFork = RestOperationContract(
    operationId: 'repos/create-fork',
    method: 'POST',
    path: '/repos/{owner}/{repo}/forks',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `POST /orgs/{org}/repos`
  /// Create an organization repository
  static const reposCreateInOrg = RestOperationContract(
    operationId: 'repos/create-in-org',
    method: 'POST',
    path: '/orgs/{org}/repos',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `PUT /repos/{owner}/{repo}/environments/{environment_name}`
  /// Create or update an environment
  static const reposCreateOrUpdateEnvironment = RestOperationContract(
    operationId: 'repos/create-or-update-environment',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/environments/{environment_name}',
    pathParams: ['environment_name', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/contents/{path}`
  /// Create or update file contents
  static const reposCreateOrUpdateFileContents = RestOperationContract(
    operationId: 'repos/create-or-update-file-contents',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/contents/{path}',
    pathParams: ['owner', 'path', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `POST /orgs/{org}/rulesets`
  /// Create an organization repository ruleset
  static const reposCreateOrgRuleset = RestOperationContract(
    operationId: 'repos/create-org-ruleset',
    method: 'POST',
    path: '/orgs/{org}/rulesets',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/pages/deployments`
  /// Create a GitHub Pages deployment
  static const reposCreatePagesDeployment = RestOperationContract(
    operationId: 'repos/create-pages-deployment',
    method: 'POST',
    path: '/repos/{owner}/{repo}/pages/deployments',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/pages`
  /// Create a GitHub Pages site
  static const reposCreatePagesSite = RestOperationContract(
    operationId: 'repos/create-pages-site',
    method: 'POST',
    path: '/repos/{owner}/{repo}/pages',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/releases`
  /// Create a release
  static const reposCreateRelease = RestOperationContract(
    operationId: 'repos/create-release',
    method: 'POST',
    path: '/repos/{owner}/{repo}/releases',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/rulesets`
  /// Create a repository ruleset
  static const reposCreateRepoRuleset = RestOperationContract(
    operationId: 'repos/create-repo-ruleset',
    method: 'POST',
    path: '/repos/{owner}/{repo}/rulesets',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{template_owner}/{template_repo}/generate`
  /// Create a repository using a template
  static const reposCreateUsingTemplate = RestOperationContract(
    operationId: 'repos/create-using-template',
    method: 'POST',
    path: '/repos/{template_owner}/{template_repo}/generate',
    pathParams: ['template_owner', 'template_repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/hooks`
  /// Create a repository webhook
  static const reposCreateWebhook = RestOperationContract(
    operationId: 'repos/create-webhook',
    method: 'POST',
    path: '/repos/{owner}/{repo}/hooks',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `PATCH /repos/{owner}/{repo}/properties/values`
  /// Create or update custom property values for a repository
  static const reposCustomPropertiesForReposCreateOrUpdateRepositoryValues =
      RestOperationContract(
    operationId:
        'repos/custom-properties-for-repos-create-or-update-repository-values',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/properties/values',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/properties/values`
  /// Get all custom property values for a repository
  static const reposCustomPropertiesForReposGetRepositoryValues =
      RestOperationContract(
    operationId: 'repos/custom-properties-for-repos-get-repository-values',
    method: 'GET',
    path: '/repos/{owner}/{repo}/properties/values',
    pathParams: ['owner', 'repo'],
  );

  /// `DELETE /user/repository_invitations/{invitation_id}`
  /// Decline a repository invitation
  static const reposDeclineInvitationForAuthenticatedUser =
      RestOperationContract(
    operationId: 'repos/decline-invitation-for-authenticated-user',
    method: 'DELETE',
    path: '/user/repository_invitations/{invitation_id}',
    pathParams: ['invitation_id'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}`
  /// Delete a repository
  static const reposDelete = RestOperationContract(
    operationId: 'repos/delete',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/restrictions`
  /// Delete access restrictions
  static const reposDeleteAccessRestrictions = RestOperationContract(
    operationId: 'repos/delete-access-restrictions',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions',
    pathParams: ['branch', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins`
  /// Delete admin branch protection
  static const reposDeleteAdminBranchProtection = RestOperationContract(
    operationId: 'repos/delete-admin-branch-protection',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins',
    pathParams: ['branch', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/environments/{environment_name}`
  /// Delete an environment
  static const reposDeleteAnEnvironment = RestOperationContract(
    operationId: 'repos/delete-an-environment',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/environments/{environment_name}',
    pathParams: ['environment_name', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/autolinks/{autolink_id}`
  /// Delete an autolink reference from a repository
  static const reposDeleteAutolink = RestOperationContract(
    operationId: 'repos/delete-autolink',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/autolinks/{autolink_id}',
    pathParams: ['autolink_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection`
  /// Delete branch protection
  static const reposDeleteBranchProtection = RestOperationContract(
    operationId: 'repos/delete-branch-protection',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/branches/{branch}/protection',
    pathParams: ['branch', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/comments/{comment_id}`
  /// Delete a commit comment
  static const reposDeleteCommitComment = RestOperationContract(
    operationId: 'repos/delete-commit-comment',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/comments/{comment_id}',
    pathParams: ['comment_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/required_signatures`
  /// Delete commit signature protection
  static const reposDeleteCommitSignatureProtection = RestOperationContract(
    operationId: 'repos/delete-commit-signature-protection',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_signatures',
    pathParams: ['branch', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/keys/{key_id}`
  /// Delete a deploy key
  static const reposDeleteDeployKey = RestOperationContract(
    operationId: 'repos/delete-deploy-key',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/keys/{key_id}',
    pathParams: ['key_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/deployments/{deployment_id}`
  /// Delete a deployment
  static const reposDeleteDeployment = RestOperationContract(
    operationId: 'repos/delete-deployment',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/deployments/{deployment_id}',
    pathParams: ['deployment_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}`
  /// Delete a deployment branch policy
  static const reposDeleteDeploymentBranchPolicy = RestOperationContract(
    operationId: 'repos/delete-deployment-branch-policy',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}',
    pathParams: ['branch_policy_id', 'environment_name', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/contents/{path}`
  /// Delete a file
  static const reposDeleteFile = RestOperationContract(
    operationId: 'repos/delete-file',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/contents/{path}',
    pathParams: ['owner', 'path', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /repos/{owner}/{repo}/invitations/{invitation_id}`
  /// Delete a repository invitation
  static const reposDeleteInvitation = RestOperationContract(
    operationId: 'repos/delete-invitation',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/invitations/{invitation_id}',
    pathParams: ['invitation_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/rulesets/{ruleset_id}`
  /// Delete an organization repository ruleset
  static const reposDeleteOrgRuleset = RestOperationContract(
    operationId: 'repos/delete-org-ruleset',
    method: 'DELETE',
    path: '/orgs/{org}/rulesets/{ruleset_id}',
    pathParams: ['org', 'ruleset_id'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/pages`
  /// Delete a GitHub Pages site
  static const reposDeletePagesSite = RestOperationContract(
    operationId: 'repos/delete-pages-site',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/pages',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews`
  /// Delete pull request review protection
  static const reposDeletePullRequestReviewProtection = RestOperationContract(
    operationId: 'repos/delete-pull-request-review-protection',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews',
    pathParams: ['branch', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/releases/{release_id}`
  /// Delete a release
  static const reposDeleteRelease = RestOperationContract(
    operationId: 'repos/delete-release',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/releases/{release_id}',
    pathParams: ['owner', 'release_id', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/releases/assets/{asset_id}`
  /// Delete a release asset
  static const reposDeleteReleaseAsset = RestOperationContract(
    operationId: 'repos/delete-release-asset',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/releases/assets/{asset_id}',
    pathParams: ['asset_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/rulesets/{ruleset_id}`
  /// Delete a repository ruleset
  static const reposDeleteRepoRuleset = RestOperationContract(
    operationId: 'repos/delete-repo-ruleset',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}',
    pathParams: ['owner', 'repo', 'ruleset_id'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/hooks/{hook_id}`
  /// Delete a repository webhook
  static const reposDeleteWebhook = RestOperationContract(
    operationId: 'repos/delete-webhook',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/hooks/{hook_id}',
    pathParams: ['hook_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/automated-security-fixes`
  /// Disable Dependabot security updates
  static const reposDisableAutomatedSecurityFixes = RestOperationContract(
    operationId: 'repos/disable-automated-security-fixes',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/automated-security-fixes',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules/{protection_rule_id}`
  /// Disable a custom protection rule for an environment
  static const reposDisableDeploymentProtectionRule = RestOperationContract(
    operationId: 'repos/disable-deployment-protection-rule',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules/{protection_rule_id}',
    pathParams: ['environment_name', 'owner', 'protection_rule_id', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/immutable-releases`
  /// Disable immutable releases
  static const reposDisableImmutableReleases = RestOperationContract(
    operationId: 'repos/disable-immutable-releases',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/immutable-releases',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/private-vulnerability-reporting`
  /// Disable private vulnerability reporting for a repository
  static const reposDisablePrivateVulnerabilityReporting =
      RestOperationContract(
    operationId: 'repos/disable-private-vulnerability-reporting',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/private-vulnerability-reporting',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/vulnerability-alerts`
  /// Disable vulnerability alerts
  static const reposDisableVulnerabilityAlerts = RestOperationContract(
    operationId: 'repos/disable-vulnerability-alerts',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/vulnerability-alerts',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `GET /repos/{owner}/{repo}/tarball/{ref}`
  /// Download a repository archive (tar)
  static const reposDownloadTarballArchive = RestOperationContract(
    operationId: 'repos/download-tarball-archive',
    method: 'GET',
    path: '/repos/{owner}/{repo}/tarball/{ref}',
    pathParams: ['owner', 'ref', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/zipball/{ref}`
  /// Download a repository archive (zip)
  static const reposDownloadZipballArchive = RestOperationContract(
    operationId: 'repos/download-zipball-archive',
    method: 'GET',
    path: '/repos/{owner}/{repo}/zipball/{ref}',
    pathParams: ['owner', 'ref', 'repo'],
  );

  /// `PUT /repos/{owner}/{repo}/automated-security-fixes`
  /// Enable Dependabot security updates
  static const reposEnableAutomatedSecurityFixes = RestOperationContract(
    operationId: 'repos/enable-automated-security-fixes',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/automated-security-fixes',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/immutable-releases`
  /// Enable immutable releases
  static const reposEnableImmutableReleases = RestOperationContract(
    operationId: 'repos/enable-immutable-releases',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/immutable-releases',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/private-vulnerability-reporting`
  /// Enable private vulnerability reporting for a repository
  static const reposEnablePrivateVulnerabilityReporting = RestOperationContract(
    operationId: 'repos/enable-private-vulnerability-reporting',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/private-vulnerability-reporting',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `PUT /repos/{owner}/{repo}/vulnerability-alerts`
  /// Enable vulnerability alerts
  static const reposEnableVulnerabilityAlerts = RestOperationContract(
    operationId: 'repos/enable-vulnerability-alerts',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/vulnerability-alerts',
    pathParams: ['owner', 'repo'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/releases/generate-notes`
  /// Generate release notes content for a release
  static const reposGenerateReleaseNotes = RestOperationContract(
    operationId: 'repos/generate-release-notes',
    method: 'POST',
    path: '/repos/{owner}/{repo}/releases/generate-notes',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /repos/{owner}/{repo}`
  /// Get a repository
  static const reposGet = RestOperationContract(
    operationId: 'repos/get',
    method: 'GET',
    path: '/repos/{owner}/{repo}',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection/restrictions`
  /// Get access restrictions
  static const reposGetAccessRestrictions = RestOperationContract(
    operationId: 'repos/get-access-restrictions',
    method: 'GET',
    path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins`
  /// Get admin branch protection
  static const reposGetAdminBranchProtection = RestOperationContract(
    operationId: 'repos/get-admin-branch-protection',
    method: 'GET',
    path: '/repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules`
  /// Get all deployment protection rules for an environment
  static const reposGetAllDeploymentProtectionRules = RestOperationContract(
    operationId: 'repos/get-all-deployment-protection-rules',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules',
    pathParams: ['environment_name', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/environments`
  /// List environments
  static const reposGetAllEnvironments = RestOperationContract(
    operationId: 'repos/get-all-environments',
    method: 'GET',
    path: '/repos/{owner}/{repo}/environments',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts`
  /// Get all status check contexts
  static const reposGetAllStatusCheckContexts = RestOperationContract(
    operationId: 'repos/get-all-status-check-contexts',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/topics`
  /// Get all repository topics
  static const reposGetAllTopics = RestOperationContract(
    operationId: 'repos/get-all-topics',
    method: 'GET',
    path: '/repos/{owner}/{repo}/topics',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps`
  /// Get apps with access to the protected branch
  static const reposGetAppsWithAccessToProtectedBranch = RestOperationContract(
    operationId: 'repos/get-apps-with-access-to-protected-branch',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/autolinks/{autolink_id}`
  /// Get an autolink reference of a repository
  static const reposGetAutolink = RestOperationContract(
    operationId: 'repos/get-autolink',
    method: 'GET',
    path: '/repos/{owner}/{repo}/autolinks/{autolink_id}',
    pathParams: ['autolink_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}`
  /// Get a branch
  static const reposGetBranch = RestOperationContract(
    operationId: 'repos/get-branch',
    method: 'GET',
    path: '/repos/{owner}/{repo}/branches/{branch}',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection`
  /// Get branch protection
  static const reposGetBranchProtection = RestOperationContract(
    operationId: 'repos/get-branch-protection',
    method: 'GET',
    path: '/repos/{owner}/{repo}/branches/{branch}/protection',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/rules/branches/{branch}`
  /// Get rules for a branch
  static const reposGetBranchRules = RestOperationContract(
    operationId: 'repos/get-branch-rules',
    method: 'GET',
    path: '/repos/{owner}/{repo}/rules/branches/{branch}',
    pathParams: ['branch', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/traffic/clones`
  /// Get repository clones
  static const reposGetClones = RestOperationContract(
    operationId: 'repos/get-clones',
    method: 'GET',
    path: '/repos/{owner}/{repo}/traffic/clones',
    pathParams: ['owner', 'repo'],
    queryParams: ['per'],
  );

  /// `GET /repos/{owner}/{repo}/stats/code_frequency`
  /// Get the weekly commit activity
  static const reposGetCodeFrequencyStats = RestOperationContract(
    operationId: 'repos/get-code-frequency-stats',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stats/code_frequency',
    pathParams: ['owner', 'repo'],
    successStatuses: [200, 202, 204],
  );

  /// `GET /repos/{owner}/{repo}/collaborators/{username}/permission`
  /// Get repository permissions for a user
  static const reposGetCollaboratorPermissionLevel = RestOperationContract(
    operationId: 'repos/get-collaborator-permission-level',
    method: 'GET',
    path: '/repos/{owner}/{repo}/collaborators/{username}/permission',
    pathParams: ['owner', 'repo', 'username'],
  );

  /// `GET /repos/{owner}/{repo}/commits/{ref}/status`
  /// Get the combined status for a specific reference
  static const reposGetCombinedStatusForRef = RestOperationContract(
    operationId: 'repos/get-combined-status-for-ref',
    method: 'GET',
    path: '/repos/{owner}/{repo}/commits/{ref}/status',
    pathParams: ['owner', 'ref', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/commits/{ref}`
  /// Get a commit
  static const reposGetCommit = RestOperationContract(
    operationId: 'repos/get-commit',
    method: 'GET',
    path: '/repos/{owner}/{repo}/commits/{ref}',
    pathParams: ['owner', 'ref', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/stats/commit_activity`
  /// Get the last year of commit activity
  static const reposGetCommitActivityStats = RestOperationContract(
    operationId: 'repos/get-commit-activity-stats',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stats/commit_activity',
    pathParams: ['owner', 'repo'],
    successStatuses: [200, 202, 204],
  );

  /// `GET /repos/{owner}/{repo}/comments/{comment_id}`
  /// Get a commit comment
  static const reposGetCommitComment = RestOperationContract(
    operationId: 'repos/get-commit-comment',
    method: 'GET',
    path: '/repos/{owner}/{repo}/comments/{comment_id}',
    pathParams: ['comment_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection/required_signatures`
  /// Get commit signature protection
  static const reposGetCommitSignatureProtection = RestOperationContract(
    operationId: 'repos/get-commit-signature-protection',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_signatures',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/community/profile`
  /// Get community profile metrics
  static const reposGetCommunityProfileMetrics = RestOperationContract(
    operationId: 'repos/get-community-profile-metrics',
    method: 'GET',
    path: '/repos/{owner}/{repo}/community/profile',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/contents/{path}`
  /// Get repository content
  static const reposGetContent = RestOperationContract(
    operationId: 'repos/get-content',
    method: 'GET',
    path: '/repos/{owner}/{repo}/contents/{path}',
    pathParams: ['owner', 'path', 'repo'],
    queryParams: ['ref'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /repos/{owner}/{repo}/stats/contributors`
  /// Get all contributor commit activity
  static const reposGetContributorsStats = RestOperationContract(
    operationId: 'repos/get-contributors-stats',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stats/contributors',
    pathParams: ['owner', 'repo'],
    successStatuses: [200, 202, 204],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules/{protection_rule_id}`
  /// Get a custom deployment protection rule
  static const reposGetCustomDeploymentProtectionRule = RestOperationContract(
    operationId: 'repos/get-custom-deployment-protection-rule',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules/{protection_rule_id}',
    pathParams: ['environment_name', 'owner', 'protection_rule_id', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/keys/{key_id}`
  /// Get a deploy key
  static const reposGetDeployKey = RestOperationContract(
    operationId: 'repos/get-deploy-key',
    method: 'GET',
    path: '/repos/{owner}/{repo}/keys/{key_id}',
    pathParams: ['key_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/deployments/{deployment_id}`
  /// Get a deployment
  static const reposGetDeployment = RestOperationContract(
    operationId: 'repos/get-deployment',
    method: 'GET',
    path: '/repos/{owner}/{repo}/deployments/{deployment_id}',
    pathParams: ['deployment_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}`
  /// Get a deployment branch policy
  static const reposGetDeploymentBranchPolicy = RestOperationContract(
    operationId: 'repos/get-deployment-branch-policy',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}',
    pathParams: ['branch_policy_id', 'environment_name', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/deployments/{deployment_id}/statuses/{status_id}`
  /// Get a deployment status
  static const reposGetDeploymentStatus = RestOperationContract(
    operationId: 'repos/get-deployment-status',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/deployments/{deployment_id}/statuses/{status_id}',
    pathParams: ['deployment_id', 'owner', 'repo', 'status_id'],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}`
  /// Get an environment
  static const reposGetEnvironment = RestOperationContract(
    operationId: 'repos/get-environment',
    method: 'GET',
    path: '/repos/{owner}/{repo}/environments/{environment_name}',
    pathParams: ['environment_name', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/hash-algorithm`
  /// Get the hash algorithm for a repository
  static const reposGetHashAlgorithm = RestOperationContract(
    operationId: 'repos/get-hash-algorithm',
    method: 'GET',
    path: '/repos/{owner}/{repo}/hash-algorithm',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/pages/builds/latest`
  /// Get latest Pages build
  static const reposGetLatestPagesBuild = RestOperationContract(
    operationId: 'repos/get-latest-pages-build',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pages/builds/latest',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/releases/latest`
  /// Get the latest release
  static const reposGetLatestRelease = RestOperationContract(
    operationId: 'repos/get-latest-release',
    method: 'GET',
    path: '/repos/{owner}/{repo}/releases/latest',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/rulesets/rule-suites/{rule_suite_id}`
  /// Get an organization rule suite
  static const reposGetOrgRuleSuite = RestOperationContract(
    operationId: 'repos/get-org-rule-suite',
    method: 'GET',
    path: '/orgs/{org}/rulesets/rule-suites/{rule_suite_id}',
    pathParams: ['org', 'rule_suite_id'],
  );

  /// `GET /orgs/{org}/rulesets/rule-suites`
  /// List organization rule suites
  static const reposGetOrgRuleSuites = RestOperationContract(
    operationId: 'repos/get-org-rule-suites',
    method: 'GET',
    path: '/orgs/{org}/rulesets/rule-suites',
    pathParams: ['org'],
    queryParams: [
      'actor_name',
      'evaluate_status',
      'page',
      'per_page',
      'ref',
      'repository_name',
      'rule_suite_result',
      'time_period'
    ],
  );

  /// `GET /orgs/{org}/rulesets/{ruleset_id}`
  /// Get an organization repository ruleset
  static const reposGetOrgRuleset = RestOperationContract(
    operationId: 'repos/get-org-ruleset',
    method: 'GET',
    path: '/orgs/{org}/rulesets/{ruleset_id}',
    pathParams: ['org', 'ruleset_id'],
  );

  /// `GET /orgs/{org}/rulesets`
  /// Get all organization repository rulesets
  static const reposGetOrgRulesets = RestOperationContract(
    operationId: 'repos/get-org-rulesets',
    method: 'GET',
    path: '/orgs/{org}/rulesets',
    pathParams: ['org'],
    queryParams: ['page', 'per_page', 'targets'],
  );

  /// `GET /repos/{owner}/{repo}/pages`
  /// Get a GitHub Pages site
  static const reposGetPages = RestOperationContract(
    operationId: 'repos/get-pages',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pages',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/pages/builds/{build_id}`
  /// Get GitHub Pages build
  static const reposGetPagesBuild = RestOperationContract(
    operationId: 'repos/get-pages-build',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pages/builds/{build_id}',
    pathParams: ['build_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/pages/deployments/{pages_deployment_id}`
  /// Get the status of a GitHub Pages deployment
  static const reposGetPagesDeployment = RestOperationContract(
    operationId: 'repos/get-pages-deployment',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pages/deployments/{pages_deployment_id}',
    pathParams: ['owner', 'pages_deployment_id', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/pages/health`
  /// Get a DNS health check for GitHub Pages
  static const reposGetPagesHealthCheck = RestOperationContract(
    operationId: 'repos/get-pages-health-check',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pages/health',
    pathParams: ['owner', 'repo'],
    successStatuses: [200, 202],
  );

  /// `GET /repos/{owner}/{repo}/stats/participation`
  /// Get the weekly commit count
  static const reposGetParticipationStats = RestOperationContract(
    operationId: 'repos/get-participation-stats',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stats/participation',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews`
  /// Get pull request review protection
  static const reposGetPullRequestReviewProtection = RestOperationContract(
    operationId: 'repos/get-pull-request-review-protection',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/stats/punch_card`
  /// Get the hourly commit count for each day
  static const reposGetPunchCardStats = RestOperationContract(
    operationId: 'repos/get-punch-card-stats',
    method: 'GET',
    path: '/repos/{owner}/{repo}/stats/punch_card',
    pathParams: ['owner', 'repo'],
    successStatuses: [200, 204],
  );

  /// `GET /repos/{owner}/{repo}/readme`
  /// Get a repository README
  static const reposGetReadme = RestOperationContract(
    operationId: 'repos/get-readme',
    method: 'GET',
    path: '/repos/{owner}/{repo}/readme',
    pathParams: ['owner', 'repo'],
    queryParams: ['ref'],
  );

  /// `GET /repos/{owner}/{repo}/readme/{dir}`
  /// Get a repository README for a directory
  static const reposGetReadmeInDirectory = RestOperationContract(
    operationId: 'repos/get-readme-in-directory',
    method: 'GET',
    path: '/repos/{owner}/{repo}/readme/{dir}',
    pathParams: ['dir', 'owner', 'repo'],
    queryParams: ['ref'],
  );

  /// `GET /repos/{owner}/{repo}/releases/{release_id}`
  /// Get a release
  static const reposGetRelease = RestOperationContract(
    operationId: 'repos/get-release',
    method: 'GET',
    path: '/repos/{owner}/{repo}/releases/{release_id}',
    pathParams: ['owner', 'release_id', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/releases/assets/{asset_id}`
  /// Get a release asset
  static const reposGetReleaseAsset = RestOperationContract(
    operationId: 'repos/get-release-asset',
    method: 'GET',
    path: '/repos/{owner}/{repo}/releases/assets/{asset_id}',
    pathParams: ['asset_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/releases/tags/{tag}`
  /// Get a release by tag name
  static const reposGetReleaseByTag = RestOperationContract(
    operationId: 'repos/get-release-by-tag',
    method: 'GET',
    path: '/repos/{owner}/{repo}/releases/tags/{tag}',
    pathParams: ['owner', 'repo', 'tag'],
  );

  /// `GET /repos/{owner}/{repo}/rulesets/rule-suites/{rule_suite_id}`
  /// Get a repository rule suite
  static const reposGetRepoRuleSuite = RestOperationContract(
    operationId: 'repos/get-repo-rule-suite',
    method: 'GET',
    path: '/repos/{owner}/{repo}/rulesets/rule-suites/{rule_suite_id}',
    pathParams: ['owner', 'repo', 'rule_suite_id'],
  );

  /// `GET /repos/{owner}/{repo}/rulesets/rule-suites`
  /// List repository rule suites
  static const reposGetRepoRuleSuites = RestOperationContract(
    operationId: 'repos/get-repo-rule-suites',
    method: 'GET',
    path: '/repos/{owner}/{repo}/rulesets/rule-suites',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'actor_name',
      'evaluate_status',
      'page',
      'per_page',
      'ref',
      'rule_suite_result',
      'time_period'
    ],
  );

  /// `GET /repos/{owner}/{repo}/rulesets/{ruleset_id}`
  /// Get a repository ruleset
  static const reposGetRepoRuleset = RestOperationContract(
    operationId: 'repos/get-repo-ruleset',
    method: 'GET',
    path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}',
    pathParams: ['owner', 'repo', 'ruleset_id'],
    queryParams: ['includes_parents'],
  );

  /// `GET /repos/{owner}/{repo}/rulesets/{ruleset_id}/history`
  /// Get repository ruleset history
  static const reposGetRepoRulesetHistory = RestOperationContract(
    operationId: 'repos/get-repo-ruleset-history',
    method: 'GET',
    path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}/history',
    pathParams: ['owner', 'repo', 'ruleset_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/rulesets/{ruleset_id}/history/{version_id}`
  /// Get repository ruleset version
  static const reposGetRepoRulesetVersion = RestOperationContract(
    operationId: 'repos/get-repo-ruleset-version',
    method: 'GET',
    path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}/history/{version_id}',
    pathParams: ['owner', 'repo', 'ruleset_id', 'version_id'],
  );

  /// `GET /repos/{owner}/{repo}/rulesets`
  /// Get all repository rulesets
  static const reposGetRepoRulesets = RestOperationContract(
    operationId: 'repos/get-repo-rulesets',
    method: 'GET',
    path: '/repos/{owner}/{repo}/rulesets',
    pathParams: ['owner', 'repo'],
    queryParams: ['includes_parents', 'page', 'per_page', 'targets'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks`
  /// Get status checks protection
  static const reposGetStatusChecksProtection = RestOperationContract(
    operationId: 'repos/get-status-checks-protection',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams`
  /// Get teams with access to the protected branch
  static const reposGetTeamsWithAccessToProtectedBranch = RestOperationContract(
    operationId: 'repos/get-teams-with-access-to-protected-branch',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/traffic/popular/paths`
  /// Get top referral paths
  static const reposGetTopPaths = RestOperationContract(
    operationId: 'repos/get-top-paths',
    method: 'GET',
    path: '/repos/{owner}/{repo}/traffic/popular/paths',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/traffic/popular/referrers`
  /// Get top referral sources
  static const reposGetTopReferrers = RestOperationContract(
    operationId: 'repos/get-top-referrers',
    method: 'GET',
    path: '/repos/{owner}/{repo}/traffic/popular/referrers',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users`
  /// Get users with access to the protected branch
  static const reposGetUsersWithAccessToProtectedBranch = RestOperationContract(
    operationId: 'repos/get-users-with-access-to-protected-branch',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/traffic/views`
  /// Get page views
  static const reposGetViews = RestOperationContract(
    operationId: 'repos/get-views',
    method: 'GET',
    path: '/repos/{owner}/{repo}/traffic/views',
    pathParams: ['owner', 'repo'],
    queryParams: ['per'],
  );

  /// `GET /repos/{owner}/{repo}/hooks/{hook_id}`
  /// Get a repository webhook
  static const reposGetWebhook = RestOperationContract(
    operationId: 'repos/get-webhook',
    method: 'GET',
    path: '/repos/{owner}/{repo}/hooks/{hook_id}',
    pathParams: ['hook_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/hooks/{hook_id}/config`
  /// Get a webhook configuration for a repository
  static const reposGetWebhookConfigForRepo = RestOperationContract(
    operationId: 'repos/get-webhook-config-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/hooks/{hook_id}/config',
    pathParams: ['hook_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}`
  /// Get a delivery for a repository webhook
  static const reposGetWebhookDelivery = RestOperationContract(
    operationId: 'repos/get-webhook-delivery',
    method: 'GET',
    path: '/repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}',
    pathParams: ['delivery_id', 'hook_id', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/activity`
  /// List repository activities
  static const reposListActivities = RestOperationContract(
    operationId: 'repos/list-activities',
    method: 'GET',
    path: '/repos/{owner}/{repo}/activity',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'activity_type',
      'actor',
      'after',
      'before',
      'direction',
      'per_page',
      'ref',
      'time_period'
    ],
  );

  /// `GET /repos/{owner}/{repo}/attestations/{subject_digest}`
  /// List attestations
  static const reposListAttestations = RestOperationContract(
    operationId: 'repos/list-attestations',
    method: 'GET',
    path: '/repos/{owner}/{repo}/attestations/{subject_digest}',
    pathParams: ['owner', 'repo', 'subject_digest'],
    queryParams: ['after', 'before', 'per_page', 'predicate_type'],
  );

  /// `GET /repos/{owner}/{repo}/autolinks`
  /// Get all autolinks of a repository
  static const reposListAutolinks = RestOperationContract(
    operationId: 'repos/list-autolinks',
    method: 'GET',
    path: '/repos/{owner}/{repo}/autolinks',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/branches`
  /// List branches
  static const reposListBranches = RestOperationContract(
    operationId: 'repos/list-branches',
    method: 'GET',
    path: '/repos/{owner}/{repo}/branches',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page', 'protected'],
  );

  /// `GET /repos/{owner}/{repo}/commits/{commit_sha}/branches-where-head`
  /// List branches for HEAD commit
  static const reposListBranchesForHeadCommit = RestOperationContract(
    operationId: 'repos/list-branches-for-head-commit',
    method: 'GET',
    path: '/repos/{owner}/{repo}/commits/{commit_sha}/branches-where-head',
    pathParams: ['commit_sha', 'owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/collaborators`
  /// List repository collaborators
  static const reposListCollaborators = RestOperationContract(
    operationId: 'repos/list-collaborators',
    method: 'GET',
    path: '/repos/{owner}/{repo}/collaborators',
    pathParams: ['owner', 'repo'],
    queryParams: ['affiliation', 'page', 'per_page', 'permission'],
  );

  /// `GET /repos/{owner}/{repo}/commits/{commit_sha}/comments`
  /// List commit comments
  static const reposListCommentsForCommit = RestOperationContract(
    operationId: 'repos/list-comments-for-commit',
    method: 'GET',
    path: '/repos/{owner}/{repo}/commits/{commit_sha}/comments',
    pathParams: ['commit_sha', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/comments`
  /// List commit comments for a repository
  static const reposListCommitCommentsForRepo = RestOperationContract(
    operationId: 'repos/list-commit-comments-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/comments',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/commits/{ref}/statuses`
  /// List commit statuses for a reference
  static const reposListCommitStatusesForRef = RestOperationContract(
    operationId: 'repos/list-commit-statuses-for-ref',
    method: 'GET',
    path: '/repos/{owner}/{repo}/commits/{ref}/statuses',
    pathParams: ['owner', 'ref', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/commits`
  /// List commits
  static const reposListCommits = RestOperationContract(
    operationId: 'repos/list-commits',
    method: 'GET',
    path: '/repos/{owner}/{repo}/commits',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'author',
      'committer',
      'page',
      'path',
      'per_page',
      'sha',
      'since',
      'until'
    ],
  );

  /// `GET /repos/{owner}/{repo}/contributors`
  /// List repository contributors
  static const reposListContributors = RestOperationContract(
    operationId: 'repos/list-contributors',
    method: 'GET',
    path: '/repos/{owner}/{repo}/contributors',
    pathParams: ['owner', 'repo'],
    queryParams: ['anon', 'page', 'per_page'],
    successStatuses: [200, 204],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules/apps`
  /// List custom deployment rule integrations available for an environment
  static const reposListCustomDeploymentRuleIntegrations =
      RestOperationContract(
    operationId: 'repos/list-custom-deployment-rule-integrations',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules/apps',
    pathParams: ['environment_name', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/keys`
  /// List deploy keys
  static const reposListDeployKeys = RestOperationContract(
    operationId: 'repos/list-deploy-keys',
    method: 'GET',
    path: '/repos/{owner}/{repo}/keys',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies`
  /// List deployment branch policies
  static const reposListDeploymentBranchPolicies = RestOperationContract(
    operationId: 'repos/list-deployment-branch-policies',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies',
    pathParams: ['environment_name', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/deployments/{deployment_id}/statuses`
  /// List deployment statuses
  static const reposListDeploymentStatuses = RestOperationContract(
    operationId: 'repos/list-deployment-statuses',
    method: 'GET',
    path: '/repos/{owner}/{repo}/deployments/{deployment_id}/statuses',
    pathParams: ['deployment_id', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/deployments`
  /// List deployments
  static const reposListDeployments = RestOperationContract(
    operationId: 'repos/list-deployments',
    method: 'GET',
    path: '/repos/{owner}/{repo}/deployments',
    pathParams: ['owner', 'repo'],
    queryParams: ['environment', 'page', 'per_page', 'ref', 'sha', 'task'],
  );

  /// `GET /user/repos`
  /// List repositories for the authenticated user
  static const reposListForAuthenticatedUser = RestOperationContract(
    operationId: 'repos/list-for-authenticated-user',
    method: 'GET',
    path: '/user/repos',
    queryParams: [
      'affiliation',
      'before',
      'direction',
      'page',
      'per_page',
      'since',
      'sort',
      'type',
      'visibility'
    ],
  );

  /// `GET /orgs/{org}/repos`
  /// List organization repositories
  static const reposListForOrg = RestOperationContract(
    operationId: 'repos/list-for-org',
    method: 'GET',
    path: '/orgs/{org}/repos',
    pathParams: ['org'],
    queryParams: ['direction', 'page', 'per_page', 'sort', 'type'],
  );

  /// `GET /users/{username}/repos`
  /// List repositories for a user
  static const reposListForUser = RestOperationContract(
    operationId: 'repos/list-for-user',
    method: 'GET',
    path: '/users/{username}/repos',
    pathParams: ['username'],
    queryParams: ['direction', 'page', 'per_page', 'sort', 'type'],
  );

  /// `GET /repos/{owner}/{repo}/forks`
  /// List forks
  static const reposListForks = RestOperationContract(
    operationId: 'repos/list-forks',
    method: 'GET',
    path: '/repos/{owner}/{repo}/forks',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page', 'sort'],
  );

  /// `GET /repos/{owner}/{repo}/invitations`
  /// List repository invitations
  static const reposListInvitations = RestOperationContract(
    operationId: 'repos/list-invitations',
    method: 'GET',
    path: '/repos/{owner}/{repo}/invitations',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/repository_invitations`
  /// List repository invitations for the authenticated user
  static const reposListInvitationsForAuthenticatedUser = RestOperationContract(
    operationId: 'repos/list-invitations-for-authenticated-user',
    method: 'GET',
    path: '/user/repository_invitations',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/issue-types`
  /// List issue types for a repository
  static const reposListIssueTypes = RestOperationContract(
    operationId: 'repos/list-issue-types',
    method: 'GET',
    path: '/repos/{owner}/{repo}/issue-types',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/languages`
  /// List repository languages
  static const reposListLanguages = RestOperationContract(
    operationId: 'repos/list-languages',
    method: 'GET',
    path: '/repos/{owner}/{repo}/languages',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /repos/{owner}/{repo}/pages/builds`
  /// List GitHub Pages builds
  static const reposListPagesBuilds = RestOperationContract(
    operationId: 'repos/list-pages-builds',
    method: 'GET',
    path: '/repos/{owner}/{repo}/pages/builds',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repositories`
  /// List public repositories
  static const reposListPublic = RestOperationContract(
    operationId: 'repos/list-public',
    method: 'GET',
    path: '/repositories',
    queryParams: ['since'],
  );

  /// `GET /repos/{owner}/{repo}/commits/{commit_sha}/pulls`
  /// List pull requests associated with a commit
  static const reposListPullRequestsAssociatedWithCommit =
      RestOperationContract(
    operationId: 'repos/list-pull-requests-associated-with-commit',
    method: 'GET',
    path: '/repos/{owner}/{repo}/commits/{commit_sha}/pulls',
    pathParams: ['commit_sha', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/releases/{release_id}/assets`
  /// List release assets
  static const reposListReleaseAssets = RestOperationContract(
    operationId: 'repos/list-release-assets',
    method: 'GET',
    path: '/repos/{owner}/{repo}/releases/{release_id}/assets',
    pathParams: ['owner', 'release_id', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/releases`
  /// List releases
  static const reposListReleases = RestOperationContract(
    operationId: 'repos/list-releases',
    method: 'GET',
    path: '/repos/{owner}/{repo}/releases',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/tags`
  /// List repository tags
  static const reposListTags = RestOperationContract(
    operationId: 'repos/list-tags',
    method: 'GET',
    path: '/repos/{owner}/{repo}/tags',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/teams`
  /// List repository teams
  static const reposListTeams = RestOperationContract(
    operationId: 'repos/list-teams',
    method: 'GET',
    path: '/repos/{owner}/{repo}/teams',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /repos/{owner}/{repo}/hooks/{hook_id}/deliveries`
  /// List deliveries for a repository webhook
  static const reposListWebhookDeliveries = RestOperationContract(
    operationId: 'repos/list-webhook-deliveries',
    method: 'GET',
    path: '/repos/{owner}/{repo}/hooks/{hook_id}/deliveries',
    pathParams: ['hook_id', 'owner', 'repo'],
    queryParams: ['cursor', 'per_page', 'status'],
  );

  /// `GET /repos/{owner}/{repo}/hooks`
  /// List repository webhooks
  static const reposListWebhooks = RestOperationContract(
    operationId: 'repos/list-webhooks',
    method: 'GET',
    path: '/repos/{owner}/{repo}/hooks',
    pathParams: ['owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `POST /repos/{owner}/{repo}/merges`
  /// Merge a branch
  static const reposMerge = RestOperationContract(
    operationId: 'repos/merge',
    method: 'POST',
    path: '/repos/{owner}/{repo}/merges',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201, 204],
  );

  /// `POST /repos/{owner}/{repo}/merge-upstream`
  /// Sync a fork branch with the upstream repository
  static const reposMergeUpstream = RestOperationContract(
    operationId: 'repos/merge-upstream',
    method: 'POST',
    path: '/repos/{owner}/{repo}/merge-upstream',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/hooks/{hook_id}/pings`
  /// Ping a repository webhook
  static const reposPingWebhook = RestOperationContract(
    operationId: 'repos/ping-webhook',
    method: 'POST',
    path: '/repos/{owner}/{repo}/hooks/{hook_id}/pings',
    pathParams: ['hook_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}/attempts`
  /// Redeliver a delivery for a repository webhook
  static const reposRedeliverWebhookDelivery = RestOperationContract(
    operationId: 'repos/redeliver-webhook-delivery',
    method: 'POST',
    path:
        '/repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}/attempts',
    pathParams: ['delivery_id', 'hook_id', 'owner', 'repo'],
    successStatuses: [202],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps`
  /// Remove app access restrictions
  static const reposRemoveAppAccessRestrictions = RestOperationContract(
    operationId: 'repos/remove-app-access-restrictions',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /repos/{owner}/{repo}/collaborators/{username}`
  /// Remove a repository collaborator
  static const reposRemoveCollaborator = RestOperationContract(
    operationId: 'repos/remove-collaborator',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/collaborators/{username}',
    pathParams: ['owner', 'repo', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts`
  /// Remove status check contexts
  static const reposRemoveStatusCheckContexts = RestOperationContract(
    operationId: 'repos/remove-status-check-contexts',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks`
  /// Remove status check protection
  static const reposRemoveStatusCheckProtection = RestOperationContract(
    operationId: 'repos/remove-status-check-protection',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks',
    pathParams: ['branch', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams`
  /// Remove team access restrictions
  static const reposRemoveTeamAccessRestrictions = RestOperationContract(
    operationId: 'repos/remove-team-access-restrictions',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users`
  /// Remove user access restrictions
  static const reposRemoveUserAccessRestrictions = RestOperationContract(
    operationId: 'repos/remove-user-access-restrictions',
    method: 'DELETE',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/branches/{branch}/rename`
  /// Rename a branch
  static const reposRenameBranch = RestOperationContract(
    operationId: 'repos/rename-branch',
    method: 'POST',
    path: '/repos/{owner}/{repo}/branches/{branch}/rename',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `PUT /repos/{owner}/{repo}/topics`
  /// Replace all repository topics
  static const reposReplaceAllTopics = RestOperationContract(
    operationId: 'repos/replace-all-topics',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/topics',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/pages/builds`
  /// Request a GitHub Pages build
  static const reposRequestPagesBuild = RestOperationContract(
    operationId: 'repos/request-pages-build',
    method: 'POST',
    path: '/repos/{owner}/{repo}/pages/builds',
    pathParams: ['owner', 'repo'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins`
  /// Set admin branch protection
  static const reposSetAdminBranchProtection = RestOperationContract(
    operationId: 'repos/set-admin-branch-protection',
    method: 'POST',
    path: '/repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins',
    pathParams: ['branch', 'owner', 'repo'],
  );

  /// `PUT /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps`
  /// Set app access restrictions
  static const reposSetAppAccessRestrictions = RestOperationContract(
    operationId: 'repos/set-app-access-restrictions',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts`
  /// Set status check contexts
  static const reposSetStatusCheckContexts = RestOperationContract(
    operationId: 'repos/set-status-check-contexts',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams`
  /// Set team access restrictions
  static const reposSetTeamAccessRestrictions = RestOperationContract(
    operationId: 'repos/set-team-access-restrictions',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users`
  /// Set user access restrictions
  static const reposSetUserAccessRestrictions = RestOperationContract(
    operationId: 'repos/set-user-access-restrictions',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/hooks/{hook_id}/tests`
  /// Test the push repository webhook
  static const reposTestPushWebhook = RestOperationContract(
    operationId: 'repos/test-push-webhook',
    method: 'POST',
    path: '/repos/{owner}/{repo}/hooks/{hook_id}/tests',
    pathParams: ['hook_id', 'owner', 'repo'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/transfer`
  /// Transfer a repository
  static const reposTransfer = RestOperationContract(
    operationId: 'repos/transfer',
    method: 'POST',
    path: '/repos/{owner}/{repo}/transfer',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [202],
  );

  /// `PATCH /repos/{owner}/{repo}`
  /// Update a repository
  static const reposUpdate = RestOperationContract(
    operationId: 'repos/update',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/branches/{branch}/protection`
  /// Update branch protection
  static const reposUpdateBranchProtection = RestOperationContract(
    operationId: 'repos/update-branch-protection',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/branches/{branch}/protection',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/comments/{comment_id}`
  /// Update a commit comment
  static const reposUpdateCommitComment = RestOperationContract(
    operationId: 'repos/update-commit-comment',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/comments/{comment_id}',
    pathParams: ['comment_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}`
  /// Update a deployment branch policy
  static const reposUpdateDeploymentBranchPolicy = RestOperationContract(
    operationId: 'repos/update-deployment-branch-policy',
    method: 'PUT',
    path:
        '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}',
    pathParams: ['branch_policy_id', 'environment_name', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/pages`
  /// Update information about a GitHub Pages site
  static const reposUpdateInformationAboutPagesSite = RestOperationContract(
    operationId: 'repos/update-information-about-pages-site',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/pages',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PATCH /repos/{owner}/{repo}/invitations/{invitation_id}`
  /// Update a repository invitation
  static const reposUpdateInvitation = RestOperationContract(
    operationId: 'repos/update-invitation',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/invitations/{invitation_id}',
    pathParams: ['invitation_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /orgs/{org}/rulesets/{ruleset_id}`
  /// Update an organization repository ruleset
  static const reposUpdateOrgRuleset = RestOperationContract(
    operationId: 'repos/update-org-ruleset',
    method: 'PUT',
    path: '/orgs/{org}/rulesets/{ruleset_id}',
    pathParams: ['org', 'ruleset_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews`
  /// Update pull request review protection
  static const reposUpdatePullRequestReviewProtection = RestOperationContract(
    operationId: 'repos/update-pull-request-review-protection',
    method: 'PATCH',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/releases/{release_id}`
  /// Update a release
  static const reposUpdateRelease = RestOperationContract(
    operationId: 'repos/update-release',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/releases/{release_id}',
    pathParams: ['owner', 'release_id', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/releases/assets/{asset_id}`
  /// Update a release asset
  static const reposUpdateReleaseAsset = RestOperationContract(
    operationId: 'repos/update-release-asset',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/releases/assets/{asset_id}',
    pathParams: ['asset_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /repos/{owner}/{repo}/rulesets/{ruleset_id}`
  /// Update a repository ruleset
  static const reposUpdateRepoRuleset = RestOperationContract(
    operationId: 'repos/update-repo-ruleset',
    method: 'PUT',
    path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}',
    pathParams: ['owner', 'repo', 'ruleset_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks`
  /// Update status check protection
  static const reposUpdateStatusCheckProtection = RestOperationContract(
    operationId: 'repos/update-status-check-protection',
    method: 'PATCH',
    path:
        '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks',
    pathParams: ['branch', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/hooks/{hook_id}`
  /// Update a repository webhook
  static const reposUpdateWebhook = RestOperationContract(
    operationId: 'repos/update-webhook',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/hooks/{hook_id}',
    pathParams: ['hook_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/hooks/{hook_id}/config`
  /// Update a webhook configuration for a repository
  static const reposUpdateWebhookConfigForRepo = RestOperationContract(
    operationId: 'repos/update-webhook-config-for-repo',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/hooks/{hook_id}/config',
    pathParams: ['hook_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/releases/{release_id}/assets`
  /// Upload a release asset
  static const reposUploadReleaseAsset = RestOperationContract(
    operationId: 'repos/upload-release-asset',
    method: 'POST',
    path: '/repos/{owner}/{repo}/releases/{release_id}/assets',
    pathParams: ['owner', 'release_id', 'repo'],
    queryParams: ['label', 'name'],
    hasRequestBody: true,
    requestMediaTypes: ['application/octet-stream'],
    successStatuses: [201],
  );

  /// `GET /search/code`
  /// Search code
  static const searchCode = RestOperationContract(
    operationId: 'search/code',
    method: 'GET',
    path: '/search/code',
    queryParams: ['order', 'page', 'per_page', 'q', 'sort'],
  );

  /// `GET /search/commits`
  /// Search commits
  static const searchCommits = RestOperationContract(
    operationId: 'search/commits',
    method: 'GET',
    path: '/search/commits',
    queryParams: ['order', 'page', 'per_page', 'q', 'sort'],
  );

  /// `GET /search/issues`
  /// Search issues and pull requests
  static const searchIssuesAndPullRequests = RestOperationContract(
    operationId: 'search/issues-and-pull-requests',
    method: 'GET',
    path: '/search/issues',
    queryParams: [
      'advanced_search',
      'order',
      'page',
      'per_page',
      'q',
      'search_type',
      'sort'
    ],
  );

  /// `GET /search/labels`
  /// Search labels
  static const searchLabels = RestOperationContract(
    operationId: 'search/labels',
    method: 'GET',
    path: '/search/labels',
    queryParams: ['order', 'page', 'per_page', 'q', 'repository_id', 'sort'],
  );

  /// `GET /search/repositories`
  /// Search repositories
  static const searchRepos = RestOperationContract(
    operationId: 'search/repos',
    method: 'GET',
    path: '/search/repositories',
    queryParams: ['order', 'page', 'per_page', 'q', 'sort'],
  );

  /// `GET /search/topics`
  /// Search topics
  static const searchTopics = RestOperationContract(
    operationId: 'search/topics',
    method: 'GET',
    path: '/search/topics',
    queryParams: ['page', 'per_page', 'q'],
  );

  /// `GET /search/users`
  /// Search users
  static const searchUsers = RestOperationContract(
    operationId: 'search/users',
    method: 'GET',
    path: '/search/users',
    queryParams: ['order', 'page', 'per_page', 'q', 'sort'],
  );

  /// `POST /orgs/{org}/secret-scanning/custom-patterns`
  /// Bulk create organization custom patterns
  static const secretScanningBulkCreateOrgCustomPatterns =
      RestOperationContract(
    operationId: 'secret-scanning/bulk-create-org-custom-patterns',
    method: 'POST',
    path: '/orgs/{org}/secret-scanning/custom-patterns',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/secret-scanning/custom-patterns`
  /// Bulk create repository custom patterns
  static const secretScanningBulkCreateRepoCustomPatterns =
      RestOperationContract(
    operationId: 'secret-scanning/bulk-create-repo-custom-patterns',
    method: 'POST',
    path: '/repos/{owner}/{repo}/secret-scanning/custom-patterns',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /orgs/{org}/secret-scanning/custom-patterns`
  /// Bulk delete organization custom patterns
  static const secretScanningBulkDeleteOrgCustomPatterns =
      RestOperationContract(
    operationId: 'secret-scanning/bulk-delete-org-custom-patterns',
    method: 'DELETE',
    path: '/orgs/{org}/secret-scanning/custom-patterns',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `DELETE /repos/{owner}/{repo}/secret-scanning/custom-patterns`
  /// Bulk delete repository custom patterns
  static const secretScanningBulkDeleteRepoCustomPatterns =
      RestOperationContract(
    operationId: 'secret-scanning/bulk-delete-repo-custom-patterns',
    method: 'DELETE',
    path: '/repos/{owner}/{repo}/secret-scanning/custom-patterns',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `POST /repos/{owner}/{repo}/secret-scanning/push-protection-bypasses`
  /// Create a push protection bypass
  static const secretScanningCreatePushProtectionBypass = RestOperationContract(
    operationId: 'secret-scanning/create-push-protection-bypass',
    method: 'POST',
    path: '/repos/{owner}/{repo}/secret-scanning/push-protection-bypasses',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}`
  /// Get a secret scanning alert
  static const secretScanningGetAlert = RestOperationContract(
    operationId: 'secret-scanning/get-alert',
    method: 'GET',
    path: '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}',
    pathParams: ['alert_number', 'owner', 'repo'],
    queryParams: ['hide_secret'],
  );

  /// `GET /repos/{owner}/{repo}/secret-scanning/scan-history`
  /// Get secret scanning scan history for a repository
  static const secretScanningGetScanHistory = RestOperationContract(
    operationId: 'secret-scanning/get-scan-history',
    method: 'GET',
    path: '/repos/{owner}/{repo}/secret-scanning/scan-history',
    pathParams: ['owner', 'repo'],
  );

  /// `GET /orgs/{org}/secret-scanning/alerts`
  /// List secret scanning alerts for an organization
  static const secretScanningListAlertsForOrg = RestOperationContract(
    operationId: 'secret-scanning/list-alerts-for-org',
    method: 'GET',
    path: '/orgs/{org}/secret-scanning/alerts',
    pathParams: ['org'],
    queryParams: [
      'after',
      'assignee',
      'before',
      'direction',
      'exclude_providers',
      'exclude_secret_types',
      'hide_secret',
      'included_metadata',
      'is_bypassed',
      'is_multi_repo',
      'is_publicly_leaked',
      'owner_email_hash',
      'page',
      'per_page',
      'providers',
      'resolution',
      'secret_type',
      'sort',
      'state',
      'validity'
    ],
  );

  /// `GET /repos/{owner}/{repo}/secret-scanning/alerts`
  /// List secret scanning alerts for a repository
  static const secretScanningListAlertsForRepo = RestOperationContract(
    operationId: 'secret-scanning/list-alerts-for-repo',
    method: 'GET',
    path: '/repos/{owner}/{repo}/secret-scanning/alerts',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'after',
      'assignee',
      'before',
      'direction',
      'exclude_providers',
      'exclude_secret_types',
      'hide_secret',
      'included_metadata',
      'is_bypassed',
      'is_multi_repo',
      'is_publicly_leaked',
      'owner_email_hash',
      'page',
      'per_page',
      'providers',
      'resolution',
      'secret_type',
      'sort',
      'state',
      'validity'
    ],
  );

  /// `GET /repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}/locations`
  /// List locations for a secret scanning alert
  static const secretScanningListLocationsForAlert = RestOperationContract(
    operationId: 'secret-scanning/list-locations-for-alert',
    method: 'GET',
    path:
        '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}/locations',
    pathParams: ['alert_number', 'owner', 'repo'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/secret-scanning/custom-patterns`
  /// List organization custom patterns
  static const secretScanningListOrgCustomPatterns = RestOperationContract(
    operationId: 'secret-scanning/list-org-custom-patterns',
    method: 'GET',
    path: '/orgs/{org}/secret-scanning/custom-patterns',
    pathParams: ['org'],
    queryParams: [
      'after',
      'before',
      'direction',
      'push_protection',
      'sort',
      'state'
    ],
  );

  /// `GET /orgs/{org}/secret-scanning/pattern-configurations`
  /// List organization pattern configurations
  static const secretScanningListOrgPatternConfigs = RestOperationContract(
    operationId: 'secret-scanning/list-org-pattern-configs',
    method: 'GET',
    path: '/orgs/{org}/secret-scanning/pattern-configurations',
    pathParams: ['org'],
  );

  /// `GET /repos/{owner}/{repo}/secret-scanning/custom-patterns`
  /// List repository custom patterns
  static const secretScanningListRepoCustomPatterns = RestOperationContract(
    operationId: 'secret-scanning/list-repo-custom-patterns',
    method: 'GET',
    path: '/repos/{owner}/{repo}/secret-scanning/custom-patterns',
    pathParams: ['owner', 'repo'],
    queryParams: [
      'after',
      'before',
      'direction',
      'push_protection',
      'sort',
      'state'
    ],
  );

  /// `PATCH /repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}`
  /// Update a secret scanning alert
  static const secretScanningUpdateAlert = RestOperationContract(
    operationId: 'secret-scanning/update-alert',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}',
    pathParams: ['alert_number', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/secret-scanning/custom-patterns/{pattern_id}`
  /// Update an organization custom pattern
  static const secretScanningUpdateOrgCustomPattern = RestOperationContract(
    operationId: 'secret-scanning/update-org-custom-pattern',
    method: 'PATCH',
    path: '/orgs/{org}/secret-scanning/custom-patterns/{pattern_id}',
    pathParams: ['org', 'pattern_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /orgs/{org}/secret-scanning/pattern-configurations`
  /// Update organization pattern configurations
  static const secretScanningUpdateOrgPatternConfigs = RestOperationContract(
    operationId: 'secret-scanning/update-org-pattern-configs',
    method: 'PATCH',
    path: '/orgs/{org}/secret-scanning/pattern-configurations',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PATCH /repos/{owner}/{repo}/secret-scanning/custom-patterns/{pattern_id}`
  /// Update a repository custom pattern
  static const secretScanningUpdateRepoCustomPattern = RestOperationContract(
    operationId: 'secret-scanning/update-repo-custom-pattern',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/secret-scanning/custom-patterns/{pattern_id}',
    pathParams: ['owner', 'pattern_id', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `POST /repos/{owner}/{repo}/security-advisories/{ghsa_id}/forks`
  /// Create a temporary private fork
  static const securityAdvisoriesCreateFork = RestOperationContract(
    operationId: 'security-advisories/create-fork',
    method: 'POST',
    path: '/repos/{owner}/{repo}/security-advisories/{ghsa_id}/forks',
    pathParams: ['ghsa_id', 'owner', 'repo'],
    successStatuses: [202],
  );

  /// `POST /repos/{owner}/{repo}/security-advisories/reports`
  /// Privately report a security vulnerability
  static const securityAdvisoriesCreatePrivateVulnerabilityReport =
      RestOperationContract(
    operationId: 'security-advisories/create-private-vulnerability-report',
    method: 'POST',
    path: '/repos/{owner}/{repo}/security-advisories/reports',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/security-advisories`
  /// Create a repository security advisory
  static const securityAdvisoriesCreateRepositoryAdvisory =
      RestOperationContract(
    operationId: 'security-advisories/create-repository-advisory',
    method: 'POST',
    path: '/repos/{owner}/{repo}/security-advisories',
    pathParams: ['owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /repos/{owner}/{repo}/security-advisories/{ghsa_id}/cve`
  /// Request a CVE for a repository security advisory
  static const securityAdvisoriesCreateRepositoryAdvisoryCveRequest =
      RestOperationContract(
    operationId: 'security-advisories/create-repository-advisory-cve-request',
    method: 'POST',
    path: '/repos/{owner}/{repo}/security-advisories/{ghsa_id}/cve',
    pathParams: ['ghsa_id', 'owner', 'repo'],
    successStatuses: [202],
  );

  /// `GET /advisories/{ghsa_id}`
  /// Get a global security advisory
  static const securityAdvisoriesGetGlobalAdvisory = RestOperationContract(
    operationId: 'security-advisories/get-global-advisory',
    method: 'GET',
    path: '/advisories/{ghsa_id}',
    pathParams: ['ghsa_id'],
  );

  /// `GET /repos/{owner}/{repo}/security-advisories/{ghsa_id}`
  /// Get a repository security advisory
  static const securityAdvisoriesGetRepositoryAdvisory = RestOperationContract(
    operationId: 'security-advisories/get-repository-advisory',
    method: 'GET',
    path: '/repos/{owner}/{repo}/security-advisories/{ghsa_id}',
    pathParams: ['ghsa_id', 'owner', 'repo'],
  );

  /// `GET /advisories`
  /// List global security advisories
  static const securityAdvisoriesListGlobalAdvisories = RestOperationContract(
    operationId: 'security-advisories/list-global-advisories',
    method: 'GET',
    path: '/advisories',
    queryParams: [
      'affects',
      'after',
      'before',
      'cve_id',
      'cwes',
      'direction',
      'ecosystem',
      'epss_percentage',
      'epss_percentile',
      'ghsa_id',
      'is_withdrawn',
      'modified',
      'per_page',
      'published',
      'severity',
      'sort',
      'type',
      'updated'
    ],
  );

  /// `GET /orgs/{org}/security-advisories`
  /// List repository security advisories for an organization
  static const securityAdvisoriesListOrgRepositoryAdvisories =
      RestOperationContract(
    operationId: 'security-advisories/list-org-repository-advisories',
    method: 'GET',
    path: '/orgs/{org}/security-advisories',
    pathParams: ['org'],
    queryParams: ['after', 'before', 'direction', 'per_page', 'sort', 'state'],
  );

  /// `GET /repos/{owner}/{repo}/security-advisories`
  /// List repository security advisories
  static const securityAdvisoriesListRepositoryAdvisories =
      RestOperationContract(
    operationId: 'security-advisories/list-repository-advisories',
    method: 'GET',
    path: '/repos/{owner}/{repo}/security-advisories',
    pathParams: ['owner', 'repo'],
    queryParams: ['after', 'before', 'direction', 'per_page', 'sort', 'state'],
  );

  /// `PATCH /repos/{owner}/{repo}/security-advisories/{ghsa_id}`
  /// Update a repository security advisory
  static const securityAdvisoriesUpdateRepositoryAdvisory =
      RestOperationContract(
    operationId: 'security-advisories/update-repository-advisory',
    method: 'PATCH',
    path: '/repos/{owner}/{repo}/security-advisories/{ghsa_id}',
    pathParams: ['ghsa_id', 'owner', 'repo'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /teams/{team_id}/members/{username}`
  /// Add team member (Legacy)
  static const teamsAddMemberLegacy = RestOperationContract(
    operationId: 'teams/add-member-legacy',
    method: 'PUT',
    path: '/teams/{team_id}/members/{username}',
    pathParams: ['team_id', 'username'],
    successStatuses: [204],
  );

  /// `PUT /orgs/{org}/teams/{team_slug}/memberships/{username}`
  /// Add or update team membership for a user
  static const teamsAddOrUpdateMembershipForUserInOrg = RestOperationContract(
    operationId: 'teams/add-or-update-membership-for-user-in-org',
    method: 'PUT',
    path: '/orgs/{org}/teams/{team_slug}/memberships/{username}',
    pathParams: ['org', 'team_slug', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /teams/{team_id}/memberships/{username}`
  /// Add or update team membership for a user (Legacy)
  static const teamsAddOrUpdateMembershipForUserLegacy = RestOperationContract(
    operationId: 'teams/add-or-update-membership-for-user-legacy',
    method: 'PUT',
    path: '/teams/{team_id}/memberships/{username}',
    pathParams: ['team_id', 'username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `PUT /orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}`
  /// Add or update team repository permissions
  static const teamsAddOrUpdateRepoPermissionsInOrg = RestOperationContract(
    operationId: 'teams/add-or-update-repo-permissions-in-org',
    method: 'PUT',
    path: '/orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}',
    pathParams: ['org', 'owner', 'repo', 'team_slug'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `PUT /teams/{team_id}/repos/{owner}/{repo}`
  /// Add or update team repository permissions (Legacy)
  static const teamsAddOrUpdateRepoPermissionsLegacy = RestOperationContract(
    operationId: 'teams/add-or-update-repo-permissions-legacy',
    method: 'PUT',
    path: '/teams/{team_id}/repos/{owner}/{repo}',
    pathParams: ['owner', 'repo', 'team_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}`
  /// Check team permissions for a repository
  static const teamsCheckPermissionsForRepoInOrg = RestOperationContract(
    operationId: 'teams/check-permissions-for-repo-in-org',
    method: 'GET',
    path: '/orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}',
    pathParams: ['org', 'owner', 'repo', 'team_slug'],
    successStatuses: [200, 204],
  );

  /// `GET /teams/{team_id}/repos/{owner}/{repo}`
  /// Check team permissions for a repository (Legacy)
  static const teamsCheckPermissionsForRepoLegacy = RestOperationContract(
    operationId: 'teams/check-permissions-for-repo-legacy',
    method: 'GET',
    path: '/teams/{team_id}/repos/{owner}/{repo}',
    pathParams: ['owner', 'repo', 'team_id'],
    successStatuses: [200, 204],
  );

  /// `POST /orgs/{org}/teams`
  /// Create a team
  static const teamsCreate = RestOperationContract(
    operationId: 'teams/create',
    method: 'POST',
    path: '/orgs/{org}/teams',
    pathParams: ['org'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `DELETE /orgs/{org}/teams/{team_slug}`
  /// Delete a team
  static const teamsDeleteInOrg = RestOperationContract(
    operationId: 'teams/delete-in-org',
    method: 'DELETE',
    path: '/orgs/{org}/teams/{team_slug}',
    pathParams: ['org', 'team_slug'],
    successStatuses: [204],
  );

  /// `DELETE /teams/{team_id}`
  /// Delete a team (Legacy)
  static const teamsDeleteLegacy = RestOperationContract(
    operationId: 'teams/delete-legacy',
    method: 'DELETE',
    path: '/teams/{team_id}',
    pathParams: ['team_id'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/teams/{team_slug}`
  /// Get a team by name
  static const teamsGetByName = RestOperationContract(
    operationId: 'teams/get-by-name',
    method: 'GET',
    path: '/orgs/{org}/teams/{team_slug}',
    pathParams: ['org', 'team_slug'],
  );

  /// `GET /teams/{team_id}`
  /// Get a team (Legacy)
  static const teamsGetLegacy = RestOperationContract(
    operationId: 'teams/get-legacy',
    method: 'GET',
    path: '/teams/{team_id}',
    pathParams: ['team_id'],
  );

  /// `GET /teams/{team_id}/members/{username}`
  /// Get team member (Legacy)
  static const teamsGetMemberLegacy = RestOperationContract(
    operationId: 'teams/get-member-legacy',
    method: 'GET',
    path: '/teams/{team_id}/members/{username}',
    pathParams: ['team_id', 'username'],
    successStatuses: [204],
  );

  /// `GET /orgs/{org}/teams/{team_slug}/memberships/{username}`
  /// Get team membership for a user
  static const teamsGetMembershipForUserInOrg = RestOperationContract(
    operationId: 'teams/get-membership-for-user-in-org',
    method: 'GET',
    path: '/orgs/{org}/teams/{team_slug}/memberships/{username}',
    pathParams: ['org', 'team_slug', 'username'],
  );

  /// `GET /teams/{team_id}/memberships/{username}`
  /// Get team membership for a user (Legacy)
  static const teamsGetMembershipForUserLegacy = RestOperationContract(
    operationId: 'teams/get-membership-for-user-legacy',
    method: 'GET',
    path: '/teams/{team_id}/memberships/{username}',
    pathParams: ['team_id', 'username'],
  );

  /// `GET /orgs/{org}/teams`
  /// List teams
  static const teamsList = RestOperationContract(
    operationId: 'teams/list',
    method: 'GET',
    path: '/orgs/{org}/teams',
    pathParams: ['org'],
    queryParams: ['page', 'per_page', 'team_type'],
  );

  /// `GET /orgs/{org}/teams/{team_slug}/teams`
  /// List child teams
  static const teamsListChildInOrg = RestOperationContract(
    operationId: 'teams/list-child-in-org',
    method: 'GET',
    path: '/orgs/{org}/teams/{team_slug}/teams',
    pathParams: ['org', 'team_slug'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /teams/{team_id}/teams`
  /// List child teams (Legacy)
  static const teamsListChildLegacy = RestOperationContract(
    operationId: 'teams/list-child-legacy',
    method: 'GET',
    path: '/teams/{team_id}/teams',
    pathParams: ['team_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/teams`
  /// List teams for the authenticated user
  static const teamsListForAuthenticatedUser = RestOperationContract(
    operationId: 'teams/list-for-authenticated-user',
    method: 'GET',
    path: '/user/teams',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/teams/{team_slug}/members`
  /// List team members
  static const teamsListMembersInOrg = RestOperationContract(
    operationId: 'teams/list-members-in-org',
    method: 'GET',
    path: '/orgs/{org}/teams/{team_slug}/members',
    pathParams: ['org', 'team_slug'],
    queryParams: ['page', 'per_page', 'role'],
  );

  /// `GET /teams/{team_id}/members`
  /// List team members (Legacy)
  static const teamsListMembersLegacy = RestOperationContract(
    operationId: 'teams/list-members-legacy',
    method: 'GET',
    path: '/teams/{team_id}/members',
    pathParams: ['team_id'],
    queryParams: ['page', 'per_page', 'role'],
  );

  /// `GET /orgs/{org}/teams/{team_slug}/invitations`
  /// List pending team invitations
  static const teamsListPendingInvitationsInOrg = RestOperationContract(
    operationId: 'teams/list-pending-invitations-in-org',
    method: 'GET',
    path: '/orgs/{org}/teams/{team_slug}/invitations',
    pathParams: ['org', 'team_slug'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /teams/{team_id}/invitations`
  /// List pending team invitations (Legacy)
  static const teamsListPendingInvitationsLegacy = RestOperationContract(
    operationId: 'teams/list-pending-invitations-legacy',
    method: 'GET',
    path: '/teams/{team_id}/invitations',
    pathParams: ['team_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /orgs/{org}/teams/{team_slug}/repos`
  /// List team repositories
  static const teamsListReposInOrg = RestOperationContract(
    operationId: 'teams/list-repos-in-org',
    method: 'GET',
    path: '/orgs/{org}/teams/{team_slug}/repos',
    pathParams: ['org', 'team_slug'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /teams/{team_id}/repos`
  /// List team repositories (Legacy)
  static const teamsListReposLegacy = RestOperationContract(
    operationId: 'teams/list-repos-legacy',
    method: 'GET',
    path: '/teams/{team_id}/repos',
    pathParams: ['team_id'],
    queryParams: ['page', 'per_page'],
  );

  /// `DELETE /teams/{team_id}/members/{username}`
  /// Remove team member (Legacy)
  static const teamsRemoveMemberLegacy = RestOperationContract(
    operationId: 'teams/remove-member-legacy',
    method: 'DELETE',
    path: '/teams/{team_id}/members/{username}',
    pathParams: ['team_id', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/teams/{team_slug}/memberships/{username}`
  /// Remove team membership for a user
  static const teamsRemoveMembershipForUserInOrg = RestOperationContract(
    operationId: 'teams/remove-membership-for-user-in-org',
    method: 'DELETE',
    path: '/orgs/{org}/teams/{team_slug}/memberships/{username}',
    pathParams: ['org', 'team_slug', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /teams/{team_id}/memberships/{username}`
  /// Remove team membership for a user (Legacy)
  static const teamsRemoveMembershipForUserLegacy = RestOperationContract(
    operationId: 'teams/remove-membership-for-user-legacy',
    method: 'DELETE',
    path: '/teams/{team_id}/memberships/{username}',
    pathParams: ['team_id', 'username'],
    successStatuses: [204],
  );

  /// `DELETE /orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}`
  /// Remove a repository from a team
  static const teamsRemoveRepoInOrg = RestOperationContract(
    operationId: 'teams/remove-repo-in-org',
    method: 'DELETE',
    path: '/orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}',
    pathParams: ['org', 'owner', 'repo', 'team_slug'],
    successStatuses: [204],
  );

  /// `DELETE /teams/{team_id}/repos/{owner}/{repo}`
  /// Remove a repository from a team (Legacy)
  static const teamsRemoveRepoLegacy = RestOperationContract(
    operationId: 'teams/remove-repo-legacy',
    method: 'DELETE',
    path: '/teams/{team_id}/repos/{owner}/{repo}',
    pathParams: ['owner', 'repo', 'team_id'],
    successStatuses: [204],
  );

  /// `PATCH /orgs/{org}/teams/{team_slug}`
  /// Update a team
  static const teamsUpdateInOrg = RestOperationContract(
    operationId: 'teams/update-in-org',
    method: 'PATCH',
    path: '/orgs/{org}/teams/{team_slug}',
    pathParams: ['org', 'team_slug'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `PATCH /teams/{team_id}`
  /// Update a team (Legacy)
  static const teamsUpdateLegacy = RestOperationContract(
    operationId: 'teams/update-legacy',
    method: 'PATCH',
    path: '/teams/{team_id}',
    pathParams: ['team_id'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [200, 201],
  );

  /// `POST /user/emails`
  /// Add an email address for the authenticated user
  static const usersAddEmailForAuthenticatedUser = RestOperationContract(
    operationId: 'users/add-email-for-authenticated-user',
    method: 'POST',
    path: '/user/emails',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /user/social_accounts`
  /// Add social accounts for the authenticated user
  static const usersAddSocialAccountForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/add-social-account-for-authenticated-user',
    method: 'POST',
    path: '/user/social_accounts',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `PUT /user/blocks/{username}`
  /// Block a user
  static const usersBlock = RestOperationContract(
    operationId: 'users/block',
    method: 'PUT',
    path: '/user/blocks/{username}',
    pathParams: ['username'],
    successStatuses: [204],
  );

  /// `GET /user/blocks/{username}`
  /// Check if a user is blocked by the authenticated user
  static const usersCheckBlocked = RestOperationContract(
    operationId: 'users/check-blocked',
    method: 'GET',
    path: '/user/blocks/{username}',
    pathParams: ['username'],
    successStatuses: [204],
  );

  /// `GET /users/{username}/following/{target_user}`
  /// Check if a user follows another user
  static const usersCheckFollowingForUser = RestOperationContract(
    operationId: 'users/check-following-for-user',
    method: 'GET',
    path: '/users/{username}/following/{target_user}',
    pathParams: ['target_user', 'username'],
    successStatuses: [204],
  );

  /// `GET /user/following/{username}`
  /// Check if a person is followed by the authenticated user
  static const usersCheckPersonIsFollowedByAuthenticated =
      RestOperationContract(
    operationId: 'users/check-person-is-followed-by-authenticated',
    method: 'GET',
    path: '/user/following/{username}',
    pathParams: ['username'],
    successStatuses: [204],
  );

  /// `POST /user/gpg_keys`
  /// Create a GPG key for the authenticated user
  static const usersCreateGpgKeyForAuthenticatedUser = RestOperationContract(
    operationId: 'users/create-gpg-key-for-authenticated-user',
    method: 'POST',
    path: '/user/gpg_keys',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /user/keys`
  /// Create a public SSH key for the authenticated user
  static const usersCreatePublicSshKeyForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/create-public-ssh-key-for-authenticated-user',
    method: 'POST',
    path: '/user/keys',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /user/ssh_signing_keys`
  /// Create a SSH signing key for the authenticated user
  static const usersCreateSshSigningKeyForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/create-ssh-signing-key-for-authenticated-user',
    method: 'POST',
    path: '/user/ssh_signing_keys',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [201],
  );

  /// `POST /users/{username}/attestations/delete-request`
  /// Delete attestations in bulk
  static const usersDeleteAttestationsBulk = RestOperationContract(
    operationId: 'users/delete-attestations-bulk',
    method: 'POST',
    path: '/users/{username}/attestations/delete-request',
    pathParams: ['username'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /users/{username}/attestations/{attestation_id}`
  /// Delete attestations by ID
  static const usersDeleteAttestationsById = RestOperationContract(
    operationId: 'users/delete-attestations-by-id',
    method: 'DELETE',
    path: '/users/{username}/attestations/{attestation_id}',
    pathParams: ['attestation_id', 'username'],
    successStatuses: [200, 204],
  );

  /// `DELETE /users/{username}/attestations/digest/{subject_digest}`
  /// Delete attestations by subject digest
  static const usersDeleteAttestationsBySubjectDigest = RestOperationContract(
    operationId: 'users/delete-attestations-by-subject-digest',
    method: 'DELETE',
    path: '/users/{username}/attestations/digest/{subject_digest}',
    pathParams: ['subject_digest', 'username'],
    successStatuses: [200, 204],
  );

  /// `DELETE /user/emails`
  /// Delete an email address for the authenticated user
  static const usersDeleteEmailForAuthenticatedUser = RestOperationContract(
    operationId: 'users/delete-email-for-authenticated-user',
    method: 'DELETE',
    path: '/user/emails',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `DELETE /user/gpg_keys/{gpg_key_id}`
  /// Delete a GPG key for the authenticated user
  static const usersDeleteGpgKeyForAuthenticatedUser = RestOperationContract(
    operationId: 'users/delete-gpg-key-for-authenticated-user',
    method: 'DELETE',
    path: '/user/gpg_keys/{gpg_key_id}',
    pathParams: ['gpg_key_id'],
    successStatuses: [204],
  );

  /// `DELETE /user/keys/{key_id}`
  /// Delete a public SSH key for the authenticated user
  static const usersDeletePublicSshKeyForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/delete-public-ssh-key-for-authenticated-user',
    method: 'DELETE',
    path: '/user/keys/{key_id}',
    pathParams: ['key_id'],
    successStatuses: [204],
  );

  /// `DELETE /user/social_accounts`
  /// Delete social accounts for the authenticated user
  static const usersDeleteSocialAccountForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/delete-social-account-for-authenticated-user',
    method: 'DELETE',
    path: '/user/social_accounts',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
    successStatuses: [204],
  );

  /// `DELETE /user/ssh_signing_keys/{ssh_signing_key_id}`
  /// Delete an SSH signing key for the authenticated user
  static const usersDeleteSshSigningKeyForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/delete-ssh-signing-key-for-authenticated-user',
    method: 'DELETE',
    path: '/user/ssh_signing_keys/{ssh_signing_key_id}',
    pathParams: ['ssh_signing_key_id'],
    successStatuses: [204],
  );

  /// `PUT /user/following/{username}`
  /// Follow a user
  static const usersFollow = RestOperationContract(
    operationId: 'users/follow',
    method: 'PUT',
    path: '/user/following/{username}',
    pathParams: ['username'],
    successStatuses: [204],
  );

  /// `GET /user`
  /// Get the authenticated user
  static const usersGetAuthenticated = RestOperationContract(
    operationId: 'users/get-authenticated',
    method: 'GET',
    path: '/user',
  );

  /// `GET /user/{account_id}`
  /// Get a user using their ID
  static const usersGetById = RestOperationContract(
    operationId: 'users/get-by-id',
    method: 'GET',
    path: '/user/{account_id}',
    pathParams: ['account_id'],
  );

  /// `GET /users/{username}`
  /// Get a user
  static const usersGetByUsername = RestOperationContract(
    operationId: 'users/get-by-username',
    method: 'GET',
    path: '/users/{username}',
    pathParams: ['username'],
  );

  /// `GET /users/{username}/hovercard`
  /// Get contextual information for a user
  static const usersGetContextForUser = RestOperationContract(
    operationId: 'users/get-context-for-user',
    method: 'GET',
    path: '/users/{username}/hovercard',
    pathParams: ['username'],
    queryParams: ['subject_id', 'subject_type'],
  );

  /// `GET /user/gpg_keys/{gpg_key_id}`
  /// Get a GPG key for the authenticated user
  static const usersGetGpgKeyForAuthenticatedUser = RestOperationContract(
    operationId: 'users/get-gpg-key-for-authenticated-user',
    method: 'GET',
    path: '/user/gpg_keys/{gpg_key_id}',
    pathParams: ['gpg_key_id'],
  );

  /// `GET /user/keys/{key_id}`
  /// Get a public SSH key for the authenticated user
  static const usersGetPublicSshKeyForAuthenticatedUser = RestOperationContract(
    operationId: 'users/get-public-ssh-key-for-authenticated-user',
    method: 'GET',
    path: '/user/keys/{key_id}',
    pathParams: ['key_id'],
  );

  /// `GET /user/ssh_signing_keys/{ssh_signing_key_id}`
  /// Get an SSH signing key for the authenticated user
  static const usersGetSshSigningKeyForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/get-ssh-signing-key-for-authenticated-user',
    method: 'GET',
    path: '/user/ssh_signing_keys/{ssh_signing_key_id}',
    pathParams: ['ssh_signing_key_id'],
  );

  /// `GET /users`
  /// List users
  static const usersList = RestOperationContract(
    operationId: 'users/list',
    method: 'GET',
    path: '/users',
    queryParams: ['per_page', 'since'],
  );

  /// `GET /users/{username}/attestations/{subject_digest}`
  /// List attestations
  static const usersListAttestations = RestOperationContract(
    operationId: 'users/list-attestations',
    method: 'GET',
    path: '/users/{username}/attestations/{subject_digest}',
    pathParams: ['subject_digest', 'username'],
    queryParams: ['after', 'before', 'per_page', 'predicate_type'],
    successStatuses: [200, 201, 204],
  );

  /// `POST /users/{username}/attestations/bulk-list`
  /// List attestations by bulk subject digests
  static const usersListAttestationsBulk = RestOperationContract(
    operationId: 'users/list-attestations-bulk',
    method: 'POST',
    path: '/users/{username}/attestations/bulk-list',
    pathParams: ['username'],
    queryParams: ['after', 'before', 'per_page'],
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `GET /user/blocks`
  /// List users blocked by the authenticated user
  static const usersListBlockedByAuthenticatedUser = RestOperationContract(
    operationId: 'users/list-blocked-by-authenticated-user',
    method: 'GET',
    path: '/user/blocks',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/emails`
  /// List email addresses for the authenticated user
  static const usersListEmailsForAuthenticatedUser = RestOperationContract(
    operationId: 'users/list-emails-for-authenticated-user',
    method: 'GET',
    path: '/user/emails',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/following`
  /// List the people the authenticated user follows
  static const usersListFollowedByAuthenticatedUser = RestOperationContract(
    operationId: 'users/list-followed-by-authenticated-user',
    method: 'GET',
    path: '/user/following',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/followers`
  /// List followers of the authenticated user
  static const usersListFollowersForAuthenticatedUser = RestOperationContract(
    operationId: 'users/list-followers-for-authenticated-user',
    method: 'GET',
    path: '/user/followers',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/followers`
  /// List followers of a user
  static const usersListFollowersForUser = RestOperationContract(
    operationId: 'users/list-followers-for-user',
    method: 'GET',
    path: '/users/{username}/followers',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/following`
  /// List the people a user follows
  static const usersListFollowingForUser = RestOperationContract(
    operationId: 'users/list-following-for-user',
    method: 'GET',
    path: '/users/{username}/following',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/gpg_keys`
  /// List GPG keys for the authenticated user
  static const usersListGpgKeysForAuthenticatedUser = RestOperationContract(
    operationId: 'users/list-gpg-keys-for-authenticated-user',
    method: 'GET',
    path: '/user/gpg_keys',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/gpg_keys`
  /// List GPG keys for a user
  static const usersListGpgKeysForUser = RestOperationContract(
    operationId: 'users/list-gpg-keys-for-user',
    method: 'GET',
    path: '/users/{username}/gpg_keys',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/public_emails`
  /// List public email addresses for the authenticated user
  static const usersListPublicEmailsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/list-public-emails-for-authenticated-user',
    method: 'GET',
    path: '/user/public_emails',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/keys`
  /// List public keys for a user
  static const usersListPublicKeysForUser = RestOperationContract(
    operationId: 'users/list-public-keys-for-user',
    method: 'GET',
    path: '/users/{username}/keys',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/keys`
  /// List public SSH keys for the authenticated user
  static const usersListPublicSshKeysForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/list-public-ssh-keys-for-authenticated-user',
    method: 'GET',
    path: '/user/keys',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/social_accounts`
  /// List social accounts for the authenticated user
  static const usersListSocialAccountsForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/list-social-accounts-for-authenticated-user',
    method: 'GET',
    path: '/user/social_accounts',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/social_accounts`
  /// List social accounts for a user
  static const usersListSocialAccountsForUser = RestOperationContract(
    operationId: 'users/list-social-accounts-for-user',
    method: 'GET',
    path: '/users/{username}/social_accounts',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `GET /user/ssh_signing_keys`
  /// List SSH signing keys for the authenticated user
  static const usersListSshSigningKeysForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/list-ssh-signing-keys-for-authenticated-user',
    method: 'GET',
    path: '/user/ssh_signing_keys',
    queryParams: ['page', 'per_page'],
  );

  /// `GET /users/{username}/ssh_signing_keys`
  /// List SSH signing keys for a user
  static const usersListSshSigningKeysForUser = RestOperationContract(
    operationId: 'users/list-ssh-signing-keys-for-user',
    method: 'GET',
    path: '/users/{username}/ssh_signing_keys',
    pathParams: ['username'],
    queryParams: ['page', 'per_page'],
  );

  /// `PATCH /user/email/visibility`
  /// Set primary email visibility for the authenticated user
  static const usersSetPrimaryEmailVisibilityForAuthenticatedUser =
      RestOperationContract(
    operationId: 'users/set-primary-email-visibility-for-authenticated-user',
    method: 'PATCH',
    path: '/user/email/visibility',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// `DELETE /user/blocks/{username}`
  /// Unblock a user
  static const usersUnblock = RestOperationContract(
    operationId: 'users/unblock',
    method: 'DELETE',
    path: '/user/blocks/{username}',
    pathParams: ['username'],
    successStatuses: [204],
  );

  /// `DELETE /user/following/{username}`
  /// Unfollow a user
  static const usersUnfollow = RestOperationContract(
    operationId: 'users/unfollow',
    method: 'DELETE',
    path: '/user/following/{username}',
    pathParams: ['username'],
    successStatuses: [204],
  );

  /// `PATCH /user`
  /// Update the authenticated user
  static const usersUpdateAuthenticated = RestOperationContract(
    operationId: 'users/update-authenticated',
    method: 'PATCH',
    path: '/user',
    hasRequestBody: true,
    requestMediaTypes: ['application/json'],
  );

  /// Map of all operations indexed by operationId.
  static const Map<String, RestOperationContract> all = {
    'actions/add-custom-labels-to-self-hosted-runner-for-org':
        actionsAddCustomLabelsToSelfHostedRunnerForOrg,
    'actions/add-custom-labels-to-self-hosted-runner-for-repo':
        actionsAddCustomLabelsToSelfHostedRunnerForRepo,
    'actions/add-repo-access-to-self-hosted-runner-group-in-org':
        actionsAddRepoAccessToSelfHostedRunnerGroupInOrg,
    'actions/add-selected-repo-to-org-secret':
        actionsAddSelectedRepoToOrgSecret,
    'actions/add-selected-repo-to-org-variable':
        actionsAddSelectedRepoToOrgVariable,
    'actions/add-self-hosted-runner-to-group-for-org':
        actionsAddSelfHostedRunnerToGroupForOrg,
    'actions/approve-workflow-run': actionsApproveWorkflowRun,
    'actions/cancel-workflow-run': actionsCancelWorkflowRun,
    'actions/create-environment-variable': actionsCreateEnvironmentVariable,
    'actions/create-hosted-runner-for-org': actionsCreateHostedRunnerForOrg,
    'actions/create-or-update-environment-secret':
        actionsCreateOrUpdateEnvironmentSecret,
    'actions/create-or-update-org-secret': actionsCreateOrUpdateOrgSecret,
    'actions/create-or-update-repo-secret': actionsCreateOrUpdateRepoSecret,
    'actions/create-org-variable': actionsCreateOrgVariable,
    'actions/create-registration-token-for-org':
        actionsCreateRegistrationTokenForOrg,
    'actions/create-registration-token-for-repo':
        actionsCreateRegistrationTokenForRepo,
    'actions/create-remove-token-for-org': actionsCreateRemoveTokenForOrg,
    'actions/create-remove-token-for-repo': actionsCreateRemoveTokenForRepo,
    'actions/create-repo-variable': actionsCreateRepoVariable,
    'actions/create-self-hosted-runner-group-for-org':
        actionsCreateSelfHostedRunnerGroupForOrg,
    'actions/create-workflow-dispatch': actionsCreateWorkflowDispatch,
    'actions/delete-actions-cache-by-id': actionsDeleteActionsCacheById,
    'actions/delete-actions-cache-by-key': actionsDeleteActionsCacheByKey,
    'actions/delete-artifact': actionsDeleteArtifact,
    'actions/delete-custom-image-from-org': actionsDeleteCustomImageFromOrg,
    'actions/delete-custom-image-version-from-org':
        actionsDeleteCustomImageVersionFromOrg,
    'actions/delete-environment-secret': actionsDeleteEnvironmentSecret,
    'actions/delete-environment-variable': actionsDeleteEnvironmentVariable,
    'actions/delete-hosted-runner-for-org': actionsDeleteHostedRunnerForOrg,
    'actions/delete-org-secret': actionsDeleteOrgSecret,
    'actions/delete-org-variable': actionsDeleteOrgVariable,
    'actions/delete-repo-secret': actionsDeleteRepoSecret,
    'actions/delete-repo-variable': actionsDeleteRepoVariable,
    'actions/delete-self-hosted-runner-from-org':
        actionsDeleteSelfHostedRunnerFromOrg,
    'actions/delete-self-hosted-runner-from-repo':
        actionsDeleteSelfHostedRunnerFromRepo,
    'actions/delete-self-hosted-runner-group-from-org':
        actionsDeleteSelfHostedRunnerGroupFromOrg,
    'actions/delete-workflow-run': actionsDeleteWorkflowRun,
    'actions/delete-workflow-run-logs': actionsDeleteWorkflowRunLogs,
    'actions/disable-selected-repository-github-actions-organization':
        actionsDisableSelectedRepositoryGithubActionsOrganization,
    'actions/disable-selected-repository-self-hosted-runners-organization':
        actionsDisableSelectedRepositorySelfHostedRunnersOrganization,
    'actions/disable-workflow': actionsDisableWorkflow,
    'actions/download-artifact': actionsDownloadArtifact,
    'actions/download-job-logs-for-workflow-run':
        actionsDownloadJobLogsForWorkflowRun,
    'actions/download-workflow-run-attempt-logs':
        actionsDownloadWorkflowRunAttemptLogs,
    'actions/download-workflow-run-logs': actionsDownloadWorkflowRunLogs,
    'actions/enable-selected-repository-github-actions-organization':
        actionsEnableSelectedRepositoryGithubActionsOrganization,
    'actions/enable-selected-repository-self-hosted-runners-organization':
        actionsEnableSelectedRepositorySelfHostedRunnersOrganization,
    'actions/enable-workflow': actionsEnableWorkflow,
    'actions/force-cancel-workflow-run': actionsForceCancelWorkflowRun,
    'actions/generate-runner-jitconfig-for-org':
        actionsGenerateRunnerJitconfigForOrg,
    'actions/generate-runner-jitconfig-for-repo':
        actionsGenerateRunnerJitconfigForRepo,
    'actions/get-actions-cache-list': actionsGetActionsCacheList,
    'actions/get-actions-cache-retention-limit-for-enterprise':
        actionsGetActionsCacheRetentionLimitForEnterprise,
    'actions/get-actions-cache-retention-limit-for-organization':
        actionsGetActionsCacheRetentionLimitForOrganization,
    'actions/get-actions-cache-retention-limit-for-repository':
        actionsGetActionsCacheRetentionLimitForRepository,
    'actions/get-actions-cache-storage-limit-for-enterprise':
        actionsGetActionsCacheStorageLimitForEnterprise,
    'actions/get-actions-cache-storage-limit-for-organization':
        actionsGetActionsCacheStorageLimitForOrganization,
    'actions/get-actions-cache-storage-limit-for-repository':
        actionsGetActionsCacheStorageLimitForRepository,
    'actions/get-actions-cache-usage': actionsGetActionsCacheUsage,
    'actions/get-actions-cache-usage-by-repo-for-org':
        actionsGetActionsCacheUsageByRepoForOrg,
    'actions/get-actions-cache-usage-for-org':
        actionsGetActionsCacheUsageForOrg,
    'actions/get-allowed-actions-organization':
        actionsGetAllowedActionsOrganization,
    'actions/get-allowed-actions-repository':
        actionsGetAllowedActionsRepository,
    'actions/get-artifact': actionsGetArtifact,
    'actions/get-artifact-and-log-retention-settings-organization':
        actionsGetArtifactAndLogRetentionSettingsOrganization,
    'actions/get-artifact-and-log-retention-settings-repository':
        actionsGetArtifactAndLogRetentionSettingsRepository,
    'actions/get-concurrency-group-for-repository':
        actionsGetConcurrencyGroupForRepository,
    'actions/get-custom-image-for-org': actionsGetCustomImageForOrg,
    'actions/get-custom-image-version-for-org':
        actionsGetCustomImageVersionForOrg,
    'actions/get-custom-oidc-sub-claim-for-repo':
        actionsGetCustomOidcSubClaimForRepo,
    'actions/get-environment-public-key': actionsGetEnvironmentPublicKey,
    'actions/get-environment-secret': actionsGetEnvironmentSecret,
    'actions/get-environment-variable': actionsGetEnvironmentVariable,
    'actions/get-fork-pr-contributor-approval-permissions-organization':
        actionsGetForkPrContributorApprovalPermissionsOrganization,
    'actions/get-fork-pr-contributor-approval-permissions-repository':
        actionsGetForkPrContributorApprovalPermissionsRepository,
    'actions/get-github-actions-default-workflow-permissions-organization':
        actionsGetGithubActionsDefaultWorkflowPermissionsOrganization,
    'actions/get-github-actions-default-workflow-permissions-repository':
        actionsGetGithubActionsDefaultWorkflowPermissionsRepository,
    'actions/get-github-actions-permissions-organization':
        actionsGetGithubActionsPermissionsOrganization,
    'actions/get-github-actions-permissions-repository':
        actionsGetGithubActionsPermissionsRepository,
    'actions/get-hosted-runner-for-org': actionsGetHostedRunnerForOrg,
    'actions/get-hosted-runners-github-owned-images-for-org':
        actionsGetHostedRunnersGithubOwnedImagesForOrg,
    'actions/get-hosted-runners-limits-for-org':
        actionsGetHostedRunnersLimitsForOrg,
    'actions/get-hosted-runners-machine-specs-for-org':
        actionsGetHostedRunnersMachineSpecsForOrg,
    'actions/get-hosted-runners-partner-images-for-org':
        actionsGetHostedRunnersPartnerImagesForOrg,
    'actions/get-hosted-runners-platforms-for-org':
        actionsGetHostedRunnersPlatformsForOrg,
    'actions/get-job-for-workflow-run': actionsGetJobForWorkflowRun,
    'actions/get-org-public-key': actionsGetOrgPublicKey,
    'actions/get-org-secret': actionsGetOrgSecret,
    'actions/get-org-variable': actionsGetOrgVariable,
    'actions/get-pending-deployments-for-run':
        actionsGetPendingDeploymentsForRun,
    'actions/get-private-repo-fork-pr-workflows-settings-organization':
        actionsGetPrivateRepoForkPrWorkflowsSettingsOrganization,
    'actions/get-private-repo-fork-pr-workflows-settings-repository':
        actionsGetPrivateRepoForkPrWorkflowsSettingsRepository,
    'actions/get-repo-public-key': actionsGetRepoPublicKey,
    'actions/get-repo-secret': actionsGetRepoSecret,
    'actions/get-repo-variable': actionsGetRepoVariable,
    'actions/get-reviews-for-run': actionsGetReviewsForRun,
    'actions/get-runner-version-deprecation-for-org':
        actionsGetRunnerVersionDeprecationForOrg,
    'actions/get-runner-version-deprecation-for-repo':
        actionsGetRunnerVersionDeprecationForRepo,
    'actions/get-self-hosted-runner-for-org': actionsGetSelfHostedRunnerForOrg,
    'actions/get-self-hosted-runner-for-repo':
        actionsGetSelfHostedRunnerForRepo,
    'actions/get-self-hosted-runner-group-for-org':
        actionsGetSelfHostedRunnerGroupForOrg,
    'actions/get-self-hosted-runners-permissions-organization':
        actionsGetSelfHostedRunnersPermissionsOrganization,
    'actions/get-workflow': actionsGetWorkflow,
    'actions/get-workflow-access-to-repository':
        actionsGetWorkflowAccessToRepository,
    'actions/get-workflow-run': actionsGetWorkflowRun,
    'actions/get-workflow-run-attempt': actionsGetWorkflowRunAttempt,
    'actions/get-workflow-run-usage': actionsGetWorkflowRunUsage,
    'actions/get-workflow-usage': actionsGetWorkflowUsage,
    'actions/list-artifacts-for-repo': actionsListArtifactsForRepo,
    'actions/list-concurrency-groups-for-repository':
        actionsListConcurrencyGroupsForRepository,
    'actions/list-concurrency-groups-for-workflow-run':
        actionsListConcurrencyGroupsForWorkflowRun,
    'actions/list-custom-image-versions-for-org':
        actionsListCustomImageVersionsForOrg,
    'actions/list-custom-images-for-org': actionsListCustomImagesForOrg,
    'actions/list-environment-secrets': actionsListEnvironmentSecrets,
    'actions/list-environment-variables': actionsListEnvironmentVariables,
    'actions/list-github-hosted-runners-in-group-for-org':
        actionsListGithubHostedRunnersInGroupForOrg,
    'actions/list-hosted-runners-for-org': actionsListHostedRunnersForOrg,
    'actions/list-jobs-for-workflow-run': actionsListJobsForWorkflowRun,
    'actions/list-jobs-for-workflow-run-attempt':
        actionsListJobsForWorkflowRunAttempt,
    'actions/list-labels-for-self-hosted-runner-for-org':
        actionsListLabelsForSelfHostedRunnerForOrg,
    'actions/list-labels-for-self-hosted-runner-for-repo':
        actionsListLabelsForSelfHostedRunnerForRepo,
    'actions/list-org-secrets': actionsListOrgSecrets,
    'actions/list-org-variables': actionsListOrgVariables,
    'actions/list-repo-access-to-self-hosted-runner-group-in-org':
        actionsListRepoAccessToSelfHostedRunnerGroupInOrg,
    'actions/list-repo-organization-secrets':
        actionsListRepoOrganizationSecrets,
    'actions/list-repo-organization-variables':
        actionsListRepoOrganizationVariables,
    'actions/list-repo-secrets': actionsListRepoSecrets,
    'actions/list-repo-variables': actionsListRepoVariables,
    'actions/list-repo-workflows': actionsListRepoWorkflows,
    'actions/list-runner-applications-for-org':
        actionsListRunnerApplicationsForOrg,
    'actions/list-runner-applications-for-repo':
        actionsListRunnerApplicationsForRepo,
    'actions/list-selected-repos-for-org-secret':
        actionsListSelectedReposForOrgSecret,
    'actions/list-selected-repos-for-org-variable':
        actionsListSelectedReposForOrgVariable,
    'actions/list-selected-repositories-enabled-github-actions-organization':
        actionsListSelectedRepositoriesEnabledGithubActionsOrganization,
    'actions/list-selected-repositories-self-hosted-runners-organization':
        actionsListSelectedRepositoriesSelfHostedRunnersOrganization,
    'actions/list-self-hosted-runner-groups-for-org':
        actionsListSelfHostedRunnerGroupsForOrg,
    'actions/list-self-hosted-runners-for-org':
        actionsListSelfHostedRunnersForOrg,
    'actions/list-self-hosted-runners-for-repo':
        actionsListSelfHostedRunnersForRepo,
    'actions/list-self-hosted-runners-in-group-for-org':
        actionsListSelfHostedRunnersInGroupForOrg,
    'actions/list-workflow-run-artifacts': actionsListWorkflowRunArtifacts,
    'actions/list-workflow-runs': actionsListWorkflowRuns,
    'actions/list-workflow-runs-for-repo': actionsListWorkflowRunsForRepo,
    'actions/re-run-job-for-workflow-run': actionsReRunJobForWorkflowRun,
    'actions/re-run-workflow': actionsReRunWorkflow,
    'actions/re-run-workflow-failed-jobs': actionsReRunWorkflowFailedJobs,
    'actions/remove-all-custom-labels-from-self-hosted-runner-for-org':
        actionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrg,
    'actions/remove-all-custom-labels-from-self-hosted-runner-for-repo':
        actionsRemoveAllCustomLabelsFromSelfHostedRunnerForRepo,
    'actions/remove-custom-label-from-self-hosted-runner-for-org':
        actionsRemoveCustomLabelFromSelfHostedRunnerForOrg,
    'actions/remove-custom-label-from-self-hosted-runner-for-repo':
        actionsRemoveCustomLabelFromSelfHostedRunnerForRepo,
    'actions/remove-repo-access-to-self-hosted-runner-group-in-org':
        actionsRemoveRepoAccessToSelfHostedRunnerGroupInOrg,
    'actions/remove-selected-repo-from-org-secret':
        actionsRemoveSelectedRepoFromOrgSecret,
    'actions/remove-selected-repo-from-org-variable':
        actionsRemoveSelectedRepoFromOrgVariable,
    'actions/remove-self-hosted-runner-from-group-for-org':
        actionsRemoveSelfHostedRunnerFromGroupForOrg,
    'actions/review-custom-gates-for-run': actionsReviewCustomGatesForRun,
    'actions/review-pending-deployments-for-run':
        actionsReviewPendingDeploymentsForRun,
    'actions/set-actions-cache-retention-limit-for-enterprise':
        actionsSetActionsCacheRetentionLimitForEnterprise,
    'actions/set-actions-cache-retention-limit-for-organization':
        actionsSetActionsCacheRetentionLimitForOrganization,
    'actions/set-actions-cache-retention-limit-for-repository':
        actionsSetActionsCacheRetentionLimitForRepository,
    'actions/set-actions-cache-storage-limit-for-enterprise':
        actionsSetActionsCacheStorageLimitForEnterprise,
    'actions/set-actions-cache-storage-limit-for-organization':
        actionsSetActionsCacheStorageLimitForOrganization,
    'actions/set-actions-cache-storage-limit-for-repository':
        actionsSetActionsCacheStorageLimitForRepository,
    'actions/set-allowed-actions-organization':
        actionsSetAllowedActionsOrganization,
    'actions/set-allowed-actions-repository':
        actionsSetAllowedActionsRepository,
    'actions/set-artifact-and-log-retention-settings-organization':
        actionsSetArtifactAndLogRetentionSettingsOrganization,
    'actions/set-artifact-and-log-retention-settings-repository':
        actionsSetArtifactAndLogRetentionSettingsRepository,
    'actions/set-custom-labels-for-self-hosted-runner-for-org':
        actionsSetCustomLabelsForSelfHostedRunnerForOrg,
    'actions/set-custom-labels-for-self-hosted-runner-for-repo':
        actionsSetCustomLabelsForSelfHostedRunnerForRepo,
    'actions/set-custom-oidc-sub-claim-for-repo':
        actionsSetCustomOidcSubClaimForRepo,
    'actions/set-fork-pr-contributor-approval-permissions-organization':
        actionsSetForkPrContributorApprovalPermissionsOrganization,
    'actions/set-fork-pr-contributor-approval-permissions-repository':
        actionsSetForkPrContributorApprovalPermissionsRepository,
    'actions/set-github-actions-default-workflow-permissions-organization':
        actionsSetGithubActionsDefaultWorkflowPermissionsOrganization,
    'actions/set-github-actions-default-workflow-permissions-repository':
        actionsSetGithubActionsDefaultWorkflowPermissionsRepository,
    'actions/set-github-actions-permissions-organization':
        actionsSetGithubActionsPermissionsOrganization,
    'actions/set-github-actions-permissions-repository':
        actionsSetGithubActionsPermissionsRepository,
    'actions/set-private-repo-fork-pr-workflows-settings-organization':
        actionsSetPrivateRepoForkPrWorkflowsSettingsOrganization,
    'actions/set-private-repo-fork-pr-workflows-settings-repository':
        actionsSetPrivateRepoForkPrWorkflowsSettingsRepository,
    'actions/set-repo-access-to-self-hosted-runner-group-in-org':
        actionsSetRepoAccessToSelfHostedRunnerGroupInOrg,
    'actions/set-selected-repos-for-org-secret':
        actionsSetSelectedReposForOrgSecret,
    'actions/set-selected-repos-for-org-variable':
        actionsSetSelectedReposForOrgVariable,
    'actions/set-selected-repositories-enabled-github-actions-organization':
        actionsSetSelectedRepositoriesEnabledGithubActionsOrganization,
    'actions/set-selected-repositories-self-hosted-runners-organization':
        actionsSetSelectedRepositoriesSelfHostedRunnersOrganization,
    'actions/set-self-hosted-runners-in-group-for-org':
        actionsSetSelfHostedRunnersInGroupForOrg,
    'actions/set-self-hosted-runners-permissions-organization':
        actionsSetSelfHostedRunnersPermissionsOrganization,
    'actions/set-workflow-access-to-repository':
        actionsSetWorkflowAccessToRepository,
    'actions/update-environment-variable': actionsUpdateEnvironmentVariable,
    'actions/update-hosted-runner-for-org': actionsUpdateHostedRunnerForOrg,
    'actions/update-org-variable': actionsUpdateOrgVariable,
    'actions/update-repo-variable': actionsUpdateRepoVariable,
    'actions/update-self-hosted-runner-group-for-org':
        actionsUpdateSelfHostedRunnerGroupForOrg,
    'activity/check-repo-is-starred-by-authenticated-user':
        activityCheckRepoIsStarredByAuthenticatedUser,
    'activity/delete-repo-subscription': activityDeleteRepoSubscription,
    'activity/delete-thread-subscription': activityDeleteThreadSubscription,
    'activity/get-feeds': activityGetFeeds,
    'activity/get-repo-subscription': activityGetRepoSubscription,
    'activity/get-stargazer-count-for-repo': activityGetStargazerCountForRepo,
    'activity/get-stargazer-history-for-repo':
        activityGetStargazerHistoryForRepo,
    'activity/get-thread': activityGetThread,
    'activity/get-thread-subscription-for-authenticated-user':
        activityGetThreadSubscriptionForAuthenticatedUser,
    'activity/list-events-for-authenticated-user':
        activityListEventsForAuthenticatedUser,
    'activity/list-notifications-for-authenticated-user':
        activityListNotificationsForAuthenticatedUser,
    'activity/list-org-events-for-authenticated-user':
        activityListOrgEventsForAuthenticatedUser,
    'activity/list-public-events': activityListPublicEvents,
    'activity/list-public-events-for-repo-network':
        activityListPublicEventsForRepoNetwork,
    'activity/list-public-events-for-user': activityListPublicEventsForUser,
    'activity/list-public-org-events': activityListPublicOrgEvents,
    'activity/list-received-events-for-user': activityListReceivedEventsForUser,
    'activity/list-received-public-events-for-user':
        activityListReceivedPublicEventsForUser,
    'activity/list-repo-events': activityListRepoEvents,
    'activity/list-repo-notifications-for-authenticated-user':
        activityListRepoNotificationsForAuthenticatedUser,
    'activity/list-repos-starred-by-authenticated-user':
        activityListReposStarredByAuthenticatedUser,
    'activity/list-repos-starred-by-user': activityListReposStarredByUser,
    'activity/list-repos-watched-by-user': activityListReposWatchedByUser,
    'activity/list-stargazers-for-repo': activityListStargazersForRepo,
    'activity/list-watched-repos-for-authenticated-user':
        activityListWatchedReposForAuthenticatedUser,
    'activity/list-watchers-for-repo': activityListWatchersForRepo,
    'activity/mark-notifications-as-read': activityMarkNotificationsAsRead,
    'activity/mark-repo-notifications-as-read':
        activityMarkRepoNotificationsAsRead,
    'activity/mark-thread-as-done': activityMarkThreadAsDone,
    'activity/mark-thread-as-read': activityMarkThreadAsRead,
    'activity/set-repo-subscription': activitySetRepoSubscription,
    'activity/set-thread-subscription': activitySetThreadSubscription,
    'activity/star-repo-for-authenticated-user':
        activityStarRepoForAuthenticatedUser,
    'activity/unstar-repo-for-authenticated-user':
        activityUnstarRepoForAuthenticatedUser,
    'agent-tasks/create-task-in-repo': agentTasksCreateTaskInRepo,
    'agent-tasks/get-task-by-id': agentTasksGetTaskById,
    'agent-tasks/get-task-by-repo-and-id': agentTasksGetTaskByRepoAndId,
    'agent-tasks/list-tasks': agentTasksListTasks,
    'agent-tasks/list-tasks-for-repo': agentTasksListTasksForRepo,
    'agents/add-selected-repo-to-org-secret': agentsAddSelectedRepoToOrgSecret,
    'agents/add-selected-repo-to-org-variable':
        agentsAddSelectedRepoToOrgVariable,
    'agents/create-or-update-org-secret': agentsCreateOrUpdateOrgSecret,
    'agents/create-or-update-repo-secret': agentsCreateOrUpdateRepoSecret,
    'agents/create-org-variable': agentsCreateOrgVariable,
    'agents/create-repo-variable': agentsCreateRepoVariable,
    'agents/delete-org-secret': agentsDeleteOrgSecret,
    'agents/delete-org-variable': agentsDeleteOrgVariable,
    'agents/delete-repo-secret': agentsDeleteRepoSecret,
    'agents/delete-repo-variable': agentsDeleteRepoVariable,
    'agents/get-org-public-key': agentsGetOrgPublicKey,
    'agents/get-org-secret': agentsGetOrgSecret,
    'agents/get-org-variable': agentsGetOrgVariable,
    'agents/get-repo-public-key': agentsGetRepoPublicKey,
    'agents/get-repo-secret': agentsGetRepoSecret,
    'agents/get-repo-variable': agentsGetRepoVariable,
    'agents/list-org-secrets': agentsListOrgSecrets,
    'agents/list-org-variables': agentsListOrgVariables,
    'agents/list-repo-organization-secrets': agentsListRepoOrganizationSecrets,
    'agents/list-repo-organization-variables':
        agentsListRepoOrganizationVariables,
    'agents/list-repo-secrets': agentsListRepoSecrets,
    'agents/list-repo-variables': agentsListRepoVariables,
    'agents/list-selected-repos-for-org-secret':
        agentsListSelectedReposForOrgSecret,
    'agents/list-selected-repos-for-org-variable':
        agentsListSelectedReposForOrgVariable,
    'agents/remove-selected-repo-from-org-secret':
        agentsRemoveSelectedRepoFromOrgSecret,
    'agents/remove-selected-repo-from-org-variable':
        agentsRemoveSelectedRepoFromOrgVariable,
    'agents/set-selected-repos-for-org-secret':
        agentsSetSelectedReposForOrgSecret,
    'agents/set-selected-repos-for-org-variable':
        agentsSetSelectedReposForOrgVariable,
    'agents/update-org-variable': agentsUpdateOrgVariable,
    'agents/update-repo-variable': agentsUpdateRepoVariable,
    'api-insights/get-route-stats-by-actor': apiInsightsGetRouteStatsByActor,
    'api-insights/get-subject-stats': apiInsightsGetSubjectStats,
    'api-insights/get-summary-stats': apiInsightsGetSummaryStats,
    'api-insights/get-summary-stats-by-actor':
        apiInsightsGetSummaryStatsByActor,
    'api-insights/get-summary-stats-by-user': apiInsightsGetSummaryStatsByUser,
    'api-insights/get-time-stats': apiInsightsGetTimeStats,
    'api-insights/get-time-stats-by-actor': apiInsightsGetTimeStatsByActor,
    'api-insights/get-time-stats-by-user': apiInsightsGetTimeStatsByUser,
    'api-insights/get-user-stats': apiInsightsGetUserStats,
    'apps/add-repo-to-installation-for-authenticated-user':
        appsAddRepoToInstallationForAuthenticatedUser,
    'apps/check-token': appsCheckToken,
    'apps/create-from-manifest': appsCreateFromManifest,
    'apps/create-installation-access-token': appsCreateInstallationAccessToken,
    'apps/delete-authorization': appsDeleteAuthorization,
    'apps/delete-installation': appsDeleteInstallation,
    'apps/delete-token': appsDeleteToken,
    'apps/get-authenticated': appsGetAuthenticated,
    'apps/get-by-slug': appsGetBySlug,
    'apps/get-installation': appsGetInstallation,
    'apps/get-org-installation': appsGetOrgInstallation,
    'apps/get-repo-installation': appsGetRepoInstallation,
    'apps/get-subscription-plan-for-account': appsGetSubscriptionPlanForAccount,
    'apps/get-subscription-plan-for-account-stubbed':
        appsGetSubscriptionPlanForAccountStubbed,
    'apps/get-user-installation': appsGetUserInstallation,
    'apps/get-webhook-config-for-app': appsGetWebhookConfigForApp,
    'apps/get-webhook-delivery': appsGetWebhookDelivery,
    'apps/list-accounts-for-plan': appsListAccountsForPlan,
    'apps/list-accounts-for-plan-stubbed': appsListAccountsForPlanStubbed,
    'apps/list-installation-repos-for-authenticated-user':
        appsListInstallationReposForAuthenticatedUser,
    'apps/list-installation-requests-for-authenticated-app':
        appsListInstallationRequestsForAuthenticatedApp,
    'apps/list-installations': appsListInstallations,
    'apps/list-installations-for-authenticated-user':
        appsListInstallationsForAuthenticatedUser,
    'apps/list-plans': appsListPlans,
    'apps/list-plans-stubbed': appsListPlansStubbed,
    'apps/list-repos-accessible-to-installation':
        appsListReposAccessibleToInstallation,
    'apps/list-subscriptions-for-authenticated-user':
        appsListSubscriptionsForAuthenticatedUser,
    'apps/list-subscriptions-for-authenticated-user-stubbed':
        appsListSubscriptionsForAuthenticatedUserStubbed,
    'apps/list-webhook-deliveries': appsListWebhookDeliveries,
    'apps/redeliver-webhook-delivery': appsRedeliverWebhookDelivery,
    'apps/remove-repo-from-installation-for-authenticated-user':
        appsRemoveRepoFromInstallationForAuthenticatedUser,
    'apps/reset-token': appsResetToken,
    'apps/revoke-installation-access-token': appsRevokeInstallationAccessToken,
    'apps/scope-token': appsScopeToken,
    'apps/suspend-installation': appsSuspendInstallation,
    'apps/unsuspend-installation': appsUnsuspendInstallation,
    'apps/update-webhook-config-for-app': appsUpdateWebhookConfigForApp,
    'billing/create-organization-budget': billingCreateOrganizationBudget,
    'billing/delete-budget-org': billingDeleteBudgetOrg,
    'billing/get-all-budgets-org': billingGetAllBudgetsOrg,
    'billing/get-budget-org': billingGetBudgetOrg,
    'billing/get-github-billing-ai-credit-usage-report-org':
        billingGetGithubBillingAiCreditUsageReportOrg,
    'billing/get-github-billing-ai-credit-usage-report-user':
        billingGetGithubBillingAiCreditUsageReportUser,
    'billing/get-github-billing-premium-request-usage-report-org':
        billingGetGithubBillingPremiumRequestUsageReportOrg,
    'billing/get-github-billing-premium-request-usage-report-user':
        billingGetGithubBillingPremiumRequestUsageReportUser,
    'billing/get-github-billing-usage-report-org':
        billingGetGithubBillingUsageReportOrg,
    'billing/get-github-billing-usage-report-user':
        billingGetGithubBillingUsageReportUser,
    'billing/get-github-billing-usage-summary-report-org':
        billingGetGithubBillingUsageSummaryReportOrg,
    'billing/get-github-billing-usage-summary-report-user':
        billingGetGithubBillingUsageSummaryReportUser,
    'billing/update-budget-org': billingUpdateBudgetOrg,
    'campaigns/create-campaign': campaignsCreateCampaign,
    'campaigns/delete-campaign': campaignsDeleteCampaign,
    'campaigns/get-campaign-summary': campaignsGetCampaignSummary,
    'campaigns/list-org-campaigns': campaignsListOrgCampaigns,
    'campaigns/update-campaign': campaignsUpdateCampaign,
    'checks/create': checksCreate,
    'checks/create-suite': checksCreateSuite,
    'checks/get': checksGet,
    'checks/get-suite': checksGetSuite,
    'checks/list-annotations': checksListAnnotations,
    'checks/list-for-ref': checksListForRef,
    'checks/list-for-suite': checksListForSuite,
    'checks/list-suites-for-ref': checksListSuitesForRef,
    'checks/rerequest-run': checksRerequestRun,
    'checks/rerequest-suite': checksRerequestSuite,
    'checks/set-suites-preferences': checksSetSuitesPreferences,
    'checks/update': checksUpdate,
    'classroom/get-a-classroom': classroomGetAClassroom,
    'classroom/get-an-assignment': classroomGetAnAssignment,
    'classroom/get-assignment-grades': classroomGetAssignmentGrades,
    'classroom/list-accepted-assignments-for-an-assignment':
        classroomListAcceptedAssignmentsForAnAssignment,
    'classroom/list-assignments-for-a-classroom':
        classroomListAssignmentsForAClassroom,
    'classroom/list-classrooms': classroomListClassrooms,
    'code-quality/get-finding': codeQualityGetFinding,
    'code-quality/get-setup': codeQualityGetSetup,
    'code-quality/list-findings-for-repo': codeQualityListFindingsForRepo,
    'code-quality/update-setup': codeQualityUpdateSetup,
    'code-scanning/commit-autofix': codeScanningCommitAutofix,
    'code-scanning/create-autofix': codeScanningCreateAutofix,
    'code-scanning/create-variant-analysis': codeScanningCreateVariantAnalysis,
    'code-scanning/delete-analysis': codeScanningDeleteAnalysis,
    'code-scanning/delete-codeql-database': codeScanningDeleteCodeqlDatabase,
    'code-scanning/get-ai-scan-enablement': codeScanningGetAiScanEnablement,
    'code-scanning/get-ai-scan-enablement-for-org':
        codeScanningGetAiScanEnablementForOrg,
    'code-scanning/get-alert': codeScanningGetAlert,
    'code-scanning/get-analysis': codeScanningGetAnalysis,
    'code-scanning/get-autofix': codeScanningGetAutofix,
    'code-scanning/get-codeql-database': codeScanningGetCodeqlDatabase,
    'code-scanning/get-default-setup': codeScanningGetDefaultSetup,
    'code-scanning/get-sarif': codeScanningGetSarif,
    'code-scanning/get-variant-analysis': codeScanningGetVariantAnalysis,
    'code-scanning/get-variant-analysis-repo-task':
        codeScanningGetVariantAnalysisRepoTask,
    'code-scanning/list-alert-instances': codeScanningListAlertInstances,
    'code-scanning/list-alerts-for-org': codeScanningListAlertsForOrg,
    'code-scanning/list-alerts-for-repo': codeScanningListAlertsForRepo,
    'code-scanning/list-codeql-databases': codeScanningListCodeqlDatabases,
    'code-scanning/list-recent-analyses': codeScanningListRecentAnalyses,
    'code-scanning/update-ai-scan-enablement':
        codeScanningUpdateAiScanEnablement,
    'code-scanning/update-ai-scan-enablement-for-org':
        codeScanningUpdateAiScanEnablementForOrg,
    'code-scanning/update-alert': codeScanningUpdateAlert,
    'code-scanning/update-default-setup': codeScanningUpdateDefaultSetup,
    'code-scanning/upload-sarif': codeScanningUploadSarif,
    'code-security/attach-configuration': codeSecurityAttachConfiguration,
    'code-security/attach-enterprise-configuration':
        codeSecurityAttachEnterpriseConfiguration,
    'code-security/create-configuration': codeSecurityCreateConfiguration,
    'code-security/create-configuration-for-enterprise':
        codeSecurityCreateConfigurationForEnterprise,
    'code-security/delete-configuration': codeSecurityDeleteConfiguration,
    'code-security/delete-configuration-for-enterprise':
        codeSecurityDeleteConfigurationForEnterprise,
    'code-security/detach-configuration': codeSecurityDetachConfiguration,
    'code-security/get-configuration': codeSecurityGetConfiguration,
    'code-security/get-configuration-for-repository':
        codeSecurityGetConfigurationForRepository,
    'code-security/get-configurations-for-enterprise':
        codeSecurityGetConfigurationsForEnterprise,
    'code-security/get-configurations-for-org':
        codeSecurityGetConfigurationsForOrg,
    'code-security/get-default-configurations':
        codeSecurityGetDefaultConfigurations,
    'code-security/get-default-configurations-for-enterprise':
        codeSecurityGetDefaultConfigurationsForEnterprise,
    'code-security/get-repositories-for-configuration':
        codeSecurityGetRepositoriesForConfiguration,
    'code-security/get-repositories-for-enterprise-configuration':
        codeSecurityGetRepositoriesForEnterpriseConfiguration,
    'code-security/get-single-configuration-for-enterprise':
        codeSecurityGetSingleConfigurationForEnterprise,
    'code-security/set-configuration-as-default':
        codeSecuritySetConfigurationAsDefault,
    'code-security/set-configuration-as-default-for-enterprise':
        codeSecuritySetConfigurationAsDefaultForEnterprise,
    'code-security/update-configuration': codeSecurityUpdateConfiguration,
    'code-security/update-enterprise-configuration':
        codeSecurityUpdateEnterpriseConfiguration,
    'codes-of-conduct/get-all-codes-of-conduct':
        codesOfConductGetAllCodesOfConduct,
    'codes-of-conduct/get-conduct-code': codesOfConductGetConductCode,
    'codespaces/add-repository-for-secret-for-authenticated-user':
        codespacesAddRepositoryForSecretForAuthenticatedUser,
    'codespaces/add-selected-repo-to-org-secret':
        codespacesAddSelectedRepoToOrgSecret,
    'codespaces/check-permissions-for-devcontainer':
        codespacesCheckPermissionsForDevcontainer,
    'codespaces/codespace-machines-for-authenticated-user':
        codespacesCodespaceMachinesForAuthenticatedUser,
    'codespaces/create-for-authenticated-user':
        codespacesCreateForAuthenticatedUser,
    'codespaces/create-or-update-org-secret': codespacesCreateOrUpdateOrgSecret,
    'codespaces/create-or-update-repo-secret':
        codespacesCreateOrUpdateRepoSecret,
    'codespaces/create-or-update-secret-for-authenticated-user':
        codespacesCreateOrUpdateSecretForAuthenticatedUser,
    'codespaces/create-with-pr-for-authenticated-user':
        codespacesCreateWithPrForAuthenticatedUser,
    'codespaces/create-with-repo-for-authenticated-user':
        codespacesCreateWithRepoForAuthenticatedUser,
    'codespaces/delete-codespaces-access-users':
        codespacesDeleteCodespacesAccessUsers,
    'codespaces/delete-for-authenticated-user':
        codespacesDeleteForAuthenticatedUser,
    'codespaces/delete-from-organization': codespacesDeleteFromOrganization,
    'codespaces/delete-org-secret': codespacesDeleteOrgSecret,
    'codespaces/delete-repo-secret': codespacesDeleteRepoSecret,
    'codespaces/delete-secret-for-authenticated-user':
        codespacesDeleteSecretForAuthenticatedUser,
    'codespaces/export-for-authenticated-user':
        codespacesExportForAuthenticatedUser,
    'codespaces/get-codespaces-for-user-in-org':
        codespacesGetCodespacesForUserInOrg,
    'codespaces/get-export-details-for-authenticated-user':
        codespacesGetExportDetailsForAuthenticatedUser,
    'codespaces/get-for-authenticated-user': codespacesGetForAuthenticatedUser,
    'codespaces/get-org-public-key': codespacesGetOrgPublicKey,
    'codespaces/get-org-secret': codespacesGetOrgSecret,
    'codespaces/get-public-key-for-authenticated-user':
        codespacesGetPublicKeyForAuthenticatedUser,
    'codespaces/get-repo-public-key': codespacesGetRepoPublicKey,
    'codespaces/get-repo-secret': codespacesGetRepoSecret,
    'codespaces/get-secret-for-authenticated-user':
        codespacesGetSecretForAuthenticatedUser,
    'codespaces/list-devcontainers-in-repository-for-authenticated-user':
        codespacesListDevcontainersInRepositoryForAuthenticatedUser,
    'codespaces/list-for-authenticated-user':
        codespacesListForAuthenticatedUser,
    'codespaces/list-in-organization': codespacesListInOrganization,
    'codespaces/list-in-repository-for-authenticated-user':
        codespacesListInRepositoryForAuthenticatedUser,
    'codespaces/list-org-secrets': codespacesListOrgSecrets,
    'codespaces/list-repo-secrets': codespacesListRepoSecrets,
    'codespaces/list-repositories-for-secret-for-authenticated-user':
        codespacesListRepositoriesForSecretForAuthenticatedUser,
    'codespaces/list-secrets-for-authenticated-user':
        codespacesListSecretsForAuthenticatedUser,
    'codespaces/list-selected-repos-for-org-secret':
        codespacesListSelectedReposForOrgSecret,
    'codespaces/pre-flight-with-repo-for-authenticated-user':
        codespacesPreFlightWithRepoForAuthenticatedUser,
    'codespaces/publish-for-authenticated-user':
        codespacesPublishForAuthenticatedUser,
    'codespaces/remove-repository-for-secret-for-authenticated-user':
        codespacesRemoveRepositoryForSecretForAuthenticatedUser,
    'codespaces/remove-selected-repo-from-org-secret':
        codespacesRemoveSelectedRepoFromOrgSecret,
    'codespaces/repo-machines-for-authenticated-user':
        codespacesRepoMachinesForAuthenticatedUser,
    'codespaces/set-codespaces-access': codespacesSetCodespacesAccess,
    'codespaces/set-codespaces-access-users':
        codespacesSetCodespacesAccessUsers,
    'codespaces/set-repositories-for-secret-for-authenticated-user':
        codespacesSetRepositoriesForSecretForAuthenticatedUser,
    'codespaces/set-selected-repos-for-org-secret':
        codespacesSetSelectedReposForOrgSecret,
    'codespaces/start-for-authenticated-user':
        codespacesStartForAuthenticatedUser,
    'codespaces/stop-for-authenticated-user':
        codespacesStopForAuthenticatedUser,
    'codespaces/stop-in-organization': codespacesStopInOrganization,
    'codespaces/update-for-authenticated-user':
        codespacesUpdateForAuthenticatedUser,
    'copilot-spaces/add-collaborator-for-org':
        copilotSpacesAddCollaboratorForOrg,
    'copilot-spaces/add-collaborator-for-user':
        copilotSpacesAddCollaboratorForUser,
    'copilot-spaces/create-for-org': copilotSpacesCreateForOrg,
    'copilot-spaces/create-for-user': copilotSpacesCreateForUser,
    'copilot-spaces/create-resource-for-org': copilotSpacesCreateResourceForOrg,
    'copilot-spaces/create-resource-for-user':
        copilotSpacesCreateResourceForUser,
    'copilot-spaces/delete-for-org': copilotSpacesDeleteForOrg,
    'copilot-spaces/delete-for-user': copilotSpacesDeleteForUser,
    'copilot-spaces/delete-resource-for-org': copilotSpacesDeleteResourceForOrg,
    'copilot-spaces/delete-resource-for-user':
        copilotSpacesDeleteResourceForUser,
    'copilot-spaces/get-for-org': copilotSpacesGetForOrg,
    'copilot-spaces/get-for-user': copilotSpacesGetForUser,
    'copilot-spaces/get-resource-for-org': copilotSpacesGetResourceForOrg,
    'copilot-spaces/get-resource-for-user': copilotSpacesGetResourceForUser,
    'copilot-spaces/list-collaborators-for-org':
        copilotSpacesListCollaboratorsForOrg,
    'copilot-spaces/list-collaborators-for-user':
        copilotSpacesListCollaboratorsForUser,
    'copilot-spaces/list-for-org': copilotSpacesListForOrg,
    'copilot-spaces/list-for-user': copilotSpacesListForUser,
    'copilot-spaces/list-resources-for-org': copilotSpacesListResourcesForOrg,
    'copilot-spaces/list-resources-for-user': copilotSpacesListResourcesForUser,
    'copilot-spaces/remove-collaborator-for-org':
        copilotSpacesRemoveCollaboratorForOrg,
    'copilot-spaces/remove-collaborator-for-user':
        copilotSpacesRemoveCollaboratorForUser,
    'copilot-spaces/update-collaborator-for-org':
        copilotSpacesUpdateCollaboratorForOrg,
    'copilot-spaces/update-collaborator-for-user':
        copilotSpacesUpdateCollaboratorForUser,
    'copilot-spaces/update-for-org': copilotSpacesUpdateForOrg,
    'copilot-spaces/update-for-user': copilotSpacesUpdateForUser,
    'copilot-spaces/update-resource-for-org': copilotSpacesUpdateResourceForOrg,
    'copilot-spaces/update-resource-for-user':
        copilotSpacesUpdateResourceForUser,
    'copilot/add-copilot-seats-for-teams': copilotAddCopilotSeatsForTeams,
    'copilot/add-copilot-seats-for-users': copilotAddCopilotSeatsForUsers,
    'copilot/add-organizations-to-enterprise-coding-agent-policy':
        copilotAddOrganizationsToEnterpriseCodingAgentPolicy,
    'copilot/cancel-copilot-seat-assignment-for-teams':
        copilotCancelCopilotSeatAssignmentForTeams,
    'copilot/cancel-copilot-seat-assignment-for-users':
        copilotCancelCopilotSeatAssignmentForUsers,
    'copilot/copilot-content-exclusion-for-organization':
        copilotCopilotContentExclusionForOrganization,
    'copilot/copilot-enterprise-one-day-usage-metrics':
        copilotCopilotEnterpriseOneDayUsageMetrics,
    'copilot/copilot-enterprise-repos-one-day-report':
        copilotCopilotEnterpriseReposOneDayReport,
    'copilot/copilot-enterprise-usage-metrics':
        copilotCopilotEnterpriseUsageMetrics,
    'copilot/copilot-enterprise-user-teams-one-day-report':
        copilotCopilotEnterpriseUserTeamsOneDayReport,
    'copilot/copilot-organization-one-day-usage-metrics':
        copilotCopilotOrganizationOneDayUsageMetrics,
    'copilot/copilot-organization-repos-one-day-report':
        copilotCopilotOrganizationReposOneDayReport,
    'copilot/copilot-organization-usage-metrics':
        copilotCopilotOrganizationUsageMetrics,
    'copilot/copilot-organization-user-teams-one-day-report':
        copilotCopilotOrganizationUserTeamsOneDayReport,
    'copilot/copilot-organization-users-one-day-usage-metrics':
        copilotCopilotOrganizationUsersOneDayUsageMetrics,
    'copilot/copilot-organization-users-usage-metrics':
        copilotCopilotOrganizationUsersUsageMetrics,
    'copilot/copilot-users-one-day-usage-metrics':
        copilotCopilotUsersOneDayUsageMetrics,
    'copilot/copilot-users-usage-metrics': copilotCopilotUsersUsageMetrics,
    'copilot/disable-copilot-coding-agent-for-repository-in-organization':
        copilotDisableCopilotCodingAgentForRepositoryInOrganization,
    'copilot/enable-copilot-coding-agent-for-repository-in-organization':
        copilotEnableCopilotCodingAgentForRepositoryInOrganization,
    'copilot/get-copilot-cloud-agent-configuration':
        copilotGetCopilotCloudAgentConfiguration,
    'copilot/get-copilot-coding-agent-permissions-organization':
        copilotGetCopilotCodingAgentPermissionsOrganization,
    'copilot/get-copilot-organization-details':
        copilotGetCopilotOrganizationDetails,
    'copilot/get-copilot-seat-details-for-user':
        copilotGetCopilotSeatDetailsForUser,
    'copilot/list-copilot-coding-agent-selected-repositories-for-organization':
        copilotListCopilotCodingAgentSelectedRepositoriesForOrganization,
    'copilot/list-copilot-seats': copilotListCopilotSeats,
    'copilot/remove-organizations-from-enterprise-coding-agent-policy':
        copilotRemoveOrganizationsFromEnterpriseCodingAgentPolicy,
    'copilot/set-copilot-coding-agent-permissions-organization':
        copilotSetCopilotCodingAgentPermissionsOrganization,
    'copilot/set-copilot-coding-agent-selected-repositories-for-organization':
        copilotSetCopilotCodingAgentSelectedRepositoriesForOrganization,
    'copilot/set-copilot-content-exclusion-for-organization':
        copilotSetCopilotContentExclusionForOrganization,
    'copilot/set-enterprise-coding-agent-policy':
        copilotSetEnterpriseCodingAgentPolicy,
    'credentials/revoke': credentialsRevoke,
    'dependabot/add-selected-repo-to-org-secret':
        dependabotAddSelectedRepoToOrgSecret,
    'dependabot/create-or-update-org-secret': dependabotCreateOrUpdateOrgSecret,
    'dependabot/create-or-update-repo-secret':
        dependabotCreateOrUpdateRepoSecret,
    'dependabot/delete-org-secret': dependabotDeleteOrgSecret,
    'dependabot/delete-repo-secret': dependabotDeleteRepoSecret,
    'dependabot/get-alert': dependabotGetAlert,
    'dependabot/get-org-public-key': dependabotGetOrgPublicKey,
    'dependabot/get-org-secret': dependabotGetOrgSecret,
    'dependabot/get-repo-public-key': dependabotGetRepoPublicKey,
    'dependabot/get-repo-secret': dependabotGetRepoSecret,
    'dependabot/list-alerts-for-enterprise': dependabotListAlertsForEnterprise,
    'dependabot/list-alerts-for-org': dependabotListAlertsForOrg,
    'dependabot/list-alerts-for-repo': dependabotListAlertsForRepo,
    'dependabot/list-org-secrets': dependabotListOrgSecrets,
    'dependabot/list-repo-secrets': dependabotListRepoSecrets,
    'dependabot/list-selected-repos-for-org-secret':
        dependabotListSelectedReposForOrgSecret,
    'dependabot/remove-selected-repo-from-org-secret':
        dependabotRemoveSelectedRepoFromOrgSecret,
    'dependabot/repository-access-for-enterprise':
        dependabotRepositoryAccessForEnterprise,
    'dependabot/repository-access-for-org': dependabotRepositoryAccessForOrg,
    'dependabot/set-repository-access-default-level':
        dependabotSetRepositoryAccessDefaultLevel,
    'dependabot/set-repository-access-default-level-for-enterprise':
        dependabotSetRepositoryAccessDefaultLevelForEnterprise,
    'dependabot/set-selected-repos-for-org-secret':
        dependabotSetSelectedReposForOrgSecret,
    'dependabot/update-alert': dependabotUpdateAlert,
    'dependabot/update-repository-access-for-enterprise':
        dependabotUpdateRepositoryAccessForEnterprise,
    'dependabot/update-repository-access-for-org':
        dependabotUpdateRepositoryAccessForOrg,
    'dependency-graph/create-repository-snapshot':
        dependencyGraphCreateRepositorySnapshot,
    'dependency-graph/diff-range': dependencyGraphDiffRange,
    'dependency-graph/export-sbom': dependencyGraphExportSbom,
    'dependency-graph/fetch-sbom-report': dependencyGraphFetchSbomReport,
    'dependency-graph/generate-sbom-report': dependencyGraphGenerateSbomReport,
    'emojis/get': emojisGet,
    'enterprise-team-memberships/add': enterpriseTeamMembershipsAdd,
    'enterprise-team-memberships/bulk-add': enterpriseTeamMembershipsBulkAdd,
    'enterprise-team-memberships/bulk-remove':
        enterpriseTeamMembershipsBulkRemove,
    'enterprise-team-memberships/get': enterpriseTeamMembershipsGet,
    'enterprise-team-memberships/list': enterpriseTeamMembershipsList,
    'enterprise-team-memberships/list-teams-for-user':
        enterpriseTeamMembershipsListTeamsForUser,
    'enterprise-team-memberships/remove': enterpriseTeamMembershipsRemove,
    'enterprise-team-organizations/add': enterpriseTeamOrganizationsAdd,
    'enterprise-team-organizations/bulk-add':
        enterpriseTeamOrganizationsBulkAdd,
    'enterprise-team-organizations/bulk-remove':
        enterpriseTeamOrganizationsBulkRemove,
    'enterprise-team-organizations/delete': enterpriseTeamOrganizationsDelete,
    'enterprise-team-organizations/get-assignment':
        enterpriseTeamOrganizationsGetAssignment,
    'enterprise-team-organizations/get-assignments':
        enterpriseTeamOrganizationsGetAssignments,
    'enterprise-teams/create': enterpriseTeamsCreate,
    'enterprise-teams/delete': enterpriseTeamsDelete,
    'enterprise-teams/get': enterpriseTeamsGet,
    'enterprise-teams/list': enterpriseTeamsList,
    'enterprise-teams/update': enterpriseTeamsUpdate,
    'gists/check-is-starred': gistsCheckIsStarred,
    'gists/create': gistsCreate,
    'gists/create-comment': gistsCreateComment,
    'gists/delete': gistsDelete,
    'gists/delete-comment': gistsDeleteComment,
    'gists/fork': gistsFork,
    'gists/get': gistsGet,
    'gists/get-comment': gistsGetComment,
    'gists/get-revision': gistsGetRevision,
    'gists/list': gistsList,
    'gists/list-comments': gistsListComments,
    'gists/list-commits': gistsListCommits,
    'gists/list-for-user': gistsListForUser,
    'gists/list-forks': gistsListForks,
    'gists/list-public': gistsListPublic,
    'gists/list-starred': gistsListStarred,
    'gists/star': gistsStar,
    'gists/unstar': gistsUnstar,
    'gists/update': gistsUpdate,
    'gists/update-comment': gistsUpdateComment,
    'git/create-blob': gitCreateBlob,
    'git/create-commit': gitCreateCommit,
    'git/create-ref': gitCreateRef,
    'git/create-tag': gitCreateTag,
    'git/create-tree': gitCreateTree,
    'git/delete-ref': gitDeleteRef,
    'git/get-blob': gitGetBlob,
    'git/get-commit': gitGetCommit,
    'git/get-ref': gitGetRef,
    'git/get-tag': gitGetTag,
    'git/get-tree': gitGetTree,
    'git/list-matching-refs': gitListMatchingRefs,
    'git/update-ref': gitUpdateRef,
    'gitignore/get-all-templates': gitignoreGetAllTemplates,
    'gitignore/get-template': gitignoreGetTemplate,
    'hosted-compute/create-network-configuration-for-org':
        hostedComputeCreateNetworkConfigurationForOrg,
    'hosted-compute/delete-network-configuration-from-org':
        hostedComputeDeleteNetworkConfigurationFromOrg,
    'hosted-compute/get-network-configuration-for-org':
        hostedComputeGetNetworkConfigurationForOrg,
    'hosted-compute/get-network-settings-for-org':
        hostedComputeGetNetworkSettingsForOrg,
    'hosted-compute/list-network-configurations-for-org':
        hostedComputeListNetworkConfigurationsForOrg,
    'hosted-compute/update-network-configuration-for-org':
        hostedComputeUpdateNetworkConfigurationForOrg,
    'interactions/get-pull-request-bypass-list-for-repo':
        interactionsGetPullRequestBypassListForRepo,
    'interactions/get-pull-request-creation-cap-for-org':
        interactionsGetPullRequestCreationCapForOrg,
    'interactions/get-pull-request-creation-cap-for-repo':
        interactionsGetPullRequestCreationCapForRepo,
    'interactions/get-restrictions-for-authenticated-user':
        interactionsGetRestrictionsForAuthenticatedUser,
    'interactions/get-restrictions-for-org': interactionsGetRestrictionsForOrg,
    'interactions/get-restrictions-for-repo':
        interactionsGetRestrictionsForRepo,
    'interactions/remove-pull-request-bypass-list-for-repo':
        interactionsRemovePullRequestBypassListForRepo,
    'interactions/remove-restrictions-for-authenticated-user':
        interactionsRemoveRestrictionsForAuthenticatedUser,
    'interactions/remove-restrictions-for-org':
        interactionsRemoveRestrictionsForOrg,
    'interactions/remove-restrictions-for-repo':
        interactionsRemoveRestrictionsForRepo,
    'interactions/set-pull-request-bypass-list-for-repo':
        interactionsSetPullRequestBypassListForRepo,
    'interactions/set-restrictions-for-authenticated-user':
        interactionsSetRestrictionsForAuthenticatedUser,
    'interactions/set-restrictions-for-org': interactionsSetRestrictionsForOrg,
    'interactions/set-restrictions-for-repo':
        interactionsSetRestrictionsForRepo,
    'interactions/update-pull-request-creation-cap-for-org':
        interactionsUpdatePullRequestCreationCapForOrg,
    'interactions/update-pull-request-creation-cap-for-repo':
        interactionsUpdatePullRequestCreationCapForRepo,
    'issues/add-assignees': issuesAddAssignees,
    'issues/add-blocked-by-dependency': issuesAddBlockedByDependency,
    'issues/add-issue-field-values': issuesAddIssueFieldValues,
    'issues/add-labels': issuesAddLabels,
    'issues/add-sub-issue': issuesAddSubIssue,
    'issues/approve-suggestion': issuesApproveSuggestion,
    'issues/check-user-can-be-assigned': issuesCheckUserCanBeAssigned,
    'issues/check-user-can-be-assigned-to-issue':
        issuesCheckUserCanBeAssignedToIssue,
    'issues/create': issuesCreate,
    'issues/create-comment': issuesCreateComment,
    'issues/create-label': issuesCreateLabel,
    'issues/create-milestone': issuesCreateMilestone,
    'issues/delete-comment': issuesDeleteComment,
    'issues/delete-issue-field-value': issuesDeleteIssueFieldValue,
    'issues/delete-label': issuesDeleteLabel,
    'issues/delete-milestone': issuesDeleteMilestone,
    'issues/dismiss-suggestion': issuesDismissSuggestion,
    'issues/get': issuesGet,
    'issues/get-comment': issuesGetComment,
    'issues/get-event': issuesGetEvent,
    'issues/get-label': issuesGetLabel,
    'issues/get-milestone': issuesGetMilestone,
    'issues/get-parent': issuesGetParent,
    'issues/list': issuesList,
    'issues/list-assignees': issuesListAssignees,
    'issues/list-comments': issuesListComments,
    'issues/list-comments-for-repo': issuesListCommentsForRepo,
    'issues/list-dependencies-blocked-by': issuesListDependenciesBlockedBy,
    'issues/list-dependencies-blocking': issuesListDependenciesBlocking,
    'issues/list-events': issuesListEvents,
    'issues/list-events-for-repo': issuesListEventsForRepo,
    'issues/list-events-for-timeline': issuesListEventsForTimeline,
    'issues/list-for-authenticated-user': issuesListForAuthenticatedUser,
    'issues/list-for-org': issuesListForOrg,
    'issues/list-for-repo': issuesListForRepo,
    'issues/list-issue-field-values-for-issue':
        issuesListIssueFieldValuesForIssue,
    'issues/list-labels-for-milestone': issuesListLabelsForMilestone,
    'issues/list-labels-for-repo': issuesListLabelsForRepo,
    'issues/list-labels-on-issue': issuesListLabelsOnIssue,
    'issues/list-milestones': issuesListMilestones,
    'issues/list-sub-issues': issuesListSubIssues,
    'issues/list-suggestions': issuesListSuggestions,
    'issues/lock': issuesLock,
    'issues/pin-comment': issuesPinComment,
    'issues/remove-all-labels': issuesRemoveAllLabels,
    'issues/remove-assignees': issuesRemoveAssignees,
    'issues/remove-dependency-blocked-by': issuesRemoveDependencyBlockedBy,
    'issues/remove-label': issuesRemoveLabel,
    'issues/remove-sub-issue': issuesRemoveSubIssue,
    'issues/reprioritize-sub-issue': issuesReprioritizeSubIssue,
    'issues/set-issue-field-values': issuesSetIssueFieldValues,
    'issues/set-labels': issuesSetLabels,
    'issues/unlock': issuesUnlock,
    'issues/unpin-comment': issuesUnpinComment,
    'issues/update': issuesUpdate,
    'issues/update-comment': issuesUpdateComment,
    'issues/update-label': issuesUpdateLabel,
    'issues/update-milestone': issuesUpdateMilestone,
    'licenses/get': licensesGet,
    'licenses/get-all-commonly-used': licensesGetAllCommonlyUsed,
    'licenses/get-for-repo': licensesGetForRepo,
    'markdown/render': markdownRender,
    'markdown/render-raw': markdownRenderRaw,
    'meta/get': metaGet,
    'meta/get-all-versions': metaGetAllVersions,
    'meta/get-octocat': metaGetOctocat,
    'meta/get-zen': metaGetZen,
    'meta/root': metaRoot,
    'migrations/cancel-import': migrationsCancelImport,
    'migrations/delete-archive-for-authenticated-user':
        migrationsDeleteArchiveForAuthenticatedUser,
    'migrations/delete-archive-for-org': migrationsDeleteArchiveForOrg,
    'migrations/download-archive-for-org': migrationsDownloadArchiveForOrg,
    'migrations/get-archive-for-authenticated-user':
        migrationsGetArchiveForAuthenticatedUser,
    'migrations/get-commit-authors': migrationsGetCommitAuthors,
    'migrations/get-import-status': migrationsGetImportStatus,
    'migrations/get-large-files': migrationsGetLargeFiles,
    'migrations/get-status-for-authenticated-user':
        migrationsGetStatusForAuthenticatedUser,
    'migrations/get-status-for-org': migrationsGetStatusForOrg,
    'migrations/list-for-authenticated-user':
        migrationsListForAuthenticatedUser,
    'migrations/list-for-org': migrationsListForOrg,
    'migrations/list-repos-for-authenticated-user':
        migrationsListReposForAuthenticatedUser,
    'migrations/list-repos-for-org': migrationsListReposForOrg,
    'migrations/map-commit-author': migrationsMapCommitAuthor,
    'migrations/set-lfs-preference': migrationsSetLfsPreference,
    'migrations/start-for-authenticated-user':
        migrationsStartForAuthenticatedUser,
    'migrations/start-for-org': migrationsStartForOrg,
    'migrations/start-import': migrationsStartImport,
    'migrations/unlock-repo-for-authenticated-user':
        migrationsUnlockRepoForAuthenticatedUser,
    'migrations/unlock-repo-for-org': migrationsUnlockRepoForOrg,
    'migrations/update-import': migrationsUpdateImport,
    'oidc/create-oidc-custom-property-inclusion-for-enterprise':
        oidcCreateOidcCustomPropertyInclusionForEnterprise,
    'oidc/create-oidc-custom-property-inclusion-for-org':
        oidcCreateOidcCustomPropertyInclusionForOrg,
    'oidc/delete-oidc-custom-property-inclusion-for-enterprise':
        oidcDeleteOidcCustomPropertyInclusionForEnterprise,
    'oidc/delete-oidc-custom-property-inclusion-for-org':
        oidcDeleteOidcCustomPropertyInclusionForOrg,
    'oidc/get-oidc-custom-sub-template-for-org':
        oidcGetOidcCustomSubTemplateForOrg,
    'oidc/list-oidc-custom-property-inclusions-for-enterprise':
        oidcListOidcCustomPropertyInclusionsForEnterprise,
    'oidc/list-oidc-custom-property-inclusions-for-org':
        oidcListOidcCustomPropertyInclusionsForOrg,
    'oidc/update-oidc-custom-sub-template-for-org':
        oidcUpdateOidcCustomSubTemplateForOrg,
    'orgs/add-security-manager-team': orgsAddSecurityManagerTeam,
    'orgs/assign-team-to-org-role': orgsAssignTeamToOrgRole,
    'orgs/assign-user-to-org-role': orgsAssignUserToOrgRole,
    'orgs/block-user': orgsBlockUser,
    'orgs/cancel-invitation': orgsCancelInvitation,
    'orgs/check-blocked-user': orgsCheckBlockedUser,
    'orgs/check-membership-for-user': orgsCheckMembershipForUser,
    'orgs/check-public-membership-for-user': orgsCheckPublicMembershipForUser,
    'orgs/convert-member-to-outside-collaborator':
        orgsConvertMemberToOutsideCollaborator,
    'orgs/create-artifact-deployment-record':
        orgsCreateArtifactDeploymentRecord,
    'orgs/create-artifact-storage-record': orgsCreateArtifactStorageRecord,
    'orgs/create-cluster-deployment-records-job':
        orgsCreateClusterDeploymentRecordsJob,
    'orgs/create-invitation': orgsCreateInvitation,
    'orgs/create-issue-field': orgsCreateIssueField,
    'orgs/create-issue-type': orgsCreateIssueType,
    'orgs/create-webhook': orgsCreateWebhook,
    'orgs/custom-properties-for-repos-create-or-update-organization-definition':
        orgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinition,
    'orgs/custom-properties-for-repos-create-or-update-organization-definitions':
        orgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitions,
    'orgs/custom-properties-for-repos-create-or-update-organization-values':
        orgsCustomPropertiesForReposCreateOrUpdateOrganizationValues,
    'orgs/custom-properties-for-repos-delete-organization-definition':
        orgsCustomPropertiesForReposDeleteOrganizationDefinition,
    'orgs/custom-properties-for-repos-get-organization-definition':
        orgsCustomPropertiesForReposGetOrganizationDefinition,
    'orgs/custom-properties-for-repos-get-organization-definitions':
        orgsCustomPropertiesForReposGetOrganizationDefinitions,
    'orgs/custom-properties-for-repos-get-organization-values':
        orgsCustomPropertiesForReposGetOrganizationValues,
    'orgs/delete': orgsDelete,
    'orgs/delete-attestations-bulk': orgsDeleteAttestationsBulk,
    'orgs/delete-attestations-by-id': orgsDeleteAttestationsById,
    'orgs/delete-attestations-by-subject-digest':
        orgsDeleteAttestationsBySubjectDigest,
    'orgs/delete-issue-field': orgsDeleteIssueField,
    'orgs/delete-issue-type': orgsDeleteIssueType,
    'orgs/delete-webhook': orgsDeleteWebhook,
    'orgs/disable-selected-repository-immutable-releases-organization':
        orgsDisableSelectedRepositoryImmutableReleasesOrganization,
    'orgs/enable-or-disable-security-product-on-all-org-repos':
        orgsEnableOrDisableSecurityProductOnAllOrgRepos,
    'orgs/enable-selected-repository-immutable-releases-organization':
        orgsEnableSelectedRepositoryImmutableReleasesOrganization,
    'orgs/get': orgsGet,
    'orgs/get-cluster-deployment-records-job':
        orgsGetClusterDeploymentRecordsJob,
    'orgs/get-immutable-releases-settings': orgsGetImmutableReleasesSettings,
    'orgs/get-immutable-releases-settings-repositories':
        orgsGetImmutableReleasesSettingsRepositories,
    'orgs/get-membership-for-authenticated-user':
        orgsGetMembershipForAuthenticatedUser,
    'orgs/get-membership-for-user': orgsGetMembershipForUser,
    'orgs/get-org-role': orgsGetOrgRole,
    'orgs/get-org-ruleset-history': orgsGetOrgRulesetHistory,
    'orgs/get-org-ruleset-version': orgsGetOrgRulesetVersion,
    'orgs/get-webhook': orgsGetWebhook,
    'orgs/get-webhook-config-for-org': orgsGetWebhookConfigForOrg,
    'orgs/get-webhook-delivery': orgsGetWebhookDelivery,
    'orgs/list': orgsList,
    'orgs/list-app-installations': orgsListAppInstallations,
    'orgs/list-artifact-deployment-records': orgsListArtifactDeploymentRecords,
    'orgs/list-artifact-storage-records': orgsListArtifactStorageRecords,
    'orgs/list-attestation-repositories': orgsListAttestationRepositories,
    'orgs/list-attestations': orgsListAttestations,
    'orgs/list-attestations-bulk': orgsListAttestationsBulk,
    'orgs/list-blocked-users': orgsListBlockedUsers,
    'orgs/list-failed-invitations': orgsListFailedInvitations,
    'orgs/list-for-authenticated-user': orgsListForAuthenticatedUser,
    'orgs/list-for-user': orgsListForUser,
    'orgs/list-invitation-teams': orgsListInvitationTeams,
    'orgs/list-issue-fields': orgsListIssueFields,
    'orgs/list-issue-types': orgsListIssueTypes,
    'orgs/list-members': orgsListMembers,
    'orgs/list-memberships-for-authenticated-user':
        orgsListMembershipsForAuthenticatedUser,
    'orgs/list-org-role-teams': orgsListOrgRoleTeams,
    'orgs/list-org-role-users': orgsListOrgRoleUsers,
    'orgs/list-org-roles': orgsListOrgRoles,
    'orgs/list-outside-collaborators': orgsListOutsideCollaborators,
    'orgs/list-pat-grant-repositories': orgsListPatGrantRepositories,
    'orgs/list-pat-grant-request-repositories':
        orgsListPatGrantRequestRepositories,
    'orgs/list-pat-grant-requests': orgsListPatGrantRequests,
    'orgs/list-pat-grants': orgsListPatGrants,
    'orgs/list-pending-invitations': orgsListPendingInvitations,
    'orgs/list-public-members': orgsListPublicMembers,
    'orgs/list-security-manager-teams': orgsListSecurityManagerTeams,
    'orgs/list-webhook-deliveries': orgsListWebhookDeliveries,
    'orgs/list-webhooks': orgsListWebhooks,
    'orgs/ping-webhook': orgsPingWebhook,
    'orgs/redeliver-webhook-delivery': orgsRedeliverWebhookDelivery,
    'orgs/remove-member': orgsRemoveMember,
    'orgs/remove-membership-for-user': orgsRemoveMembershipForUser,
    'orgs/remove-outside-collaborator': orgsRemoveOutsideCollaborator,
    'orgs/remove-public-membership-for-authenticated-user':
        orgsRemovePublicMembershipForAuthenticatedUser,
    'orgs/remove-security-manager-team': orgsRemoveSecurityManagerTeam,
    'orgs/review-pat-grant-request': orgsReviewPatGrantRequest,
    'orgs/review-pat-grant-requests-in-bulk': orgsReviewPatGrantRequestsInBulk,
    'orgs/revoke-all-org-roles-team': orgsRevokeAllOrgRolesTeam,
    'orgs/revoke-all-org-roles-user': orgsRevokeAllOrgRolesUser,
    'orgs/revoke-org-role-team': orgsRevokeOrgRoleTeam,
    'orgs/revoke-org-role-user': orgsRevokeOrgRoleUser,
    'orgs/set-cluster-deployment-records': orgsSetClusterDeploymentRecords,
    'orgs/set-immutable-releases-settings': orgsSetImmutableReleasesSettings,
    'orgs/set-immutable-releases-settings-repositories':
        orgsSetImmutableReleasesSettingsRepositories,
    'orgs/set-membership-for-user': orgsSetMembershipForUser,
    'orgs/set-public-membership-for-authenticated-user':
        orgsSetPublicMembershipForAuthenticatedUser,
    'orgs/unblock-user': orgsUnblockUser,
    'orgs/update': orgsUpdate,
    'orgs/update-issue-field': orgsUpdateIssueField,
    'orgs/update-issue-type': orgsUpdateIssueType,
    'orgs/update-membership-for-authenticated-user':
        orgsUpdateMembershipForAuthenticatedUser,
    'orgs/update-pat-access': orgsUpdatePatAccess,
    'orgs/update-pat-accesses': orgsUpdatePatAccesses,
    'orgs/update-webhook': orgsUpdateWebhook,
    'orgs/update-webhook-config-for-org': orgsUpdateWebhookConfigForOrg,
    'packages/delete-package-for-authenticated-user':
        packagesDeletePackageForAuthenticatedUser,
    'packages/delete-package-for-org': packagesDeletePackageForOrg,
    'packages/delete-package-for-user': packagesDeletePackageForUser,
    'packages/delete-package-version-for-authenticated-user':
        packagesDeletePackageVersionForAuthenticatedUser,
    'packages/delete-package-version-for-org':
        packagesDeletePackageVersionForOrg,
    'packages/delete-package-version-for-user':
        packagesDeletePackageVersionForUser,
    'packages/get-all-package-versions-for-package-owned-by-authenticated-user':
        packagesGetAllPackageVersionsForPackageOwnedByAuthenticatedUser,
    'packages/get-all-package-versions-for-package-owned-by-org':
        packagesGetAllPackageVersionsForPackageOwnedByOrg,
    'packages/get-all-package-versions-for-package-owned-by-user':
        packagesGetAllPackageVersionsForPackageOwnedByUser,
    'packages/get-package-for-authenticated-user':
        packagesGetPackageForAuthenticatedUser,
    'packages/get-package-for-organization': packagesGetPackageForOrganization,
    'packages/get-package-for-user': packagesGetPackageForUser,
    'packages/get-package-version-for-authenticated-user':
        packagesGetPackageVersionForAuthenticatedUser,
    'packages/get-package-version-for-organization':
        packagesGetPackageVersionForOrganization,
    'packages/get-package-version-for-user': packagesGetPackageVersionForUser,
    'packages/list-docker-migration-conflicting-packages-for-authenticated-user':
        packagesListDockerMigrationConflictingPackagesForAuthenticatedUser,
    'packages/list-docker-migration-conflicting-packages-for-organization':
        packagesListDockerMigrationConflictingPackagesForOrganization,
    'packages/list-docker-migration-conflicting-packages-for-user':
        packagesListDockerMigrationConflictingPackagesForUser,
    'packages/list-packages-for-authenticated-user':
        packagesListPackagesForAuthenticatedUser,
    'packages/list-packages-for-organization':
        packagesListPackagesForOrganization,
    'packages/list-packages-for-user': packagesListPackagesForUser,
    'packages/restore-package-for-authenticated-user':
        packagesRestorePackageForAuthenticatedUser,
    'packages/restore-package-for-org': packagesRestorePackageForOrg,
    'packages/restore-package-for-user': packagesRestorePackageForUser,
    'packages/restore-package-version-for-authenticated-user':
        packagesRestorePackageVersionForAuthenticatedUser,
    'packages/restore-package-version-for-org':
        packagesRestorePackageVersionForOrg,
    'packages/restore-package-version-for-user':
        packagesRestorePackageVersionForUser,
    'private-registries/create-org-private-registry':
        privateRegistriesCreateOrgPrivateRegistry,
    'private-registries/delete-org-private-registry':
        privateRegistriesDeleteOrgPrivateRegistry,
    'private-registries/get-org-private-registry':
        privateRegistriesGetOrgPrivateRegistry,
    'private-registries/get-org-public-key': privateRegistriesGetOrgPublicKey,
    'private-registries/list-org-private-registries':
        privateRegistriesListOrgPrivateRegistries,
    'private-registries/update-org-private-registry':
        privateRegistriesUpdateOrgPrivateRegistry,
    'projects/add-field-for-org': projectsAddFieldForOrg,
    'projects/add-field-for-user': projectsAddFieldForUser,
    'projects/add-item-for-org': projectsAddItemForOrg,
    'projects/add-item-for-user': projectsAddItemForUser,
    'projects/create-draft-item-for-authenticated-user':
        projectsCreateDraftItemForAuthenticatedUser,
    'projects/create-draft-item-for-org': projectsCreateDraftItemForOrg,
    'projects/create-view-for-org': projectsCreateViewForOrg,
    'projects/create-view-for-user': projectsCreateViewForUser,
    'projects/delete-item-for-org': projectsDeleteItemForOrg,
    'projects/delete-item-for-user': projectsDeleteItemForUser,
    'projects/get-field-for-org': projectsGetFieldForOrg,
    'projects/get-field-for-user': projectsGetFieldForUser,
    'projects/get-for-org': projectsGetForOrg,
    'projects/get-for-user': projectsGetForUser,
    'projects/get-org-item': projectsGetOrgItem,
    'projects/get-user-item': projectsGetUserItem,
    'projects/list-fields-for-org': projectsListFieldsForOrg,
    'projects/list-fields-for-user': projectsListFieldsForUser,
    'projects/list-for-org': projectsListForOrg,
    'projects/list-for-user': projectsListForUser,
    'projects/list-items-for-org': projectsListItemsForOrg,
    'projects/list-items-for-user': projectsListItemsForUser,
    'projects/list-view-items-for-org': projectsListViewItemsForOrg,
    'projects/list-view-items-for-user': projectsListViewItemsForUser,
    'projects/update-item-for-org': projectsUpdateItemForOrg,
    'projects/update-item-for-user': projectsUpdateItemForUser,
    'pull-request-stacks/add': pullRequestStacksAdd,
    'pull-request-stacks/create': pullRequestStacksCreate,
    'pull-request-stacks/get': pullRequestStacksGet,
    'pull-request-stacks/list': pullRequestStacksList,
    'pull-request-stacks/unstack': pullRequestStacksUnstack,
    'pulls/check-if-merged': pullsCheckIfMerged,
    'pulls/create': pullsCreate,
    'pulls/create-reply-for-review-comment': pullsCreateReplyForReviewComment,
    'pulls/create-review': pullsCreateReview,
    'pulls/create-review-comment': pullsCreateReviewComment,
    'pulls/delete-pending-review': pullsDeletePendingReview,
    'pulls/delete-review-comment': pullsDeleteReviewComment,
    'pulls/dismiss-review': pullsDismissReview,
    'pulls/get': pullsGet,
    'pulls/get-merge-async-result': pullsGetMergeAsyncResult,
    'pulls/get-review': pullsGetReview,
    'pulls/get-review-comment': pullsGetReviewComment,
    'pulls/list': pullsList,
    'pulls/list-comments-for-review': pullsListCommentsForReview,
    'pulls/list-commits': pullsListCommits,
    'pulls/list-files': pullsListFiles,
    'pulls/list-requested-reviewers': pullsListRequestedReviewers,
    'pulls/list-review-comments': pullsListReviewComments,
    'pulls/list-review-comments-for-repo': pullsListReviewCommentsForRepo,
    'pulls/list-reviews': pullsListReviews,
    'pulls/merge': pullsMerge,
    'pulls/merge-async': pullsMergeAsync,
    'pulls/remove-requested-reviewers': pullsRemoveRequestedReviewers,
    'pulls/request-reviewers': pullsRequestReviewers,
    'pulls/submit-review': pullsSubmitReview,
    'pulls/update': pullsUpdate,
    'pulls/update-branch': pullsUpdateBranch,
    'pulls/update-review': pullsUpdateReview,
    'pulls/update-review-comment': pullsUpdateReviewComment,
    'rate-limit/get': rateLimitGet,
    'reactions/create-for-commit-comment': reactionsCreateForCommitComment,
    'reactions/create-for-issue': reactionsCreateForIssue,
    'reactions/create-for-issue-comment': reactionsCreateForIssueComment,
    'reactions/create-for-pull-request-review-comment':
        reactionsCreateForPullRequestReviewComment,
    'reactions/create-for-release': reactionsCreateForRelease,
    'reactions/delete-for-commit-comment': reactionsDeleteForCommitComment,
    'reactions/delete-for-issue': reactionsDeleteForIssue,
    'reactions/delete-for-issue-comment': reactionsDeleteForIssueComment,
    'reactions/delete-for-pull-request-comment':
        reactionsDeleteForPullRequestComment,
    'reactions/delete-for-release': reactionsDeleteForRelease,
    'reactions/list-for-commit-comment': reactionsListForCommitComment,
    'reactions/list-for-issue': reactionsListForIssue,
    'reactions/list-for-issue-comment': reactionsListForIssueComment,
    'reactions/list-for-pull-request-review-comment':
        reactionsListForPullRequestReviewComment,
    'reactions/list-for-release': reactionsListForRelease,
    'repos/accept-invitation-for-authenticated-user':
        reposAcceptInvitationForAuthenticatedUser,
    'repos/add-app-access-restrictions': reposAddAppAccessRestrictions,
    'repos/add-collaborator': reposAddCollaborator,
    'repos/add-status-check-contexts': reposAddStatusCheckContexts,
    'repos/add-team-access-restrictions': reposAddTeamAccessRestrictions,
    'repos/add-user-access-restrictions': reposAddUserAccessRestrictions,
    'repos/cancel-pages-deployment': reposCancelPagesDeployment,
    'repos/check-automated-security-fixes': reposCheckAutomatedSecurityFixes,
    'repos/check-collaborator': reposCheckCollaborator,
    'repos/check-immutable-releases': reposCheckImmutableReleases,
    'repos/check-private-vulnerability-reporting':
        reposCheckPrivateVulnerabilityReporting,
    'repos/check-vulnerability-alerts': reposCheckVulnerabilityAlerts,
    'repos/codeowners-errors': reposCodeownersErrors,
    'repos/compare-commits': reposCompareCommits,
    'repos/create-attestation': reposCreateAttestation,
    'repos/create-autolink': reposCreateAutolink,
    'repos/create-commit-comment': reposCreateCommitComment,
    'repos/create-commit-signature-protection':
        reposCreateCommitSignatureProtection,
    'repos/create-commit-status': reposCreateCommitStatus,
    'repos/create-deploy-key': reposCreateDeployKey,
    'repos/create-deployment': reposCreateDeployment,
    'repos/create-deployment-branch-policy': reposCreateDeploymentBranchPolicy,
    'repos/create-deployment-protection-rule':
        reposCreateDeploymentProtectionRule,
    'repos/create-deployment-status': reposCreateDeploymentStatus,
    'repos/create-dispatch-event': reposCreateDispatchEvent,
    'repos/create-for-authenticated-user': reposCreateForAuthenticatedUser,
    'repos/create-fork': reposCreateFork,
    'repos/create-in-org': reposCreateInOrg,
    'repos/create-or-update-environment': reposCreateOrUpdateEnvironment,
    'repos/create-or-update-file-contents': reposCreateOrUpdateFileContents,
    'repos/create-org-ruleset': reposCreateOrgRuleset,
    'repos/create-pages-deployment': reposCreatePagesDeployment,
    'repos/create-pages-site': reposCreatePagesSite,
    'repos/create-release': reposCreateRelease,
    'repos/create-repo-ruleset': reposCreateRepoRuleset,
    'repos/create-using-template': reposCreateUsingTemplate,
    'repos/create-webhook': reposCreateWebhook,
    'repos/custom-properties-for-repos-create-or-update-repository-values':
        reposCustomPropertiesForReposCreateOrUpdateRepositoryValues,
    'repos/custom-properties-for-repos-get-repository-values':
        reposCustomPropertiesForReposGetRepositoryValues,
    'repos/decline-invitation-for-authenticated-user':
        reposDeclineInvitationForAuthenticatedUser,
    'repos/delete': reposDelete,
    'repos/delete-access-restrictions': reposDeleteAccessRestrictions,
    'repos/delete-admin-branch-protection': reposDeleteAdminBranchProtection,
    'repos/delete-an-environment': reposDeleteAnEnvironment,
    'repos/delete-autolink': reposDeleteAutolink,
    'repos/delete-branch-protection': reposDeleteBranchProtection,
    'repos/delete-commit-comment': reposDeleteCommitComment,
    'repos/delete-commit-signature-protection':
        reposDeleteCommitSignatureProtection,
    'repos/delete-deploy-key': reposDeleteDeployKey,
    'repos/delete-deployment': reposDeleteDeployment,
    'repos/delete-deployment-branch-policy': reposDeleteDeploymentBranchPolicy,
    'repos/delete-file': reposDeleteFile,
    'repos/delete-invitation': reposDeleteInvitation,
    'repos/delete-org-ruleset': reposDeleteOrgRuleset,
    'repos/delete-pages-site': reposDeletePagesSite,
    'repos/delete-pull-request-review-protection':
        reposDeletePullRequestReviewProtection,
    'repos/delete-release': reposDeleteRelease,
    'repos/delete-release-asset': reposDeleteReleaseAsset,
    'repos/delete-repo-ruleset': reposDeleteRepoRuleset,
    'repos/delete-webhook': reposDeleteWebhook,
    'repos/disable-automated-security-fixes':
        reposDisableAutomatedSecurityFixes,
    'repos/disable-deployment-protection-rule':
        reposDisableDeploymentProtectionRule,
    'repos/disable-immutable-releases': reposDisableImmutableReleases,
    'repos/disable-private-vulnerability-reporting':
        reposDisablePrivateVulnerabilityReporting,
    'repos/disable-vulnerability-alerts': reposDisableVulnerabilityAlerts,
    'repos/download-tarball-archive': reposDownloadTarballArchive,
    'repos/download-zipball-archive': reposDownloadZipballArchive,
    'repos/enable-automated-security-fixes': reposEnableAutomatedSecurityFixes,
    'repos/enable-immutable-releases': reposEnableImmutableReleases,
    'repos/enable-private-vulnerability-reporting':
        reposEnablePrivateVulnerabilityReporting,
    'repos/enable-vulnerability-alerts': reposEnableVulnerabilityAlerts,
    'repos/generate-release-notes': reposGenerateReleaseNotes,
    'repos/get': reposGet,
    'repos/get-access-restrictions': reposGetAccessRestrictions,
    'repos/get-admin-branch-protection': reposGetAdminBranchProtection,
    'repos/get-all-deployment-protection-rules':
        reposGetAllDeploymentProtectionRules,
    'repos/get-all-environments': reposGetAllEnvironments,
    'repos/get-all-status-check-contexts': reposGetAllStatusCheckContexts,
    'repos/get-all-topics': reposGetAllTopics,
    'repos/get-apps-with-access-to-protected-branch':
        reposGetAppsWithAccessToProtectedBranch,
    'repos/get-autolink': reposGetAutolink,
    'repos/get-branch': reposGetBranch,
    'repos/get-branch-protection': reposGetBranchProtection,
    'repos/get-branch-rules': reposGetBranchRules,
    'repos/get-clones': reposGetClones,
    'repos/get-code-frequency-stats': reposGetCodeFrequencyStats,
    'repos/get-collaborator-permission-level':
        reposGetCollaboratorPermissionLevel,
    'repos/get-combined-status-for-ref': reposGetCombinedStatusForRef,
    'repos/get-commit': reposGetCommit,
    'repos/get-commit-activity-stats': reposGetCommitActivityStats,
    'repos/get-commit-comment': reposGetCommitComment,
    'repos/get-commit-signature-protection': reposGetCommitSignatureProtection,
    'repos/get-community-profile-metrics': reposGetCommunityProfileMetrics,
    'repos/get-content': reposGetContent,
    'repos/get-contributors-stats': reposGetContributorsStats,
    'repos/get-custom-deployment-protection-rule':
        reposGetCustomDeploymentProtectionRule,
    'repos/get-deploy-key': reposGetDeployKey,
    'repos/get-deployment': reposGetDeployment,
    'repos/get-deployment-branch-policy': reposGetDeploymentBranchPolicy,
    'repos/get-deployment-status': reposGetDeploymentStatus,
    'repos/get-environment': reposGetEnvironment,
    'repos/get-hash-algorithm': reposGetHashAlgorithm,
    'repos/get-latest-pages-build': reposGetLatestPagesBuild,
    'repos/get-latest-release': reposGetLatestRelease,
    'repos/get-org-rule-suite': reposGetOrgRuleSuite,
    'repos/get-org-rule-suites': reposGetOrgRuleSuites,
    'repos/get-org-ruleset': reposGetOrgRuleset,
    'repos/get-org-rulesets': reposGetOrgRulesets,
    'repos/get-pages': reposGetPages,
    'repos/get-pages-build': reposGetPagesBuild,
    'repos/get-pages-deployment': reposGetPagesDeployment,
    'repos/get-pages-health-check': reposGetPagesHealthCheck,
    'repos/get-participation-stats': reposGetParticipationStats,
    'repos/get-pull-request-review-protection':
        reposGetPullRequestReviewProtection,
    'repos/get-punch-card-stats': reposGetPunchCardStats,
    'repos/get-readme': reposGetReadme,
    'repos/get-readme-in-directory': reposGetReadmeInDirectory,
    'repos/get-release': reposGetRelease,
    'repos/get-release-asset': reposGetReleaseAsset,
    'repos/get-release-by-tag': reposGetReleaseByTag,
    'repos/get-repo-rule-suite': reposGetRepoRuleSuite,
    'repos/get-repo-rule-suites': reposGetRepoRuleSuites,
    'repos/get-repo-ruleset': reposGetRepoRuleset,
    'repos/get-repo-ruleset-history': reposGetRepoRulesetHistory,
    'repos/get-repo-ruleset-version': reposGetRepoRulesetVersion,
    'repos/get-repo-rulesets': reposGetRepoRulesets,
    'repos/get-status-checks-protection': reposGetStatusChecksProtection,
    'repos/get-teams-with-access-to-protected-branch':
        reposGetTeamsWithAccessToProtectedBranch,
    'repos/get-top-paths': reposGetTopPaths,
    'repos/get-top-referrers': reposGetTopReferrers,
    'repos/get-users-with-access-to-protected-branch':
        reposGetUsersWithAccessToProtectedBranch,
    'repos/get-views': reposGetViews,
    'repos/get-webhook': reposGetWebhook,
    'repos/get-webhook-config-for-repo': reposGetWebhookConfigForRepo,
    'repos/get-webhook-delivery': reposGetWebhookDelivery,
    'repos/list-activities': reposListActivities,
    'repos/list-attestations': reposListAttestations,
    'repos/list-autolinks': reposListAutolinks,
    'repos/list-branches': reposListBranches,
    'repos/list-branches-for-head-commit': reposListBranchesForHeadCommit,
    'repos/list-collaborators': reposListCollaborators,
    'repos/list-comments-for-commit': reposListCommentsForCommit,
    'repos/list-commit-comments-for-repo': reposListCommitCommentsForRepo,
    'repos/list-commit-statuses-for-ref': reposListCommitStatusesForRef,
    'repos/list-commits': reposListCommits,
    'repos/list-contributors': reposListContributors,
    'repos/list-custom-deployment-rule-integrations':
        reposListCustomDeploymentRuleIntegrations,
    'repos/list-deploy-keys': reposListDeployKeys,
    'repos/list-deployment-branch-policies': reposListDeploymentBranchPolicies,
    'repos/list-deployment-statuses': reposListDeploymentStatuses,
    'repos/list-deployments': reposListDeployments,
    'repos/list-for-authenticated-user': reposListForAuthenticatedUser,
    'repos/list-for-org': reposListForOrg,
    'repos/list-for-user': reposListForUser,
    'repos/list-forks': reposListForks,
    'repos/list-invitations': reposListInvitations,
    'repos/list-invitations-for-authenticated-user':
        reposListInvitationsForAuthenticatedUser,
    'repos/list-issue-types': reposListIssueTypes,
    'repos/list-languages': reposListLanguages,
    'repos/list-pages-builds': reposListPagesBuilds,
    'repos/list-public': reposListPublic,
    'repos/list-pull-requests-associated-with-commit':
        reposListPullRequestsAssociatedWithCommit,
    'repos/list-release-assets': reposListReleaseAssets,
    'repos/list-releases': reposListReleases,
    'repos/list-tags': reposListTags,
    'repos/list-teams': reposListTeams,
    'repos/list-webhook-deliveries': reposListWebhookDeliveries,
    'repos/list-webhooks': reposListWebhooks,
    'repos/merge': reposMerge,
    'repos/merge-upstream': reposMergeUpstream,
    'repos/ping-webhook': reposPingWebhook,
    'repos/redeliver-webhook-delivery': reposRedeliverWebhookDelivery,
    'repos/remove-app-access-restrictions': reposRemoveAppAccessRestrictions,
    'repos/remove-collaborator': reposRemoveCollaborator,
    'repos/remove-status-check-contexts': reposRemoveStatusCheckContexts,
    'repos/remove-status-check-protection': reposRemoveStatusCheckProtection,
    'repos/remove-team-access-restrictions': reposRemoveTeamAccessRestrictions,
    'repos/remove-user-access-restrictions': reposRemoveUserAccessRestrictions,
    'repos/rename-branch': reposRenameBranch,
    'repos/replace-all-topics': reposReplaceAllTopics,
    'repos/request-pages-build': reposRequestPagesBuild,
    'repos/set-admin-branch-protection': reposSetAdminBranchProtection,
    'repos/set-app-access-restrictions': reposSetAppAccessRestrictions,
    'repos/set-status-check-contexts': reposSetStatusCheckContexts,
    'repos/set-team-access-restrictions': reposSetTeamAccessRestrictions,
    'repos/set-user-access-restrictions': reposSetUserAccessRestrictions,
    'repos/test-push-webhook': reposTestPushWebhook,
    'repos/transfer': reposTransfer,
    'repos/update': reposUpdate,
    'repos/update-branch-protection': reposUpdateBranchProtection,
    'repos/update-commit-comment': reposUpdateCommitComment,
    'repos/update-deployment-branch-policy': reposUpdateDeploymentBranchPolicy,
    'repos/update-information-about-pages-site':
        reposUpdateInformationAboutPagesSite,
    'repos/update-invitation': reposUpdateInvitation,
    'repos/update-org-ruleset': reposUpdateOrgRuleset,
    'repos/update-pull-request-review-protection':
        reposUpdatePullRequestReviewProtection,
    'repos/update-release': reposUpdateRelease,
    'repos/update-release-asset': reposUpdateReleaseAsset,
    'repos/update-repo-ruleset': reposUpdateRepoRuleset,
    'repos/update-status-check-protection': reposUpdateStatusCheckProtection,
    'repos/update-webhook': reposUpdateWebhook,
    'repos/update-webhook-config-for-repo': reposUpdateWebhookConfigForRepo,
    'repos/upload-release-asset': reposUploadReleaseAsset,
    'search/code': searchCode,
    'search/commits': searchCommits,
    'search/issues-and-pull-requests': searchIssuesAndPullRequests,
    'search/labels': searchLabels,
    'search/repos': searchRepos,
    'search/topics': searchTopics,
    'search/users': searchUsers,
    'secret-scanning/bulk-create-org-custom-patterns':
        secretScanningBulkCreateOrgCustomPatterns,
    'secret-scanning/bulk-create-repo-custom-patterns':
        secretScanningBulkCreateRepoCustomPatterns,
    'secret-scanning/bulk-delete-org-custom-patterns':
        secretScanningBulkDeleteOrgCustomPatterns,
    'secret-scanning/bulk-delete-repo-custom-patterns':
        secretScanningBulkDeleteRepoCustomPatterns,
    'secret-scanning/create-push-protection-bypass':
        secretScanningCreatePushProtectionBypass,
    'secret-scanning/get-alert': secretScanningGetAlert,
    'secret-scanning/get-scan-history': secretScanningGetScanHistory,
    'secret-scanning/list-alerts-for-org': secretScanningListAlertsForOrg,
    'secret-scanning/list-alerts-for-repo': secretScanningListAlertsForRepo,
    'secret-scanning/list-locations-for-alert':
        secretScanningListLocationsForAlert,
    'secret-scanning/list-org-custom-patterns':
        secretScanningListOrgCustomPatterns,
    'secret-scanning/list-org-pattern-configs':
        secretScanningListOrgPatternConfigs,
    'secret-scanning/list-repo-custom-patterns':
        secretScanningListRepoCustomPatterns,
    'secret-scanning/update-alert': secretScanningUpdateAlert,
    'secret-scanning/update-org-custom-pattern':
        secretScanningUpdateOrgCustomPattern,
    'secret-scanning/update-org-pattern-configs':
        secretScanningUpdateOrgPatternConfigs,
    'secret-scanning/update-repo-custom-pattern':
        secretScanningUpdateRepoCustomPattern,
    'security-advisories/create-fork': securityAdvisoriesCreateFork,
    'security-advisories/create-private-vulnerability-report':
        securityAdvisoriesCreatePrivateVulnerabilityReport,
    'security-advisories/create-repository-advisory':
        securityAdvisoriesCreateRepositoryAdvisory,
    'security-advisories/create-repository-advisory-cve-request':
        securityAdvisoriesCreateRepositoryAdvisoryCveRequest,
    'security-advisories/get-global-advisory':
        securityAdvisoriesGetGlobalAdvisory,
    'security-advisories/get-repository-advisory':
        securityAdvisoriesGetRepositoryAdvisory,
    'security-advisories/list-global-advisories':
        securityAdvisoriesListGlobalAdvisories,
    'security-advisories/list-org-repository-advisories':
        securityAdvisoriesListOrgRepositoryAdvisories,
    'security-advisories/list-repository-advisories':
        securityAdvisoriesListRepositoryAdvisories,
    'security-advisories/update-repository-advisory':
        securityAdvisoriesUpdateRepositoryAdvisory,
    'teams/add-member-legacy': teamsAddMemberLegacy,
    'teams/add-or-update-membership-for-user-in-org':
        teamsAddOrUpdateMembershipForUserInOrg,
    'teams/add-or-update-membership-for-user-legacy':
        teamsAddOrUpdateMembershipForUserLegacy,
    'teams/add-or-update-repo-permissions-in-org':
        teamsAddOrUpdateRepoPermissionsInOrg,
    'teams/add-or-update-repo-permissions-legacy':
        teamsAddOrUpdateRepoPermissionsLegacy,
    'teams/check-permissions-for-repo-in-org':
        teamsCheckPermissionsForRepoInOrg,
    'teams/check-permissions-for-repo-legacy':
        teamsCheckPermissionsForRepoLegacy,
    'teams/create': teamsCreate,
    'teams/delete-in-org': teamsDeleteInOrg,
    'teams/delete-legacy': teamsDeleteLegacy,
    'teams/get-by-name': teamsGetByName,
    'teams/get-legacy': teamsGetLegacy,
    'teams/get-member-legacy': teamsGetMemberLegacy,
    'teams/get-membership-for-user-in-org': teamsGetMembershipForUserInOrg,
    'teams/get-membership-for-user-legacy': teamsGetMembershipForUserLegacy,
    'teams/list': teamsList,
    'teams/list-child-in-org': teamsListChildInOrg,
    'teams/list-child-legacy': teamsListChildLegacy,
    'teams/list-for-authenticated-user': teamsListForAuthenticatedUser,
    'teams/list-members-in-org': teamsListMembersInOrg,
    'teams/list-members-legacy': teamsListMembersLegacy,
    'teams/list-pending-invitations-in-org': teamsListPendingInvitationsInOrg,
    'teams/list-pending-invitations-legacy': teamsListPendingInvitationsLegacy,
    'teams/list-repos-in-org': teamsListReposInOrg,
    'teams/list-repos-legacy': teamsListReposLegacy,
    'teams/remove-member-legacy': teamsRemoveMemberLegacy,
    'teams/remove-membership-for-user-in-org':
        teamsRemoveMembershipForUserInOrg,
    'teams/remove-membership-for-user-legacy':
        teamsRemoveMembershipForUserLegacy,
    'teams/remove-repo-in-org': teamsRemoveRepoInOrg,
    'teams/remove-repo-legacy': teamsRemoveRepoLegacy,
    'teams/update-in-org': teamsUpdateInOrg,
    'teams/update-legacy': teamsUpdateLegacy,
    'users/add-email-for-authenticated-user': usersAddEmailForAuthenticatedUser,
    'users/add-social-account-for-authenticated-user':
        usersAddSocialAccountForAuthenticatedUser,
    'users/block': usersBlock,
    'users/check-blocked': usersCheckBlocked,
    'users/check-following-for-user': usersCheckFollowingForUser,
    'users/check-person-is-followed-by-authenticated':
        usersCheckPersonIsFollowedByAuthenticated,
    'users/create-gpg-key-for-authenticated-user':
        usersCreateGpgKeyForAuthenticatedUser,
    'users/create-public-ssh-key-for-authenticated-user':
        usersCreatePublicSshKeyForAuthenticatedUser,
    'users/create-ssh-signing-key-for-authenticated-user':
        usersCreateSshSigningKeyForAuthenticatedUser,
    'users/delete-attestations-bulk': usersDeleteAttestationsBulk,
    'users/delete-attestations-by-id': usersDeleteAttestationsById,
    'users/delete-attestations-by-subject-digest':
        usersDeleteAttestationsBySubjectDigest,
    'users/delete-email-for-authenticated-user':
        usersDeleteEmailForAuthenticatedUser,
    'users/delete-gpg-key-for-authenticated-user':
        usersDeleteGpgKeyForAuthenticatedUser,
    'users/delete-public-ssh-key-for-authenticated-user':
        usersDeletePublicSshKeyForAuthenticatedUser,
    'users/delete-social-account-for-authenticated-user':
        usersDeleteSocialAccountForAuthenticatedUser,
    'users/delete-ssh-signing-key-for-authenticated-user':
        usersDeleteSshSigningKeyForAuthenticatedUser,
    'users/follow': usersFollow,
    'users/get-authenticated': usersGetAuthenticated,
    'users/get-by-id': usersGetById,
    'users/get-by-username': usersGetByUsername,
    'users/get-context-for-user': usersGetContextForUser,
    'users/get-gpg-key-for-authenticated-user':
        usersGetGpgKeyForAuthenticatedUser,
    'users/get-public-ssh-key-for-authenticated-user':
        usersGetPublicSshKeyForAuthenticatedUser,
    'users/get-ssh-signing-key-for-authenticated-user':
        usersGetSshSigningKeyForAuthenticatedUser,
    'users/list': usersList,
    'users/list-attestations': usersListAttestations,
    'users/list-attestations-bulk': usersListAttestationsBulk,
    'users/list-blocked-by-authenticated-user':
        usersListBlockedByAuthenticatedUser,
    'users/list-emails-for-authenticated-user':
        usersListEmailsForAuthenticatedUser,
    'users/list-followed-by-authenticated-user':
        usersListFollowedByAuthenticatedUser,
    'users/list-followers-for-authenticated-user':
        usersListFollowersForAuthenticatedUser,
    'users/list-followers-for-user': usersListFollowersForUser,
    'users/list-following-for-user': usersListFollowingForUser,
    'users/list-gpg-keys-for-authenticated-user':
        usersListGpgKeysForAuthenticatedUser,
    'users/list-gpg-keys-for-user': usersListGpgKeysForUser,
    'users/list-public-emails-for-authenticated-user':
        usersListPublicEmailsForAuthenticatedUser,
    'users/list-public-keys-for-user': usersListPublicKeysForUser,
    'users/list-public-ssh-keys-for-authenticated-user':
        usersListPublicSshKeysForAuthenticatedUser,
    'users/list-social-accounts-for-authenticated-user':
        usersListSocialAccountsForAuthenticatedUser,
    'users/list-social-accounts-for-user': usersListSocialAccountsForUser,
    'users/list-ssh-signing-keys-for-authenticated-user':
        usersListSshSigningKeysForAuthenticatedUser,
    'users/list-ssh-signing-keys-for-user': usersListSshSigningKeysForUser,
    'users/set-primary-email-visibility-for-authenticated-user':
        usersSetPrimaryEmailVisibilityForAuthenticatedUser,
    'users/unblock': usersUnblock,
    'users/unfollow': usersUnfollow,
    'users/update-authenticated': usersUpdateAuthenticated,
  };
}

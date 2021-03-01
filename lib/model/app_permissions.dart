//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_permissions.g.dart';

abstract class AppPermissions implements Built<AppPermissions, AppPermissionsBuilder> {

    /// The level of permission to grant the access token for GitHub Actions workflows, workflow runs, and artifacts. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'actions')
    AppPermissionsActionsEnum get actions;
    // enum actionsEnum {  read,  write,  };

    /// The level of permission to grant the access token for repository creation, deletion, settings, teams, and collaborators creation. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'administration')
    AppPermissionsAdministrationEnum get administration;
    // enum administrationEnum {  read,  write,  };

    /// The level of permission to grant the access token for checks on code. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'checks')
    AppPermissionsChecksEnum get checks;
    // enum checksEnum {  read,  write,  };

    /// The level of permission to grant the access token for notification of content references and creation content attachments. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'content_references')
    AppPermissionsContentReferencesEnum get contentReferences;
    // enum contentReferencesEnum {  read,  write,  };

    /// The level of permission to grant the access token for repository contents, commits, branches, downloads, releases, and merges. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'contents')
    AppPermissionsContentsEnum get contents;
    // enum contentsEnum {  read,  write,  };

    /// The level of permission to grant the access token for deployments and deployment statuses. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'deployments')
    AppPermissionsDeploymentsEnum get deployments;
    // enum deploymentsEnum {  read,  write,  };

    /// The level of permission to grant the access token for managing repository environments. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'environments')
    AppPermissionsEnvironmentsEnum get environments;
    // enum environmentsEnum {  read,  write,  };

    /// The level of permission to grant the access token for issues and related comments, assignees, labels, and milestones. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'issues')
    AppPermissionsIssuesEnum get issues;
    // enum issuesEnum {  read,  write,  };

    /// The level of permission to grant the access token to search repositories, list collaborators, and access repository metadata. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'metadata')
    AppPermissionsMetadataEnum get metadata;
    // enum metadataEnum {  read,  write,  };

    /// The level of permission to grant the access token for packages published to GitHub Packages. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'packages')
    AppPermissionsPackagesEnum get packages;
    // enum packagesEnum {  read,  write,  };

    /// The level of permission to grant the access token to retrieve Pages statuses, configuration, and builds, as well as create new builds. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'pages')
    AppPermissionsPagesEnum get pages;
    // enum pagesEnum {  read,  write,  };

    /// The level of permission to grant the access token for pull requests and related comments, assignees, labels, milestones, and merges. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'pull_requests')
    AppPermissionsPullRequestsEnum get pullRequests;
    // enum pullRequestsEnum {  read,  write,  };

    /// The level of permission to grant the access token to manage the post-receive hooks for a repository. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'repository_hooks')
    AppPermissionsRepositoryHooksEnum get repositoryHooks;
    // enum repositoryHooksEnum {  read,  write,  };

    /// The level of permission to grant the access token to manage repository projects, columns, and cards. Can be one of: `read`, `write`, or `admin`.
    @nullable
    @BuiltValueField(wireName: r'repository_projects')
    AppPermissionsRepositoryProjectsEnum get repositoryProjects;
    // enum repositoryProjectsEnum {  read,  write,  admin,  };

    /// The level of permission to grant the access token to view and manage secret scanning alerts. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'secret_scanning_alerts')
    AppPermissionsSecretScanningAlertsEnum get secretScanningAlerts;
    // enum secretScanningAlertsEnum {  read,  write,  };

    /// The level of permission to grant the access token to manage repository secrets. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'secrets')
    AppPermissionsSecretsEnum get secrets;
    // enum secretsEnum {  read,  write,  };

    /// The level of permission to grant the access token to view and manage security events like code scanning alerts. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'security_events')
    AppPermissionsSecurityEventsEnum get securityEvents;
    // enum securityEventsEnum {  read,  write,  };

    /// The level of permission to grant the access token to manage just a single file. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'single_file')
    AppPermissionsSingleFileEnum get singleFile;
    // enum singleFileEnum {  read,  write,  };

    /// The level of permission to grant the access token for commit statuses. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'statuses')
    AppPermissionsStatusesEnum get statuses;
    // enum statusesEnum {  read,  write,  };

    /// The level of permission to grant the access token to retrieve Dependabot alerts. Can be one of: `read`.
    @nullable
    @BuiltValueField(wireName: r'vulnerability_alerts')
    AppPermissionsVulnerabilityAlertsEnum get vulnerabilityAlerts;
    // enum vulnerabilityAlertsEnum {  read,  };

    /// The level of permission to grant the access token to update GitHub Actions workflow files. Can be one of: `write`.
    @nullable
    @BuiltValueField(wireName: r'workflows')
    AppPermissionsWorkflowsEnum get workflows;
    // enum workflowsEnum {  write,  };

    /// The level of permission to grant the access token for organization teams and members. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'members')
    AppPermissionsMembersEnum get members;
    // enum membersEnum {  read,  write,  };

    /// The level of permission to grant the access token to manage access to an organization. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'organization_administration')
    AppPermissionsOrganizationAdministrationEnum get organizationAdministration;
    // enum organizationAdministrationEnum {  read,  write,  };

    /// The level of permission to grant the access token to manage the post-receive hooks for an organization. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'organization_hooks')
    AppPermissionsOrganizationHooksEnum get organizationHooks;
    // enum organizationHooksEnum {  read,  write,  };

    /// The level of permission to grant the access token for viewing an organization's plan. Can be one of: `read`.
    @nullable
    @BuiltValueField(wireName: r'organization_plan')
    AppPermissionsOrganizationPlanEnum get organizationPlan;
    // enum organizationPlanEnum {  read,  };

    /// The level of permission to grant the access token to manage organization projects, columns, and cards. Can be one of: `read`, `write`, or `admin`.
    @nullable
    @BuiltValueField(wireName: r'organization_projects')
    AppPermissionsOrganizationProjectsEnum get organizationProjects;
    // enum organizationProjectsEnum {  read,  write,  admin,  };

    /// The level of permission to grant the access token to manage organization secrets. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'organization_secrets')
    AppPermissionsOrganizationSecretsEnum get organizationSecrets;
    // enum organizationSecretsEnum {  read,  write,  };

    /// The level of permission to grant the access token to view and manage GitHub Actions self-hosted runners available to an organization. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'organization_self_hosted_runners')
    AppPermissionsOrganizationSelfHostedRunnersEnum get organizationSelfHostedRunners;
    // enum organizationSelfHostedRunnersEnum {  read,  write,  };

    /// The level of permission to grant the access token to view and manage users blocked by the organization. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'organization_user_blocking')
    AppPermissionsOrganizationUserBlockingEnum get organizationUserBlocking;
    // enum organizationUserBlockingEnum {  read,  write,  };

    /// The level of permission to grant the access token to manage team discussions and related comments. Can be one of: `read` or `write`.
    @nullable
    @BuiltValueField(wireName: r'team_discussions')
    AppPermissionsTeamDiscussionsEnum get teamDiscussions;
    // enum teamDiscussionsEnum {  read,  write,  };

    // Boilerplate code needed to wire-up generated code
    AppPermissions._();

    static void _initializeBuilder(AppPermissionsBuilder b) => b;

    factory AppPermissions([void updates(AppPermissionsBuilder b)]) = _$AppPermissions;
    static Serializer<AppPermissions> get serializer => _$appPermissionsSerializer;
}

class AppPermissionsActionsEnum extends EnumClass {

  /// The level of permission to grant the access token for GitHub Actions workflows, workflow runs, and artifacts. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsActionsEnum read = _$appPermissionsActionsEnum_read;
  /// The level of permission to grant the access token for GitHub Actions workflows, workflow runs, and artifacts. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsActionsEnum write = _$appPermissionsActionsEnum_write;

  static Serializer<AppPermissionsActionsEnum> get serializer => _$appPermissionsActionsEnumSerializer;

  const AppPermissionsActionsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsActionsEnum> get values => _$appPermissionsActionsEnumValues;
  static AppPermissionsActionsEnum valueOf(String name) => _$appPermissionsActionsEnumValueOf(name);
}

class AppPermissionsAdministrationEnum extends EnumClass {

  /// The level of permission to grant the access token for repository creation, deletion, settings, teams, and collaborators creation. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsAdministrationEnum read = _$appPermissionsAdministrationEnum_read;
  /// The level of permission to grant the access token for repository creation, deletion, settings, teams, and collaborators creation. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsAdministrationEnum write = _$appPermissionsAdministrationEnum_write;

  static Serializer<AppPermissionsAdministrationEnum> get serializer => _$appPermissionsAdministrationEnumSerializer;

  const AppPermissionsAdministrationEnum._(String name): super(name);

  static BuiltSet<AppPermissionsAdministrationEnum> get values => _$appPermissionsAdministrationEnumValues;
  static AppPermissionsAdministrationEnum valueOf(String name) => _$appPermissionsAdministrationEnumValueOf(name);
}

class AppPermissionsChecksEnum extends EnumClass {

  /// The level of permission to grant the access token for checks on code. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsChecksEnum read = _$appPermissionsChecksEnum_read;
  /// The level of permission to grant the access token for checks on code. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsChecksEnum write = _$appPermissionsChecksEnum_write;

  static Serializer<AppPermissionsChecksEnum> get serializer => _$appPermissionsChecksEnumSerializer;

  const AppPermissionsChecksEnum._(String name): super(name);

  static BuiltSet<AppPermissionsChecksEnum> get values => _$appPermissionsChecksEnumValues;
  static AppPermissionsChecksEnum valueOf(String name) => _$appPermissionsChecksEnumValueOf(name);
}

class AppPermissionsContentReferencesEnum extends EnumClass {

  /// The level of permission to grant the access token for notification of content references and creation content attachments. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsContentReferencesEnum read = _$appPermissionsContentReferencesEnum_read;
  /// The level of permission to grant the access token for notification of content references and creation content attachments. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsContentReferencesEnum write = _$appPermissionsContentReferencesEnum_write;

  static Serializer<AppPermissionsContentReferencesEnum> get serializer => _$appPermissionsContentReferencesEnumSerializer;

  const AppPermissionsContentReferencesEnum._(String name): super(name);

  static BuiltSet<AppPermissionsContentReferencesEnum> get values => _$appPermissionsContentReferencesEnumValues;
  static AppPermissionsContentReferencesEnum valueOf(String name) => _$appPermissionsContentReferencesEnumValueOf(name);
}

class AppPermissionsContentsEnum extends EnumClass {

  /// The level of permission to grant the access token for repository contents, commits, branches, downloads, releases, and merges. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsContentsEnum read = _$appPermissionsContentsEnum_read;
  /// The level of permission to grant the access token for repository contents, commits, branches, downloads, releases, and merges. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsContentsEnum write = _$appPermissionsContentsEnum_write;

  static Serializer<AppPermissionsContentsEnum> get serializer => _$appPermissionsContentsEnumSerializer;

  const AppPermissionsContentsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsContentsEnum> get values => _$appPermissionsContentsEnumValues;
  static AppPermissionsContentsEnum valueOf(String name) => _$appPermissionsContentsEnumValueOf(name);
}

class AppPermissionsDeploymentsEnum extends EnumClass {

  /// The level of permission to grant the access token for deployments and deployment statuses. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsDeploymentsEnum read = _$appPermissionsDeploymentsEnum_read;
  /// The level of permission to grant the access token for deployments and deployment statuses. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsDeploymentsEnum write = _$appPermissionsDeploymentsEnum_write;

  static Serializer<AppPermissionsDeploymentsEnum> get serializer => _$appPermissionsDeploymentsEnumSerializer;

  const AppPermissionsDeploymentsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsDeploymentsEnum> get values => _$appPermissionsDeploymentsEnumValues;
  static AppPermissionsDeploymentsEnum valueOf(String name) => _$appPermissionsDeploymentsEnumValueOf(name);
}

class AppPermissionsEnvironmentsEnum extends EnumClass {

  /// The level of permission to grant the access token for managing repository environments. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsEnvironmentsEnum read = _$appPermissionsEnvironmentsEnum_read;
  /// The level of permission to grant the access token for managing repository environments. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsEnvironmentsEnum write = _$appPermissionsEnvironmentsEnum_write;

  static Serializer<AppPermissionsEnvironmentsEnum> get serializer => _$appPermissionsEnvironmentsEnumSerializer;

  const AppPermissionsEnvironmentsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsEnvironmentsEnum> get values => _$appPermissionsEnvironmentsEnumValues;
  static AppPermissionsEnvironmentsEnum valueOf(String name) => _$appPermissionsEnvironmentsEnumValueOf(name);
}

class AppPermissionsIssuesEnum extends EnumClass {

  /// The level of permission to grant the access token for issues and related comments, assignees, labels, and milestones. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsIssuesEnum read = _$appPermissionsIssuesEnum_read;
  /// The level of permission to grant the access token for issues and related comments, assignees, labels, and milestones. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsIssuesEnum write = _$appPermissionsIssuesEnum_write;

  static Serializer<AppPermissionsIssuesEnum> get serializer => _$appPermissionsIssuesEnumSerializer;

  const AppPermissionsIssuesEnum._(String name): super(name);

  static BuiltSet<AppPermissionsIssuesEnum> get values => _$appPermissionsIssuesEnumValues;
  static AppPermissionsIssuesEnum valueOf(String name) => _$appPermissionsIssuesEnumValueOf(name);
}

class AppPermissionsMetadataEnum extends EnumClass {

  /// The level of permission to grant the access token to search repositories, list collaborators, and access repository metadata. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsMetadataEnum read = _$appPermissionsMetadataEnum_read;
  /// The level of permission to grant the access token to search repositories, list collaborators, and access repository metadata. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsMetadataEnum write = _$appPermissionsMetadataEnum_write;

  static Serializer<AppPermissionsMetadataEnum> get serializer => _$appPermissionsMetadataEnumSerializer;

  const AppPermissionsMetadataEnum._(String name): super(name);

  static BuiltSet<AppPermissionsMetadataEnum> get values => _$appPermissionsMetadataEnumValues;
  static AppPermissionsMetadataEnum valueOf(String name) => _$appPermissionsMetadataEnumValueOf(name);
}

class AppPermissionsPackagesEnum extends EnumClass {

  /// The level of permission to grant the access token for packages published to GitHub Packages. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsPackagesEnum read = _$appPermissionsPackagesEnum_read;
  /// The level of permission to grant the access token for packages published to GitHub Packages. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsPackagesEnum write = _$appPermissionsPackagesEnum_write;

  static Serializer<AppPermissionsPackagesEnum> get serializer => _$appPermissionsPackagesEnumSerializer;

  const AppPermissionsPackagesEnum._(String name): super(name);

  static BuiltSet<AppPermissionsPackagesEnum> get values => _$appPermissionsPackagesEnumValues;
  static AppPermissionsPackagesEnum valueOf(String name) => _$appPermissionsPackagesEnumValueOf(name);
}

class AppPermissionsPagesEnum extends EnumClass {

  /// The level of permission to grant the access token to retrieve Pages statuses, configuration, and builds, as well as create new builds. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsPagesEnum read = _$appPermissionsPagesEnum_read;
  /// The level of permission to grant the access token to retrieve Pages statuses, configuration, and builds, as well as create new builds. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsPagesEnum write = _$appPermissionsPagesEnum_write;

  static Serializer<AppPermissionsPagesEnum> get serializer => _$appPermissionsPagesEnumSerializer;

  const AppPermissionsPagesEnum._(String name): super(name);

  static BuiltSet<AppPermissionsPagesEnum> get values => _$appPermissionsPagesEnumValues;
  static AppPermissionsPagesEnum valueOf(String name) => _$appPermissionsPagesEnumValueOf(name);
}

class AppPermissionsPullRequestsEnum extends EnumClass {

  /// The level of permission to grant the access token for pull requests and related comments, assignees, labels, milestones, and merges. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsPullRequestsEnum read = _$appPermissionsPullRequestsEnum_read;
  /// The level of permission to grant the access token for pull requests and related comments, assignees, labels, milestones, and merges. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsPullRequestsEnum write = _$appPermissionsPullRequestsEnum_write;

  static Serializer<AppPermissionsPullRequestsEnum> get serializer => _$appPermissionsPullRequestsEnumSerializer;

  const AppPermissionsPullRequestsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsPullRequestsEnum> get values => _$appPermissionsPullRequestsEnumValues;
  static AppPermissionsPullRequestsEnum valueOf(String name) => _$appPermissionsPullRequestsEnumValueOf(name);
}

class AppPermissionsRepositoryHooksEnum extends EnumClass {

  /// The level of permission to grant the access token to manage the post-receive hooks for a repository. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsRepositoryHooksEnum read = _$appPermissionsRepositoryHooksEnum_read;
  /// The level of permission to grant the access token to manage the post-receive hooks for a repository. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsRepositoryHooksEnum write = _$appPermissionsRepositoryHooksEnum_write;

  static Serializer<AppPermissionsRepositoryHooksEnum> get serializer => _$appPermissionsRepositoryHooksEnumSerializer;

  const AppPermissionsRepositoryHooksEnum._(String name): super(name);

  static BuiltSet<AppPermissionsRepositoryHooksEnum> get values => _$appPermissionsRepositoryHooksEnumValues;
  static AppPermissionsRepositoryHooksEnum valueOf(String name) => _$appPermissionsRepositoryHooksEnumValueOf(name);
}

class AppPermissionsRepositoryProjectsEnum extends EnumClass {

  /// The level of permission to grant the access token to manage repository projects, columns, and cards. Can be one of: `read`, `write`, or `admin`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsRepositoryProjectsEnum read = _$appPermissionsRepositoryProjectsEnum_read;
  /// The level of permission to grant the access token to manage repository projects, columns, and cards. Can be one of: `read`, `write`, or `admin`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsRepositoryProjectsEnum write = _$appPermissionsRepositoryProjectsEnum_write;
  /// The level of permission to grant the access token to manage repository projects, columns, and cards. Can be one of: `read`, `write`, or `admin`.
  @BuiltValueEnumConst(wireName: r'admin')
  static const AppPermissionsRepositoryProjectsEnum admin = _$appPermissionsRepositoryProjectsEnum_admin;

  static Serializer<AppPermissionsRepositoryProjectsEnum> get serializer => _$appPermissionsRepositoryProjectsEnumSerializer;

  const AppPermissionsRepositoryProjectsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsRepositoryProjectsEnum> get values => _$appPermissionsRepositoryProjectsEnumValues;
  static AppPermissionsRepositoryProjectsEnum valueOf(String name) => _$appPermissionsRepositoryProjectsEnumValueOf(name);
}

class AppPermissionsSecretScanningAlertsEnum extends EnumClass {

  /// The level of permission to grant the access token to view and manage secret scanning alerts. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsSecretScanningAlertsEnum read = _$appPermissionsSecretScanningAlertsEnum_read;
  /// The level of permission to grant the access token to view and manage secret scanning alerts. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsSecretScanningAlertsEnum write = _$appPermissionsSecretScanningAlertsEnum_write;

  static Serializer<AppPermissionsSecretScanningAlertsEnum> get serializer => _$appPermissionsSecretScanningAlertsEnumSerializer;

  const AppPermissionsSecretScanningAlertsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsSecretScanningAlertsEnum> get values => _$appPermissionsSecretScanningAlertsEnumValues;
  static AppPermissionsSecretScanningAlertsEnum valueOf(String name) => _$appPermissionsSecretScanningAlertsEnumValueOf(name);
}

class AppPermissionsSecretsEnum extends EnumClass {

  /// The level of permission to grant the access token to manage repository secrets. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsSecretsEnum read = _$appPermissionsSecretsEnum_read;
  /// The level of permission to grant the access token to manage repository secrets. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsSecretsEnum write = _$appPermissionsSecretsEnum_write;

  static Serializer<AppPermissionsSecretsEnum> get serializer => _$appPermissionsSecretsEnumSerializer;

  const AppPermissionsSecretsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsSecretsEnum> get values => _$appPermissionsSecretsEnumValues;
  static AppPermissionsSecretsEnum valueOf(String name) => _$appPermissionsSecretsEnumValueOf(name);
}

class AppPermissionsSecurityEventsEnum extends EnumClass {

  /// The level of permission to grant the access token to view and manage security events like code scanning alerts. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsSecurityEventsEnum read = _$appPermissionsSecurityEventsEnum_read;
  /// The level of permission to grant the access token to view and manage security events like code scanning alerts. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsSecurityEventsEnum write = _$appPermissionsSecurityEventsEnum_write;

  static Serializer<AppPermissionsSecurityEventsEnum> get serializer => _$appPermissionsSecurityEventsEnumSerializer;

  const AppPermissionsSecurityEventsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsSecurityEventsEnum> get values => _$appPermissionsSecurityEventsEnumValues;
  static AppPermissionsSecurityEventsEnum valueOf(String name) => _$appPermissionsSecurityEventsEnumValueOf(name);
}

class AppPermissionsSingleFileEnum extends EnumClass {

  /// The level of permission to grant the access token to manage just a single file. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsSingleFileEnum read = _$appPermissionsSingleFileEnum_read;
  /// The level of permission to grant the access token to manage just a single file. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsSingleFileEnum write = _$appPermissionsSingleFileEnum_write;

  static Serializer<AppPermissionsSingleFileEnum> get serializer => _$appPermissionsSingleFileEnumSerializer;

  const AppPermissionsSingleFileEnum._(String name): super(name);

  static BuiltSet<AppPermissionsSingleFileEnum> get values => _$appPermissionsSingleFileEnumValues;
  static AppPermissionsSingleFileEnum valueOf(String name) => _$appPermissionsSingleFileEnumValueOf(name);
}

class AppPermissionsStatusesEnum extends EnumClass {

  /// The level of permission to grant the access token for commit statuses. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsStatusesEnum read = _$appPermissionsStatusesEnum_read;
  /// The level of permission to grant the access token for commit statuses. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsStatusesEnum write = _$appPermissionsStatusesEnum_write;

  static Serializer<AppPermissionsStatusesEnum> get serializer => _$appPermissionsStatusesEnumSerializer;

  const AppPermissionsStatusesEnum._(String name): super(name);

  static BuiltSet<AppPermissionsStatusesEnum> get values => _$appPermissionsStatusesEnumValues;
  static AppPermissionsStatusesEnum valueOf(String name) => _$appPermissionsStatusesEnumValueOf(name);
}

class AppPermissionsVulnerabilityAlertsEnum extends EnumClass {

  /// The level of permission to grant the access token to retrieve Dependabot alerts. Can be one of: `read`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsVulnerabilityAlertsEnum read = _$appPermissionsVulnerabilityAlertsEnum_read;

  static Serializer<AppPermissionsVulnerabilityAlertsEnum> get serializer => _$appPermissionsVulnerabilityAlertsEnumSerializer;

  const AppPermissionsVulnerabilityAlertsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsVulnerabilityAlertsEnum> get values => _$appPermissionsVulnerabilityAlertsEnumValues;
  static AppPermissionsVulnerabilityAlertsEnum valueOf(String name) => _$appPermissionsVulnerabilityAlertsEnumValueOf(name);
}

class AppPermissionsWorkflowsEnum extends EnumClass {

  /// The level of permission to grant the access token to update GitHub Actions workflow files. Can be one of: `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsWorkflowsEnum write = _$appPermissionsWorkflowsEnum_write;

  static Serializer<AppPermissionsWorkflowsEnum> get serializer => _$appPermissionsWorkflowsEnumSerializer;

  const AppPermissionsWorkflowsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsWorkflowsEnum> get values => _$appPermissionsWorkflowsEnumValues;
  static AppPermissionsWorkflowsEnum valueOf(String name) => _$appPermissionsWorkflowsEnumValueOf(name);
}

class AppPermissionsMembersEnum extends EnumClass {

  /// The level of permission to grant the access token for organization teams and members. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsMembersEnum read = _$appPermissionsMembersEnum_read;
  /// The level of permission to grant the access token for organization teams and members. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsMembersEnum write = _$appPermissionsMembersEnum_write;

  static Serializer<AppPermissionsMembersEnum> get serializer => _$appPermissionsMembersEnumSerializer;

  const AppPermissionsMembersEnum._(String name): super(name);

  static BuiltSet<AppPermissionsMembersEnum> get values => _$appPermissionsMembersEnumValues;
  static AppPermissionsMembersEnum valueOf(String name) => _$appPermissionsMembersEnumValueOf(name);
}

class AppPermissionsOrganizationAdministrationEnum extends EnumClass {

  /// The level of permission to grant the access token to manage access to an organization. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsOrganizationAdministrationEnum read = _$appPermissionsOrganizationAdministrationEnum_read;
  /// The level of permission to grant the access token to manage access to an organization. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsOrganizationAdministrationEnum write = _$appPermissionsOrganizationAdministrationEnum_write;

  static Serializer<AppPermissionsOrganizationAdministrationEnum> get serializer => _$appPermissionsOrganizationAdministrationEnumSerializer;

  const AppPermissionsOrganizationAdministrationEnum._(String name): super(name);

  static BuiltSet<AppPermissionsOrganizationAdministrationEnum> get values => _$appPermissionsOrganizationAdministrationEnumValues;
  static AppPermissionsOrganizationAdministrationEnum valueOf(String name) => _$appPermissionsOrganizationAdministrationEnumValueOf(name);
}

class AppPermissionsOrganizationHooksEnum extends EnumClass {

  /// The level of permission to grant the access token to manage the post-receive hooks for an organization. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsOrganizationHooksEnum read = _$appPermissionsOrganizationHooksEnum_read;
  /// The level of permission to grant the access token to manage the post-receive hooks for an organization. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsOrganizationHooksEnum write = _$appPermissionsOrganizationHooksEnum_write;

  static Serializer<AppPermissionsOrganizationHooksEnum> get serializer => _$appPermissionsOrganizationHooksEnumSerializer;

  const AppPermissionsOrganizationHooksEnum._(String name): super(name);

  static BuiltSet<AppPermissionsOrganizationHooksEnum> get values => _$appPermissionsOrganizationHooksEnumValues;
  static AppPermissionsOrganizationHooksEnum valueOf(String name) => _$appPermissionsOrganizationHooksEnumValueOf(name);
}

class AppPermissionsOrganizationPlanEnum extends EnumClass {

  /// The level of permission to grant the access token for viewing an organization's plan. Can be one of: `read`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsOrganizationPlanEnum read = _$appPermissionsOrganizationPlanEnum_read;

  static Serializer<AppPermissionsOrganizationPlanEnum> get serializer => _$appPermissionsOrganizationPlanEnumSerializer;

  const AppPermissionsOrganizationPlanEnum._(String name): super(name);

  static BuiltSet<AppPermissionsOrganizationPlanEnum> get values => _$appPermissionsOrganizationPlanEnumValues;
  static AppPermissionsOrganizationPlanEnum valueOf(String name) => _$appPermissionsOrganizationPlanEnumValueOf(name);
}

class AppPermissionsOrganizationProjectsEnum extends EnumClass {

  /// The level of permission to grant the access token to manage organization projects, columns, and cards. Can be one of: `read`, `write`, or `admin`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsOrganizationProjectsEnum read = _$appPermissionsOrganizationProjectsEnum_read;
  /// The level of permission to grant the access token to manage organization projects, columns, and cards. Can be one of: `read`, `write`, or `admin`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsOrganizationProjectsEnum write = _$appPermissionsOrganizationProjectsEnum_write;
  /// The level of permission to grant the access token to manage organization projects, columns, and cards. Can be one of: `read`, `write`, or `admin`.
  @BuiltValueEnumConst(wireName: r'admin')
  static const AppPermissionsOrganizationProjectsEnum admin = _$appPermissionsOrganizationProjectsEnum_admin;

  static Serializer<AppPermissionsOrganizationProjectsEnum> get serializer => _$appPermissionsOrganizationProjectsEnumSerializer;

  const AppPermissionsOrganizationProjectsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsOrganizationProjectsEnum> get values => _$appPermissionsOrganizationProjectsEnumValues;
  static AppPermissionsOrganizationProjectsEnum valueOf(String name) => _$appPermissionsOrganizationProjectsEnumValueOf(name);
}

class AppPermissionsOrganizationSecretsEnum extends EnumClass {

  /// The level of permission to grant the access token to manage organization secrets. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsOrganizationSecretsEnum read = _$appPermissionsOrganizationSecretsEnum_read;
  /// The level of permission to grant the access token to manage organization secrets. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsOrganizationSecretsEnum write = _$appPermissionsOrganizationSecretsEnum_write;

  static Serializer<AppPermissionsOrganizationSecretsEnum> get serializer => _$appPermissionsOrganizationSecretsEnumSerializer;

  const AppPermissionsOrganizationSecretsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsOrganizationSecretsEnum> get values => _$appPermissionsOrganizationSecretsEnumValues;
  static AppPermissionsOrganizationSecretsEnum valueOf(String name) => _$appPermissionsOrganizationSecretsEnumValueOf(name);
}

class AppPermissionsOrganizationSelfHostedRunnersEnum extends EnumClass {

  /// The level of permission to grant the access token to view and manage GitHub Actions self-hosted runners available to an organization. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsOrganizationSelfHostedRunnersEnum read = _$appPermissionsOrganizationSelfHostedRunnersEnum_read;
  /// The level of permission to grant the access token to view and manage GitHub Actions self-hosted runners available to an organization. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsOrganizationSelfHostedRunnersEnum write = _$appPermissionsOrganizationSelfHostedRunnersEnum_write;

  static Serializer<AppPermissionsOrganizationSelfHostedRunnersEnum> get serializer => _$appPermissionsOrganizationSelfHostedRunnersEnumSerializer;

  const AppPermissionsOrganizationSelfHostedRunnersEnum._(String name): super(name);

  static BuiltSet<AppPermissionsOrganizationSelfHostedRunnersEnum> get values => _$appPermissionsOrganizationSelfHostedRunnersEnumValues;
  static AppPermissionsOrganizationSelfHostedRunnersEnum valueOf(String name) => _$appPermissionsOrganizationSelfHostedRunnersEnumValueOf(name);
}

class AppPermissionsOrganizationUserBlockingEnum extends EnumClass {

  /// The level of permission to grant the access token to view and manage users blocked by the organization. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsOrganizationUserBlockingEnum read = _$appPermissionsOrganizationUserBlockingEnum_read;
  /// The level of permission to grant the access token to view and manage users blocked by the organization. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsOrganizationUserBlockingEnum write = _$appPermissionsOrganizationUserBlockingEnum_write;

  static Serializer<AppPermissionsOrganizationUserBlockingEnum> get serializer => _$appPermissionsOrganizationUserBlockingEnumSerializer;

  const AppPermissionsOrganizationUserBlockingEnum._(String name): super(name);

  static BuiltSet<AppPermissionsOrganizationUserBlockingEnum> get values => _$appPermissionsOrganizationUserBlockingEnumValues;
  static AppPermissionsOrganizationUserBlockingEnum valueOf(String name) => _$appPermissionsOrganizationUserBlockingEnumValueOf(name);
}

class AppPermissionsTeamDiscussionsEnum extends EnumClass {

  /// The level of permission to grant the access token to manage team discussions and related comments. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'read')
  static const AppPermissionsTeamDiscussionsEnum read = _$appPermissionsTeamDiscussionsEnum_read;
  /// The level of permission to grant the access token to manage team discussions and related comments. Can be one of: `read` or `write`.
  @BuiltValueEnumConst(wireName: r'write')
  static const AppPermissionsTeamDiscussionsEnum write = _$appPermissionsTeamDiscussionsEnum_write;

  static Serializer<AppPermissionsTeamDiscussionsEnum> get serializer => _$appPermissionsTeamDiscussionsEnumSerializer;

  const AppPermissionsTeamDiscussionsEnum._(String name): super(name);

  static BuiltSet<AppPermissionsTeamDiscussionsEnum> get values => _$appPermissionsTeamDiscussionsEnumValues;
  static AppPermissionsTeamDiscussionsEnum valueOf(String name) => _$appPermissionsTeamDiscussionsEnumValueOf(name);
}


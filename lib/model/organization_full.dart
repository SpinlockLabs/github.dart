//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/organization_full_plan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_full.g.dart';

abstract class OrganizationFull implements Built<OrganizationFull, OrganizationFullBuilder> {

    @nullable
    @BuiltValueField(wireName: r'login')
    String get login;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'repos_url')
    String get reposUrl;

    @nullable
    @BuiltValueField(wireName: r'events_url')
    String get eventsUrl;

    @nullable
    @BuiltValueField(wireName: r'hooks_url')
    String get hooksUrl;

    @nullable
    @BuiltValueField(wireName: r'issues_url')
    String get issuesUrl;

    @nullable
    @BuiltValueField(wireName: r'members_url')
    String get membersUrl;

    @nullable
    @BuiltValueField(wireName: r'public_members_url')
    String get publicMembersUrl;

    @nullable
    @BuiltValueField(wireName: r'avatar_url')
    String get avatarUrl;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'company')
    String get company;

    @nullable
    @BuiltValueField(wireName: r'blog')
    String get blog;

    @nullable
    @BuiltValueField(wireName: r'location')
    String get location;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'twitter_username')
    String get twitterUsername;

    @nullable
    @BuiltValueField(wireName: r'is_verified')
    bool get isVerified;

    @nullable
    @BuiltValueField(wireName: r'has_organization_projects')
    bool get hasOrganizationProjects;

    @nullable
    @BuiltValueField(wireName: r'has_repository_projects')
    bool get hasRepositoryProjects;

    @nullable
    @BuiltValueField(wireName: r'public_repos')
    int get publicRepos;

    @nullable
    @BuiltValueField(wireName: r'public_gists')
    int get publicGists;

    @nullable
    @BuiltValueField(wireName: r'followers')
    int get followers;

    @nullable
    @BuiltValueField(wireName: r'following')
    int get following;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'total_private_repos')
    int get totalPrivateRepos;

    @nullable
    @BuiltValueField(wireName: r'owned_private_repos')
    int get ownedPrivateRepos;

    @nullable
    @BuiltValueField(wireName: r'private_gists')
    int get privateGists;

    @nullable
    @BuiltValueField(wireName: r'disk_usage')
    int get diskUsage;

    @nullable
    @BuiltValueField(wireName: r'collaborators')
    int get collaborators;

    @nullable
    @BuiltValueField(wireName: r'billing_email')
    String get billingEmail;

    @nullable
    @BuiltValueField(wireName: r'plan')
    OrganizationFullPlan get plan;

    @nullable
    @BuiltValueField(wireName: r'default_repository_permission')
    String get defaultRepositoryPermission;

    @nullable
    @BuiltValueField(wireName: r'members_can_create_repositories')
    bool get membersCanCreateRepositories;

    @nullable
    @BuiltValueField(wireName: r'two_factor_requirement_enabled')
    bool get twoFactorRequirementEnabled;

    @nullable
    @BuiltValueField(wireName: r'members_allowed_repository_creation_type')
    String get membersAllowedRepositoryCreationType;

    @nullable
    @BuiltValueField(wireName: r'members_can_create_public_repositories')
    bool get membersCanCreatePublicRepositories;

    @nullable
    @BuiltValueField(wireName: r'members_can_create_private_repositories')
    bool get membersCanCreatePrivateRepositories;

    @nullable
    @BuiltValueField(wireName: r'members_can_create_internal_repositories')
    bool get membersCanCreateInternalRepositories;

    @nullable
    @BuiltValueField(wireName: r'members_can_create_pages')
    bool get membersCanCreatePages;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    // Boilerplate code needed to wire-up generated code
    OrganizationFull._();

    static void _initializeBuilder(OrganizationFullBuilder b) => b;

    factory OrganizationFull([void updates(OrganizationFullBuilder b)]) = _$OrganizationFull;
    static Serializer<OrganizationFull> get serializer => _$organizationFullSerializer;
}


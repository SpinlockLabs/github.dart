import 'dart:async';
import 'dart:convert';

import 'package:github/src/common.dart';
import 'package:http/http.dart' as http;

/// The [OrganizationsService] handles communication with organization
/// methods of the GitHub API.
///
/// API docs: https://developer.github.com/v3/orgs/
class OrganizationsService extends Service {
  OrganizationsService(GitHub github) : super(github);

  /// Lists all of the memberships in organizations for the given [userName].
  /// If [userName] is not specified we list the memberships in organizations
  /// for the authenticated user.
  ///
  /// API docs: : https://developer.github.com/v3/orgs/#list-user-organizations
  Stream<Organization> list([String? userName]) {
    var requestPath = '/users/$userName/orgs';
    if (userName == null) {
      requestPath = '/user/orgs';
    }
    return PaginationHelper(github)
        .objects('GET', requestPath, Organization.fromJson);
  }

  /// Fetches the organization specified by [name].
  ///
  /// API docs: https://developer.github.com/v3/orgs/#get-an-organization
  Future<Organization> get(String? name) => github.getJSON('/orgs/$name',
          convert: Organization.fromJson,
          statusCode: StatusCodes.OK, fail: (http.Response response) {
        if (response.statusCode == 404) {
          throw OrganizationNotFound(github, name);
        }
      });

  /// Fetches the organizations specified by [names].
  Stream<Organization> getMulti(List<String> names) async* {
    for (final name in names) {
      final org = await get(name);
      yield org;
    }
  }

  /// Edits an Organization
  ///
  /// API docs: https://developer.github.com/v3/orgs/#edit-an-organization
  Future<Organization> edit(String org,
      {String? billingEmail,
      String? company,
      String? email,
      String? location,
      String? name,
      String? description}) {
    final map = createNonNullMap(<String, dynamic>{
      'billing_email': billingEmail,
      'company': company,
      'email': email,
      'location': location,
      'name': name,
      'description': description
    });

    return github.postJSON('/orgs/$org',
        statusCode: 200,
        convert: Organization.fromJson,
        body: GitHubJson.encode(map));
  }

  /// Lists all of the teams for the specified organization.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-teams
  Stream<Team> listTeams(String orgName) {
    return PaginationHelper(github)
        .objects('GET', '/orgs/$orgName/teams', Team.fromJson);
  }

  /// Gets the team specified by the [teamId].
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team
  Future<Team> getTeam(int teamId) {
    return github.getJSON('/teams/$teamId',
        convert: Organization.fromJson, statusCode: 200) as Future<Team>;
  }

  /// Creates a Team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#create-team
  Future<Team> createTeam(String org, String name,
      {String? description, List<String>? repos, String? permission}) {
    final map = createNonNullMap(<String, dynamic>{
      'name': name,
      'description': description,
      'repo_names': repos,
      'permission': permission
    });

    return github.postJSON('/orgs/$org/teams',
        statusCode: 201, convert: Team.fromJson, body: GitHubJson.encode(map));
  }

  /// Edits a Team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#edit-team
  Future<Team> editTeam(int teamId, String name,
      {String? description, String? permission}) {
    final map = createNonNullMap(<String, dynamic>{
      'name': name,
      'description': description,
      'permission': permission,
    });

    return github.postJSON(
      '/teams/$teamId',
      statusCode: 200,
      convert: Team.fromJson,
      body: GitHubJson.encode(map),
    );
  }

  /// Deletes the team specified by the [teamId]
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#delete-team
  Future<bool> deleteTeam(int teamId) {
    return github.request('DELETE', '/teams/$teamId').then((response) {
      return response.statusCode == 204;
    });
  }

  /// Lists the team members of the team with [teamId].
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-team-members
  Stream<TeamMember> listTeamMembers(int teamId) {
    return PaginationHelper(github)
        .objects('GET', '/teams/$teamId/members', TeamMember.fromJson);
  }

  Future<bool> getTeamMemberStatus(int teamId, String user) {
    return github.getJSON('/teams/$teamId/memberships/$user').then((json) {
      return json['state'];
    });
  }

  /// Returns the membership status for a user in a team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team-membership
  Future<TeamMembershipState> getTeamMembership(int teamId, String user) {
    final completer = Completer<TeamMembershipState>();

    github
        .getJSON(
          '/teams/$teamId/memberships/$user',
          statusCode: 200,
          fail: (http.Response response) {
            if (response.statusCode == 404) {
              completer.complete(TeamMembershipState(null));
            } else {
              github.handleStatusCode(response);
            }
          },
          convert: (dynamic json) => TeamMembershipState(json['state']),
        )
        .then(completer.complete);

    return completer.future;
  }

  /// Invites a user to the specified team.
  ///
  /// API docs: https://developer.github.com/v3/teams/members/#add-or-update-team-membership
  Future<TeamMembershipState> addTeamMembership(int teamId, String user) async {
    final response = await github
        .request('PUT', '/teams/$teamId/memberships/$user', statusCode: 200);
    return TeamMembershipState(jsonDecode(response.body)['state']);
  }

  /// Removes a user from the specified team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team-membership
  Future removeTeamMembership(int teamId, String user) {
    return github.request('DELETE', '/teams/$teamId/memberships/$user',
        statusCode: 204);
  }

  /// Lists the repositories that the specified team has access to.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-team-repos
  Stream<Repository> listTeamRepositories(int teamId) {
    return PaginationHelper(github)
        .objects('GET', '/teams/$teamId/repos', Repository.fromJson);
  }

  /// Checks if a team manages the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team-repo
  Future<bool> isTeamRepository(int teamId, RepositorySlug slug) {
    return github
        .request('GET', '/teams/$teamId/repos/${slug.fullName}')
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Adds a repository to be managed by the specified team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#add-team-repo
  Future<bool> addTeamRepository(int teamId, RepositorySlug slug) {
    return github
        .request('PUT', '/teams/$teamId/repos/${slug.fullName}')
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Removes a repository from being managed by the specified team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#remove-team-repo
  Future<bool> removeTeamRepository(int teamId, RepositorySlug slug) {
    return github
        .request('DELETE', '/teams/$teamId/repos/${slug.fullName}')
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Lists all of the teams across all of the organizations to which the authenticated user belongs.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-user-teams
  Stream<Team> listUserTeams() {
    return PaginationHelper(github)
        .objects('GET', '/user/teams', Team.fromJson);
  }

  /// Lists all of the users in an organization
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-user-teams
  Stream<User> listUsers(String org) {
    return PaginationHelper(github)
        .objects('GET', '/orgs/$org/members', User.fromJson);
  }

  /// Lists the hooks for the specified organization.
  ///
  /// API docs: https://developer.github.com/v3/orgs/hooks/#list-hooks
  Stream<Hook> listHooks(String org) {
    return PaginationHelper(github).objects('GET', '/orgs/$org/hooks',
        (dynamic i) => Hook.fromJson(i)..repoName = org);
  }

  /// Fetches a single hook by [id].
  ///
  /// API docs: https://developer.github.com/v3/orgs/hooks/#get-single-hook
  Future<Hook> getHook(String org, int id) =>
      github.getJSON('/orgs/$org/hooks/$id',
          convert: (dynamic i) => Hook.fromJson(i)..repoName = org);

  /// Creates an organization hook based on the specified [hook].
  ///
  /// API docs: https://developer.github.com/v3/orgs/hooks/#create-a-hook
  Future<Hook> createHook(String org, CreateHook hook) {
    return github.postJSON('/orgs/$org/hooks',
        convert: (Map<String, dynamic> i) => Hook.fromJson(i)..repoName = org,
        body: GitHubJson.encode(hook));
  }

  // TODO: Implement editHook: https://developer.github.com/v3/orgs/hooks/#edit-a-hook

  /// Pings the organization hook.
  ///
  /// API docs: https://developer.github.com/v3/orgs/hooks/#ping-a-hook
  Future<bool> pingHook(String org, int id) {
    return github
        .request('POST', '/orgs/$org/hooks/$id/pings')
        .then((response) => response.statusCode == 204);
  }

  /// Deletes the specified hook.
  Future<bool> deleteHook(String org, int id) {
    return github.request('DELETE', '/orgs/$org/hooks/$id').then((response) {
      return response.statusCode == 204;
    });
  }
}

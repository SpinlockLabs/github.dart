part of github.common;

/// The [OrganizationsService] handles communication with organization
/// methods of the GitHub API.
///  
/// API docs: https://developer.github.com/v3/orgs/
class OrganizationsService extends Service {
  OrganizationsService(GitHub github) : super(github);
  
  // TODO: Implement list: https://developer.github.com/v3/orgs/#list-user-organizations
  
  /// Fetches the organization specified by [name].
  /// 
  /// API docs: https://developer.github.com/v3/orgs/#get-an-organization
  Future<Organization> get(String name) {
    return _github.getJSON("/orgs/${name}", convert: Organization.fromJSON, 
        statusCode: StatusCodes.OK, fail: (http.Response response) {
      if (response.statusCode == 404) {
        throw new OrganizationNotFound(_github, name);
      }
    });
  }

  /// Fetches the organizations specified by [names].
  Stream<Organization> getMulti(List<String> names) {
    var controller = new StreamController();

    var group = new FutureGroup();

    for (var name in names) {
      group.add(get(name).then((org) {
        controller.add(org);
      }));
    }

    group.future.then((_) {
      controller.close();
    });
    
    return controller.stream;
  }
  
  // TODO: Implement edit: https://developer.github.com/v3/orgs/#edit-an-organization
  
  // TODO: Implement member service methods: https://developer.github.com/v3/orgs/members/
  
  /// Lists all of the teams for the specified organization.
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-teams
  Stream<Team> listTeams(String orgName) {    
    return new PaginationHelper(_github).objects("GET", "/orgs/${orgName}/teams", 
        Team.fromJSON);
  }
  
  // TODO: Implement getTeam: https://developer.github.com/v3/orgs/teams/#get-team
  // TODO: Implement createTeam: https://developer.github.com/v3/orgs/teams/#create-team
  // TODO: Implement editTeam: https://developer.github.com/v3/orgs/teams/#edit-team
  // TODO: Implement deleteTeam: https://developer.github.com/v3/orgs/teams/#delete-team
  
  /// Lists the team members of the team with [teamId].
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-team-members
  Stream<TeamMember> listTeamMembers(int teamId) {
    return new PaginationHelper(_github).objects("GET", "/teams/${teamId}/members", 
        TeamMember.fromJSON);
  }

  // TODO: Implement isTeamMember: https://developer.github.com/v3/orgs/teams/#get-team-member
  
  /// Adds a user to the team.
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#add-team-member
  Future<bool> addTeamMember(int teamId, String user) {
    return _github.request(
        "PUT",
        "/teams/${teamId}/members/${user}").then((response) {
      return response.statusCode == 204;
    });
  }

  /// Removes a user from the team.
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#remove-team-member
  Future<bool> removeMember(int teamId, String user) {
    return _github.request(
        "DELETE",
        "/teams/${teamId}/members/${user}").then((response) {
      return response.statusCode == 204;
    });
  }
  
  /// Returns the membership status for a user in a team.
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team-membership
  Future<TeamMembershipState> getTeamMembership(int teamId, String user) {
    var completer = new Completer();

    _github.getJSON("/teams/${teamId}/memberships/${user}", statusCode: 200,
        fail: (http.Response response) {
      if (response.statusCode == 404) {
        completer.complete(new TeamMembershipState(null));
      } else {
        _github.handleStatusCode(response);
      }
    },convert: (json) => 
        new TeamMembershipState(json['state'])).then(completer.complete);

    return completer.future;
  }
  
  // TODO: Implement addTeamMembership: https://developer.github.com/v3/orgs/teams/#add-team-membership
  
  // TODO: Implement removeTeamMembership: https://developer.github.com/v3/orgs/teams/#remove-team-membership
  
  /// Lists the repositories that the specified team has access to.
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-team-repos
  Stream<Repository> listTeamRepositories(int teamId) {
    return new PaginationHelper(
        _github).objects("GET", "/teams/${teamId}/repos", Repository.fromJSON);
  }
  
  /// Checks if a team manages the specified repository.
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team-repo
  Future<bool> isTeamRepository(int teamId, RepositorySlug slug) {
    return _github.request(
        "GET",
        "/teams/${teamId}/repos/${slug.fullName}").then((response) {
      return response.statusCode == 204;
    });
  }

  /// Adds a repository to be managed by the specified team.
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#add-team-repo
  Future<bool> addTeamRepository(int teamId, RepositorySlug slug) {
    return _github.request(
        "PUT",
        "/teams/${teamId}/repos/${slug.fullName}").then((response) {
      return response.statusCode == 204;
    });
  }

  /// Removes a repository from being managed by the specified team.
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#remove-team-repo
  Future<bool> removeTeamRepository(int teamId, RepositorySlug slug) {
    return _github.request(
        "DELETE",
        "/teams/${teamId}/repos/${slug.fullName}").then((response) {
      return response.statusCode == 204;
    });
  }
  
  /// Lists all of the teams across all of the organizations to which the authenticated user belongs.
  /// 
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-user-teams
  Stream<Team> listUserTeams() {
    return new PaginationHelper(_github).objects("GET", "/user/teams", Team.fromJSON);
  }
  
}
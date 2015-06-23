part of github.common;

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
  Stream<Organization> list([String userName]) {
    String requestPath = "/users/$userName/orgs";
    if (userName == null) {
      requestPath = "/user/orgs";
    }
    return new PaginationHelper(_github).objects(
        "GET", requestPath, Organization.fromJSON);
  }

  /// Fetches the organization specified by [name].
  ///
  /// API docs: https://developer.github.com/v3/orgs/#get-an-organization
  Future<Organization> get(String name) {
    return _github.getJSON("/orgs/${name}",
        convert: Organization.fromJSON,
        statusCode: StatusCodes.OK,
        fail: (http.Response response) {
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

  /// Edits an Organization
  ///
  /// API docs: https://developer.github.com/v3/orgs/#edit-an-organization
  Future<Organization> edit(String org, {String billingEmail, String company,
      String email, String location, String name, String description}) {
    var map = createNonNullMap({
      "billing_email": billingEmail,
      "company": company,
      "email": email,
      "location": location,
      "name": name,
      "description": description
    });

    return _github.postJSON("/orgs/${org}",
        statusCode: 200, convert: Organization.fromJSON, body: map);
  }

  /// Lists all of the teams for the specified organization.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-teams
  Stream<Team> listTeams(String orgName) {
    return new PaginationHelper(_github).objects(
        "GET", "/orgs/${orgName}/teams", Team.fromJSON);
  }

  /// Gets the team specified by the [teamId].
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team
  Future<Team> getTeam(int teamId) {
    return _github.getJSON("/teams/${teamId}",
        convert: Organization.fromJSON, statusCode: 200);
  }

  /// Creates a Team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#create-team
  Future<Team> createTeam(String org, String name,
      {String description, List<String> repos, String permission}) {
    var map = createNonNullMap({
      "name": name,
      "description": description,
      "repo_names": repos,
      "permission": permission
    });

    return _github.postJSON("/orgs/${org}/teams",
        statusCode: 201, convert: Team.fromJSON, body: map);
  }

  /// Edits a Team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#edit-team
  Future<Team> editTeam(int teamId, String name,
      {String description, String permission}) {
    var map = createNonNullMap(
        {"name": name, "description": description, "permission": permission});

    return _github.postJSON("/teams/${teamId}",
        statusCode: 200, convert: Team.fromJSON, body: map);
  }

  /// Deletes the team specified by the [teamId]
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#delete-team
  Future<bool> deleteTeam(int teamId) {
    return _github.request("DELETE", "/teams/${teamId}").then((response) {
      return response.statusCode == 204;
    });
  }

  /// Lists the team members of the team with [teamId].
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-team-members
  Stream<TeamMember> listTeamMembers(int teamId) {
    return new PaginationHelper(_github).objects(
        "GET", "/teams/${teamId}/members", TeamMember.fromJSON);
  }

  Future<bool> getTeamMemberStatus(int teamId, String user) {
    return _github.getJSON("/teams/${teamId}/memberships/${user}").then((json) {
      return json["state"];
    });
  }

  /// Adds a user to the team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#add-team-member
  @deprecated
  Future<bool> addTeamMember(int teamId, String user) {
    return _github
        .request("PUT", "/teams/${teamId}/members/${user}")
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Removes a user from the team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#remove-team-member
  @deprecated
  Future<bool> removeMember(int teamId, String user) {
    return _github
        .request("DELETE", "/teams/${teamId}/members/${user}")
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Returns the membership status for a user in a team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team-membership
  Future<TeamMembershipState> getTeamMembership(int teamId, String user) {
    var completer = new Completer();

    _github
        .getJSON("/teams/${teamId}/memberships/${user}",
            statusCode: 200, fail: (http.Response response) {
      if (response.statusCode == 404) {
        completer.complete(new TeamMembershipState(null));
      } else {
        _github.handleStatusCode(response);
      }
    }, convert: (json) => new TeamMembershipState(json['state']))
        .then(completer.complete);

    return completer.future;
  }

  /// Invites a user to the specified team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team-membership
  Future<TeamMembershipState> addTeamMembership(int teamId, String user) {
    var completer = new Completer();

    _github
        .request("POST", "/teams/${teamId}/memberships/${user}",
            statusCode: 200, fail: (http.Response response) {
      if (response.statusCode == 404) {
        completer.complete(new TeamMembershipState(null));
      } else {
        _github.handleStatusCode(response);
      }
    }).then((response) {
      return new TeamMembershipState(response.asJSON()["state"]);
    }).then(completer.complete);

    return completer.future;
  }

  /// Removes a user from the specified team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team-membership
  Future removeTeamMembership(int teamId, String user) {
    return _github.request("DELETE", "/teams/${teamId}/memberships/${user}",
        statusCode: 204);
  }

  /// Lists the repositories that the specified team has access to.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-team-repos
  Stream<Repository> listTeamRepositories(int teamId) {
    return new PaginationHelper(_github).objects(
        "GET", "/teams/${teamId}/repos", Repository.fromJSON);
  }

  /// Checks if a team manages the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#get-team-repo
  Future<bool> isTeamRepository(int teamId, RepositorySlug slug) {
    return _github
        .request("GET", "/teams/${teamId}/repos/${slug.fullName}")
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Adds a repository to be managed by the specified team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#add-team-repo
  Future<bool> addTeamRepository(int teamId, RepositorySlug slug) {
    return _github
        .request("PUT", "/teams/${teamId}/repos/${slug.fullName}")
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Removes a repository from being managed by the specified team.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#remove-team-repo
  Future<bool> removeTeamRepository(int teamId, RepositorySlug slug) {
    return _github
        .request("DELETE", "/teams/${teamId}/repos/${slug.fullName}")
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Lists all of the teams across all of the organizations to which the authenticated user belongs.
  ///
  /// API docs: https://developer.github.com/v3/orgs/teams/#list-user-teams
  Stream<Team> listUserTeams() {
    return new PaginationHelper(_github).objects(
        "GET", "/user/teams", Team.fromJSON);
  }

  /// Lists the hooks for the specified organization.
  ///
  /// API docs: https://developer.github.com/v3/orgs/hooks/#list-hooks
  Stream<Hook> listHooks(String org) {
    return new PaginationHelper(_github).objects(
        "GET", "/orgs/${org}/hooks", (input) => Hook.fromJSON(org, input),
        preview: "application/vnd.github.sersi-preview+json");
  }

  /// Fetches a single hook by [id].
  ///
  /// API docs: https://developer.github.com/v3/orgs/hooks/#get-single-hook
  Future<Hook> getHook(String org, int id) {
    return _github.getJSON("/orgs/${org}/hooks/${id}",
        convert: (i) => Hook.fromJSON(org, i),
        preview: "application/vnd.github.sersi-preview+json");
  }

  /// Creates an organization hook based on the specified [hook].
  ///
  /// API docs: https://developer.github.com/v3/orgs/hooks/#create-a-hook
  Future<Hook> createHook(String org, CreateHook hook) {
    return _github.postJSON("/orgs/${org}/hooks",
        convert: (i) => Hook.fromJSON(org, i),
        body: hook.toJSON(),
        preview: "application/vnd.github.sersi-preview+json");
  }

  // TODO: Implement editHook: https://developer.github.com/v3/orgs/hooks/#edit-a-hook

  /// Pings the organization hook.
  ///
  /// API docs: https://developer.github.com/v3/orgs/hooks/#ping-a-hook
  Future<bool> pingHook(String org, int id) {
    return _github
        .request("POST", "/orgs/${org}/hooks/${id}/pings",
            preview: "application/vnd.github.sersi-preview+json")
        .then((response) => response.statusCode == 204);
  }

  /// Deletes the specified hook.
  Future<bool> deleteHook(String org, int id) {
    return _github
        .request("DELETE", "/orgs/${org}/hooks/${id}",
            preview: "application/vnd.github.sersi-preview+json")
        .then((response) {
      return response.statusCode == 204;
    });
  }
}

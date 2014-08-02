part of github.client;

class GitHubError {
  final String message;
  final String apiUrl;
  final GitHub github;
  final Object source;
  
  GitHubError(this.github, this.message, {this.apiUrl, this.source});
  
  @override
  String toString() => "GitHub Error (message: ${message}, api url: ${apiUrl})";
}

class RepositoryNotFound extends GitHubError {
  RepositoryNotFound(GitHub github, String repo) : super(github, "Repository Not Found: ${repo}");
}

class UserNotFound extends GitHubError {
  UserNotFound(GitHub github, String user) : super(github, "User Not Found: ${user}");
}

class OrganizationNotFound extends GitHubError {
  OrganizationNotFound(GitHub github, String organization) : super(github, "Organization Not Found: ${organization}");
}

class TeamNotFound extends GitHubError {
  TeamNotFound(GitHub github, int id) : super(github, "Team Not Found: ${id}");
}
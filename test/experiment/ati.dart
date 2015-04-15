import "package:github/server.dart";
import "package:github/dates.dart";

void main() {
  var slug = new RepositorySlug("DirectMyFile", "github.dart");
  var github = createGitHubClient();

  github.repositories.getRepository(slug).then((repository) {
    print("Name: ${repository.name}");
    print("Description: ${repository.description}");
    print("Owner: ${repository.owner.login}");
    print("Stars: ${repository.stargazersCount}");
    print("Watchers: ${repository.subscribersCount}");
    print("Language: ${repository.language}");
    print("Default Branch: ${repository.defaultBranch}");
    print("Created At: ${friendlyDateTime(repository.createdAt)}");
    print("Last Pushed At: ${friendlyDateTime(repository.pushedAt)}");
  }).then((_) => github.dispose());
}

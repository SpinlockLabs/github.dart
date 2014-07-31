part of github.common;

class NotReadyYet {
  final String message;
  
  const NotReadyYet(this.message);
}

class GitHubApiName {
  final String name;
  
  const GitHubApiName(this.name);
}

DateTime _parse_date(String input) {
  if (input == null) {
    return null;
  }
  
  return DateTime.parse(input);
}
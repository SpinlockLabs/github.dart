part of github.common;

/// Marks something as not being ready or complete.
class NotReadyYet {
  /// Informational Message
  final String message;

  const NotReadyYet(this.message);
}

/// Specifies the original API Field Name
class ApiName {
  /// Original API Field Name
  final String name;

  const ApiName(this.name);
}

/// Specifies that something should be only used when the specified condition is met.
class OnlyWhen {
  /// Condition
  final String condition;

  const OnlyWhen(this.condition);
}

/// Converts the [date] to GitHub's ISO-8601 format:
///
/// The format is "YYYY-MM-DDTHH:mm:ssZ"
String dateToGitHubIso8601(DateTime date) {
  // Regex removes the milliseconds.
  return date.toUtc().toIso8601String().replaceAll(githubDateRemoveRegExp, '');
}

RepositorySlug slugFromAPIUrl(String url) {
  var split = url.split("/");
  var i = split.indexOf("repos") + 1;
  var parts = split.sublist(i, i + 2);
  return new RepositorySlug(parts[0], parts[1]);
}

abstract class StatusCodes {
  static const int OK = 200;
  static const int CREATED = 201;
  static const int ACCEPTED = 202;
  static const int NON_AUTHORITATIVE_INFO = 203;
  static const int NO_CONTENT = 204;
  static const int RESET_CONTENT = 205;
  static const int PARTIAL_CONTENT = 206;

  static const int MOVED_PERMANENTLY = 301;
  static const int FOUND = 302;
  static const int NOT_MODIFIED = 304;
  static const int TEMPORARY_REDIRECT = 307;

  static const int BAD_REQUEST = 400;
  static const int UNAUTHORIZED = 401;
  static const int PAYMENT_REQUIRED = 402;
  static const int FORBIDDEN = 403;
  static const int NOT_FOUND = 404;
  static const int METHOD_NOT_ALLOWED = 405;
  static const int NOT_ACCEPTABLE = 406;
  static const int PROXY_AUTHENTICATION_REQUIRED = 407;
  static const int REQUEST_TIMEOUT = 408;
  static const int CONFLICT = 409;
  static const int GONE = 410;
  static const int LENGTH_REQUIRED = 411;
  static const int PRECONDITION_FAILED = 412;
  static const int TOO_MANY_REQUESTS = 429;

  static bool isClientError(int code) => code > 400 && code < 500;
}

/**
 * Marks something as not being ready or complete.
 */
class NotReadyYet {
  /**
   * Informational Message
   */
  final String message;
  
  const NotReadyYet(this.message);
}

/**
 * Specifies the original API Field Name
 */
class ApiName {
  /**
   * Original API Field Name
   */
  final String name;
  
  const ApiName(this.name);
}

/**
 * Specifies that something should be only used when the specified condition is met.
 */
class OnlyWhen {
  /**
   * Condition
   */
  final String condition;
  
  const OnlyWhen(this.condition);
}

/**
 * Internal method to handle null for parsing dates.
 */
DateTime parse_date(String input) {
  if (input == null) {
    return null;
  }
  
  return DateTime.parse(input);
}

String buildQueryString(Map<String, String> params) {
  var queryString = new StringBuffer();
  
  if (params.isNotEmpty && !params.values.every((value) => value == null)) {
    queryString.write("?");
  }
  
  var i = 0;
  for (var key in params.keys) {
    i++;
    if (params[key] == null) {
      continue;
    }
    queryString.write("${key}=${Uri.encodeComponent(params[key])}");
    if (i != params.keys.length) {
      queryString.write("&");
    }
  }
  return queryString.toString();
}
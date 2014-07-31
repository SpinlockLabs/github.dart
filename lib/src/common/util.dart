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
 * Internal method to handle null for parsing dates.
 */
DateTime parse_date(String input) {
  if (input == null) {
    return null;
  }
  
  return DateTime.parse(input);
}
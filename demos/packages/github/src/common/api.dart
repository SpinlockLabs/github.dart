part of github.common;

/**
 * GitHub Rate Limit Information
 */
class RateLimit {
  /**
   * Maximum number of requests
   */
  final int limit;

  /**
   * Remaining number of requests
   */
  final int remaining;

  /**
   * Time when the limit expires
   */
  final DateTime resets;

  RateLimit(this.limit, this.remaining, this.resets);

  static RateLimit fromHeaders(Map<String, String> headers) {
    var limit = int.parse(headers['x-ratelimit-limit']);
    var remaining = int.parse(headers['x-ratelimit-remaining']);
    var resets = new DateTime.fromMillisecondsSinceEpoch(int.parse(headers['x-ratelimit-reset']) * 1000);
    return new RateLimit(limit, remaining, resets);
  }
}

class APIStatus {
  final GitHub github;

  String status;

  @ApiName("last_updated")
  DateTime lastUpdatedAt;
  
  @ApiName("created_on")
  DateTime createdOn;
  
  @ApiName("body")
  String message;

  APIStatus(this.github);

  static APIStatus fromJSON(GitHub github, input) {
    if (input == null) return null;
    
    return new APIStatus(github)
        ..status = input['status']
        ..message = input['body']
        ..lastUpdatedAt = parseDateTime(input['last_updated'])
        ..createdOn = parseDateTime(input['created_on']);
  }
}

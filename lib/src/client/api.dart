part of github.client;

class RateLimit {
  final int limit;
  final int remaining;
  final DateTime resets;
  
  RateLimit(this.limit, this.remaining, this.resets);
  
  static RateLimit fromHeaders(Map<String, String> headers) {
    var limit = int.parse(headers['x-ratelimit-limit']);
    var remaining = int.parse(headers['x-ratelimit-remaining']);
    var resets = new DateTime.fromMillisecondsSinceEpoch(int.parse(headers['x-ratelimit-reset']) * 1000);
    return new RateLimit(limit, remaining, resets);
  }
}

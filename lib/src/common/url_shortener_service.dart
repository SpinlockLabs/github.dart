part of github.common;

/// The [UrlShortenerService] provides a handy method to access GitHub's
/// url shortener.
///
/// API docs: https://github.com/blog/985-git-io-github-url-shortener
class UrlShortenerService extends Service {
  UrlShortenerService(GitHub github) : super(github);

  /// Shortens the provided [url]. An optional [code] can be provided to create
  /// your own vanity URL.
  Future<String> shortenUrl(String url, {String code}) {
    var params = <String, String>{};

    params['url'] = url;

    if (code != null) {
      params['code'] = code;
    }

    return _github
        .request("POST", "http://git.io/", params: params)
        .then((response) {
      if (response.statusCode != StatusCodes.CREATED) {
        throw new GitHubError(_github, "Failed to create shortened url!");
      }

      return response.headers["Location"].split("/").last;
    });
  }
}

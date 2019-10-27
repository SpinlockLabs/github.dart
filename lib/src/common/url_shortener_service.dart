import 'dart:async';
import 'package:github/src/common.dart';

/// The [UrlShortenerService] provides a handy method to access GitHub's
/// url shortener.
///
/// API docs: https://github.com/blog/985-git-io-github-url-shortener
class UrlShortenerService extends Service {
  UrlShortenerService(GitHub github) : super(github);

  /// Shortens the provided [url]. An optional [code] can be provided to create
  /// your own vanity URL.
  Future<String> shortenUrl(String url, {String code}) {
    final params = <String, dynamic>{};

    params['url'] = url;

    if (code != null) {
      params['code'] = code;
    }

    return github
        .request('POST', 'http://git.io/', params: params)
        .then((response) {
      if (response.statusCode != StatusCodes.CREATED) {
        throw GitHubError(github, 'Failed to create shortened url!');
      }

      return response.headers['Location'].split('/').last;
    });
  }
}

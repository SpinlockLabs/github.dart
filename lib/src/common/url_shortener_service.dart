import 'dart:async';
import 'package:github/src/common.dart';

/// The [UrlShortenerService] provides a method to access GitHub's
/// legacy git.io url shortener.
///
/// NOTE: The git.io service was deprecated and discontinued by GitHub in 2022.
/// This service is retained for backwards compatibility only.
@Deprecated(
    'git.io was discontinued by GitHub in 2022 and is no longer operational.')
class UrlShortenerService extends Service {
  UrlShortenerService(super.github);

  /// Shortens the provided [url]. An optional [code] can be provided to create
  /// your own vanity URL.
  @Deprecated(
      'git.io was discontinued by GitHub in 2022 and is no longer operational.')
  Future<String> shortenUrl(String url, {String? code}) {
    final params = <String, dynamic>{};

    params['url'] = url;

    if (code != null) {
      params['code'] = code;
    }

    // Never send authentication credentials to git.io; use HTTPS.
    return github.request('POST', 'https://git.io/',
        params: params, headers: {}).then((response) {
      if (response.statusCode != StatusCodes.CREATED) {
        throw GitHubError(github, 'Failed to create shortened url!');
      }

      final location =
          response.headers['location'] ?? response.headers['Location'];
      if (location == null) {
        throw GitHubError(github, 'Missing Location header in response');
      }
      return location.split('/').last;
    });
  }
}

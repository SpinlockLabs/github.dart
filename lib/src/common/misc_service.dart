import 'dart:async';
import 'dart:convert';
import 'package:github/src/common.dart';

/// The [MiscService] handles communication with misc related methods of the
/// GitHub API.
///
/// API docs: https://developer.github.com/v3/misc/
class MiscService extends Service {
  MiscService(GitHub github) : super(github);

  /// Fetches all emojis available on GitHub
  /// Returns a map of the name to a url of the image.
  ///
  /// API docs: https://developer.github.com/v3/emojis/
  Future<Map<String, String>> listEmojis() {
    final r = github.getJSON<Map, Map<String, String>>(
      '/emojis',
      statusCode: StatusCodes.OK,
      convert: (Map json) => json.cast<String, String>(),
    );
    return r;
  }

  /// Lists available .gitignore template names.
  ///
  /// API docs: https://developer.github.com/v3/gitignore/#listing-available-templates
  Future<List<String>> listGitignoreTemplates() {
    return github.getJSON('/gitignore/templates') as Future<List<String>>;
  }

  /// Gets a .gitignore template by [name].
  /// All template names can be fetched using [listGitignoreTemplates].
  ///
  /// API docs: https://developer.github.com/v3/gitignore/#get-a-single-template
  Future<GitignoreTemplate> getGitignoreTemplate(String name) =>
      github.getJSON('/gitignore/templates/$name',
          convert: (i) => GitignoreTemplate.fromJson(i));

  /// Renders Markdown from the [input].
  ///
  /// [mode] is the markdown mode. (either 'gfm', or 'markdown')
  /// [context] is the repository context. Only take into account when [mode] is 'gfm'.
  ///
  /// API docs: https://developer.github.com/v3/markdown/#render-an-arbitrary-markdown-document
  Future<String> renderMarkdown(String input,
      {String mode = 'markdown', String context}) {
    return github
        .request('POST', '/markdown',
            body: jsonEncode({'text': input, 'mode': mode, 'context': context}))
        .then((response) {
      return response.body;
    });
  }

  // TODO: Implement renderMarkdownRaw: https://developer.github.com/v3/markdown/#render-a-markdown-document-in-raw-mode

  // TODO: Implement apiMeta: https://developer.github.com/v3/markdown/#render-a-markdown-document-in-raw-mode

  /// Gets API Rate Limit Information
  ///
  /// API docs: https://developer.github.com/v3/rate_limit/
  Future<RateLimit> getRateLimit() {
    return github.request('GET', '/').then((response) {
      return RateLimit.fromHeaders(response.headers);
    });
  }

  /// Gets the GitHub API Status.
  Future<APIStatus> getApiStatus() =>
      github.getJSON('https://status.github.com/api/status.json',
          statusCode: StatusCodes.OK, convert: (i) => APIStatus.fromJson(i));

  /// Returns an ASCII Octocat with the specified [text].
  Future<String> getOctocat([String text]) {
    final params = <String, dynamic>{};

    if (text != null) {
      params['s'] = text;
    }

    return github.request('GET', '/octocat', params: params).then((response) {
      return response.body;
    });
  }

  /// Returns an ASCII Octocat with some wisdom.
  Future<String> getWisdom() => getOctocat();

  Future<String> getZen() =>
      github.request('GET', '/zen').then((response) => response.body);
}

class Octocat {
  String name;
  String image;
  String url;
}

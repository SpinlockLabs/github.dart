part of github.common;

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
    return _github.getJSON("/emojis", statusCode: StatusCodes.OK);
  }

  /// Lists available .gitignore template names.
  ///
  /// API docs: https://developer.github.com/v3/gitignore/#listing-available-templates
  Future<List<String>> listGitignoreTemplates() {
    return _github.getJSON("/gitignore/templates");
  }

  /// Gets a .gitignore template by [name].
  /// All template names can be fetched using [listGitignoreTemplates].
  ///
  /// API docs: https://developer.github.com/v3/gitignore/#get-a-single-template
  Future<GitignoreTemplate> getGitignoreTemplate(String name) {
    return _github.getJSON("/gitignore/templates/${name}",
        convert: GitignoreTemplate.fromJSON);
  }

  /// Renders Markdown from the [input].
  ///
  /// [mode] is the markdown mode. (either 'gfm', or 'markdown')
  /// [context] is the repository context. Only take into account when [mode] is 'gfm'.
  ///
  /// API docs: https://developer.github.com/v3/markdown/#render-an-arbitrary-markdown-document
  Future<String> renderMarkdown(String input,
      {String mode: "markdown", String context}) {
    return _github
        .request("POST", "/markdown",
            body: JSON
                .encode({"text": input, "mode": mode, "context": context}))
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
    return _github.request("GET", "/").then((response) {
      return RateLimit.fromHeaders(response.headers);
    });
  }

  /// Gets the GitHub API Status.
  Future<APIStatus> getApiStatus() {
    return _github.getJSON("https://status.github.com/api/status.json",
        statusCode: StatusCodes.OK, convert: APIStatus.fromJSON);
  }

  /// Returns a stream of Octocats from Octodex.
  ///
  /// See: https://octodex.github.com/
  Stream<Octocat> listOctodex({bool cors: false}) {
    var controller = new StreamController();

    var u = "http://feeds.feedburner.com/Octocats.xml";

    _github.client
        .request(new http.Request(
            "${cors ? "http://whateverorigin.org/get?url=" : ""}${cors ? Uri.encodeComponent(u) : u}"))
        .then((response) {
      var document = htmlParser.parse(response.body);
      document.querySelectorAll("entry").forEach((entry) {
        var name = entry.querySelector("title").text;
        var c = "<html><body>" +
            entry.querySelector("content").innerHtml +
            "</body></html>";
        var content = htmlParser.parse(c);
        var image = content.querySelector("a img").attributes['src'];
        var url = entry.querySelector("link").attributes['href'];

        controller.add(new Octocat()
          ..image = image
          ..name = name
          ..url = url);
      });
      return controller.close();
    });

    return controller.stream;
  }

  /// Returns an ASCII Octocat with the specified [text].
  Future<String> getOctocat([String text]) {
    var params = {};

    if (text != null) {
      params["s"] = text;
    }

    return _github.request("GET", "/octocat", params: params).then((response) {
      return response.body;
    });
  }

  /// Returns an ASCII Octocat with some wisdom.
  Future<String> getWisdom() => getOctocat();

  Future<String> getZen() =>
      _github.request("GET", "/zen").then((response) => response.body);
}

class Octocat {
  String name;
  String image;
  String url;
}

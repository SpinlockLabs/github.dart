part of github.common;

Future<String> _shortenUrl(GitHub github, String url, {String code}) {
  var params = {};
  
  params['url'] = url;
  
  if (code != null) {
    params['code'] = code;
  }
  
  return github.request("POST", "http://git.io/", params: params).then((response) {
    if (response.statusCode != StatusCodes.CREATED) {
      throw new GitHubError(github, "Failed to create shortened url!");
    }
    
    return response.headers["Location"].split("/").last;
  });
}

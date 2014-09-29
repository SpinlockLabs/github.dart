/// This library contains configuration parameters for integration tests.
/// 
/// **Warning:** Integration tests run against the live GitHub API. It is 
/// recommended that you use a dedicated test account.
library github.test.integration.config;

// Note: Do not commit any real values to a repository.

/// The (test) repository owner.
const String repoOwner = '';

/// The (test) repository name.
const String repoName = '';

/// The OAuth2 token. 
/// See https://help.github.com/articles/creating-an-access-token-for-command-line-use
const String authToken = '';
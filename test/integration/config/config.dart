/// This library contains configuration parameters for integration tests.
/// 
/// **Warning:** Integration tests run against the live GitHub API. It is 
/// recommended that you use a dedicated test account.
library github.test.integration.config;

import 'dart:async';
import 'package:unittest/unittest.dart';
import 'package:github/common.dart'; 


// ##########################################################
// ## Define your test configuration here!                 ##
// ## Note: Do not commit any real values to a repository. ##
// ##########################################################
/// Importing "config_server.dart" will run the tests on the command line.
/// Importing "config_browser.dart" will run the tests in the browser.
import 'config_server.dart';
//import 'config_browser.dart';

/// The (test) repository owner.
const String repoOwner = 'your-github-name';

/// The (test) repository name.
const String repoName = 'your-repo';

/// The OAuth2 token. 
/// See https://help.github.com/articles/creating-an-access-token-for-command-line-use
const String authToken = 'your-token';
// ##########################################################


GitHub github;
RepositorySlug slug;

/// Sets up the integration test configuration. Depending on the config import
/// it will either run in the browser or run on the command line.
void useIntegrationTestConfig() {
  unittestConfiguration = new IntegrationTestConfig();
}


/// Initializes the repository. If it already exists, the repo is deleted and
/// recreated.
Future<bool> createRepo() {
  print('Creating the repository: ${slug.fullName}');
  var completer = new Completer();
  
  Future<bool> createRepo() {
    return github.repositories.createRepository(new CreateRepository(slug.name)
        ..autoInit = true)
      .then((_) => completer.complete(true))
      .catchError((e) => completer.completeError(e));
  };
  
  github.repositories.getRepository(slug)
    .then((fetchedRepo) {
      // Repository exists --> delete it.
      return github.repositories.deleteRepository(slug);
    })
    .then((deleted) {
      // Repository deleted, ready to create it again.
      return createRepo();
    })
    .catchError((error) {
      // No repository, ready to create a new one.
      return createRepo();
    }, test: (e) => e is RepositoryNotFound);
  
  return completer.future;
}
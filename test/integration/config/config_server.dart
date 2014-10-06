library github.test.integration.config_server;

import 'package:unittest/unittest.dart';
import 'package:github/server.dart';
import 'package:github/common.dart'; 
import 'config.dart';

/// The integration test configuration for the command-line.
class IntegrationTestConfig extends SimpleConfiguration {
  bool get autoStart => false;
  
  void onInit() {
    super.onInit();
    
    print('Initializing GitHub as command-line tests');
    initGitHub();
    github = createGitHubClient(auth: new Authentication.withToken(authToken));
    slug = new RepositorySlug(repoOwner, repoName);
    
    // Initialize repository, first commit and run the tests.
    createRepo().then((_) => runTests());
  }
  
  void onDone(bool success) {
    super.onDone(success);
    print('Disposing GitHub');
    github.dispose();
  }
}
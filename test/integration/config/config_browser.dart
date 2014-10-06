library github.test.integration.config_browser;

import 'package:unittest/unittest.dart';
import 'package:unittest/html_config.dart';
import 'package:github/browser.dart';
import 'package:github/common.dart'; 
import 'config.dart';

/// The integration test configuration for the browser.
class IntegrationTestConfig extends HtmlConfiguration {
  bool get autoStart => false;
  
  IntegrationTestConfig() : super(false);
  
  void onInit() {
    super.onInit();
    
    print('Initializing GitHub as browser tests');
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
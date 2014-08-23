library github.browser;

import 'package:http/browser_client.dart';

import 'client.dart';
export 'client.dart';

void initGitHub() {
  GitHub.defaultClient = () => new BrowserClient();
}
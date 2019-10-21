import 'package:github/src/common.dart';

GitHub createGitHubClient(
        {Authentication auth, String endpoint = "https://api.github.com"}) =>
    throw UnsupportedError(
        'Cannot create a client without dart:html or dart:io.');

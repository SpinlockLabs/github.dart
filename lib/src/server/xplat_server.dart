import 'dart:io';
import 'package:github/src/common.dart';
import 'package:github/src/common/xplat_common.dart'
    show findAuthenticationInMap;

export 'hooks.dart';

/// Looks for GitHub Authentication Information in the current process environment.
///
/// Checks all the environment variables in [COMMON_GITHUB_TOKEN_ENV_KEYS] for tokens.
/// If the above fails, the GITHUB_USERNAME and GITHUB_PASSWORD keys will be checked.
Authentication findAuthenticationFromEnvironment() {
  if (Platform.isMacOS) {
    final result = Process.runSync(
        'security', const ['find-internet-password', '-g', '-s', 'github.com']);

    if (result.exitCode == 0) {
      final out = result.stdout.toString();

      var username = out.split('"acct"<blob>="')[1];
      username = username.substring(0, username.indexOf('\n'));
      username = username.substring(0, username.length - 1);
      var password = result.stderr.toString().split('password:')[1].trim();
      password = password.substring(1, password.length - 1);
      return Authentication.basic(username.trim(), password.trim());
    }
  }

  return findAuthenticationInMap(Platform.environment) ??
      Authentication.anonymous();
}

/// The code inspired by the http package from
/// https://github.com/dart-lang/http/blob/9a17157e6a71972f929a95c6b2b36992e5e02c6d/lib/src/client.dart#L11-L16

export 'package:github/src/github_stub.dart'
    if (dart.library.html) 'package:github/browser.dart'
    if (dart.library.io) 'package:github/server.dart';

export 'package:github/src/common.dart';

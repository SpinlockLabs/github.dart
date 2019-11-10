# GitHub for Dart

![](https://github.com/SpinlockLabs/github.dart/workflows/Dart%20CI/badge.svg)
[![Pub](https://img.shields.io/pub/v/github.svg)](https://pub.dartlang.org/packages/github)

This is a library for interacting with GitHub in Dart. It works on all platforms including web, server, and Flutter.
Please submit issues and pull requests, help out, or just give encouragement.

**Notice**: We are looking for contributors. If you're interested or have questions, join the chat at https://gitter.im/SpinlockLabs/community

## Features

- Works on the Server, Browser, and Flutter
- Really Fast
- Plugable API
- Supports Authentication
- Builtin OAuth2 Flow
- Hook Server Helper

## Links

- [Library Demos](http://github.directcode.org/demos/)
- [Pub Package](https://pub.dartlang.org/packages/github)
- [Wiki](https://github.com/SpinlockLabs/github.dart/wiki)
- [Latest API reference](https://pub.dev/documentation/github/latest/)

## Getting Started

First, add the following to your pubspec.yaml:

```yaml
dependencies:
  github: ^6.0.0
```

Then import the library

```dart
import 'package:github/github.dart';
```

and then use it:

### Example

```dart
import 'package:github/github.dart';

Future<void> main() async {
  /* Create a GitHub Client, with anonymous authentication by default */
  var github = GitHub();

  /*
  or Create a GitHub Client and have it try to find your token or credentials automatically
  In Flutter and in server environments this will search environment variables in this order
  GITHUB_ADMIN_TOKEN
  GITHUB_DART_TOKEN
  GITHUB_API_TOKEN
  GITHUB_TOKEN
  HOMEBREW_GITHUB_API_TOKEN
  MACHINE_GITHUB_API_TOKEN
  and then GITHUB_USERNAME and GITHUB_PASSWORD

  In a browser it will search keys in the same order first through the query string parameters
  and then in window sessionStorage
  */
  var github = GitHub(auth: findAuthenticationFromEnvironment());

  /* or Create a GitHub Client using an auth token */
  var github = GitHub(auth: Authentication.withToken('YourTokenHere'));

  /* or Create a GitHub Client using a username and password */
  var github = GitHub(auth: Authentication.basic('username', 'password'));

  Repository repo = await github.repositories.getRepository(RepositorySlug('user_or_org', 'repo_name'));
  /* Do Something with repo */
}
```

## Contacting Us

Join our Gitter chat at https://gitter.im/SpinlockLabs/community

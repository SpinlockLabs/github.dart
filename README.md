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
- [Wiki](https://github.com/DirectMyFile/github.dart/wiki)
- [Latest API reference](https://pub.dev/documentation/github/latest/)

## Getting Started

First, add the following to your pubspec.yaml:

```yaml
dependencies:
  github: ^5.0.0
```

Then import the library

For the browser use:
```dart
import 'package:github/browser.dart';
```

and for the server or Flutter use:
```dart
import 'package:github/server.dart';
```

and then use it:

**Example**
```dart
import 'package:github/browser.dart';

void main() async {
  /* Create a GitHub Client */
  var github = createGitHubClient();

  /* or Create a GitHub Client using an auth token */
  var github = createGitHubClient(auth: new Authentication.withToken("YourTokenHere"));  

  Repository repo = await github.repositories.getRepository(new RepositorySlug("user_or_org", "repo_name"));
  /* Do Something with repo */
}
```

## Contacting Us

Join our Gitter chat at https://gitter.im/SpinlockLabs/community

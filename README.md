# GitHub for Dart

This is a Client Library for GitHub in Dart. I wrote this out of necessity, and then when I got a great reaction from the Dart community, I decided to put a lot of effort into it.
Please submit issues and pull requests, join my IRC channel, help out, or just give me encouragement, I will surely do everything you ask.

## Links

- [Library Demos](http://github4dart.directcode.org/demos/)
- [Pub Package](https://pub.dartlang.org/packages/github)

## Features

### Current

- Works on the Server and in the Browser
- Really Fast
- Plugable API
- Supports Authentication
- Builtin OAuth2 Flow

### Work in Progress

- Support all the GitHub APIs (Progress: 70%)
- Full Documentation (Progress: 5%)

### Planned

- Hook Server Helper

## Getting Started

First, add the following to your pubspec.yaml:

```yaml
dependencies:
  github: ">=0.5.8 <1.0.0"
```

Then import the library and use it:

**For the Server**
```dart
import 'package:github/client.dart';

void main() {
  var github = new GitHub();
  github.repository(new RepositorySlug("DirectMyFile", "github.dart")).then((Repository repo) {
    /* Do Something */
  });
}
```

**For the Browser**
```dart
import 'package:github/browser.dart';

void main() {
  /* Required to setup GitHub for the Browser */
  initGitHub();
  
  var github = new GitHub();
  github.repository(new RepositorySlug("DirectMyFile", "github.dart")).then((Repository repo) {
    /* Do Something */
  });
}
```

## Authentication

To use a GitHub token:

```dart
var github = new GitHub(auth: new Authentication.withToken("YourTokenHere"));
```

## Contacting Us

You can find us on `irc.esper.net` at `#directcode`.

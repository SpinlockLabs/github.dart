# GitHub for Dart

This is a Client Library for GitHub in Dart.

## Features

- Works on the Server and in the Browser.
- Fast, really fast.
- Customizable
- Fully Tested
- Supports Authentication

## Getting Started

First, add the following to your pubspec.yaml:

```
dependencies:
  github: ">=0.4.0 <1.0.0"
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

## Links

- [Demos](http://github4dart.directcode.org/demos/)
- [Pub Package](https://pub.dartlang.org/packages/github)

## Contacting Us

You can find us on `irc.esper.net` at `#directcode`.

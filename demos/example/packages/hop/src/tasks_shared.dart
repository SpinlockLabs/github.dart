library hop_tasks.shared;

import 'dart:io';

/// Used by scripts which invoke the built-in Dart commands.
///
/// Specifically, it appends '.bat' to commands when run on Windows.
String getPlatformBin(String binName) {
  if (Platform.operatingSystem == 'windows') {
    return '${binName}.bat';
  } else {
    return binName;
  }
}

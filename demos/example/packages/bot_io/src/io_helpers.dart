library bot_io.io_helpers;

import 'dart:async';
import 'dart:io';

import 'package:bot/bot.dart';
import 'package:path/path.dart' as p;

import 'entity_validator.dart';

class IoHelpers {
  static Future<bool> verifyContents(Directory dir,
      Map<String, dynamic> content) {
    return dir.exists()
        .then((bool doesExist) {
          if(!doesExist) {
            return false;
          } else {
            return EntityValidator.validateDirectoryFromMap(dir, content)
                .isEmpty;
          }
        });
  }

  static Future<bool> isEmpty(Directory dir) {
    assert(dir != null);
    return verifyContents(dir, {});
  }
}

// TODO(kevmoo) document copyDirectory
// TODO(kevmoo) test copyDirectory
Future copyDirectory(String sourceDirectory, String targetDir) {
  requireArgument(FileSystemEntity.isDirectorySync(sourceDirectory),
      'sourceDirectory', 'Must exist');
  _requireEmptyDir(targetDir, 'targetDir');

  var dir = new Directory(sourceDirectory);

  return streamForEachAsync(dir.list(recursive: true, followLinks: false),
      (fse) => _copyItem(fse, sourceDirectory, targetDir));
}

// TODO(kevmoo) document
dynamic _copyItem(FileSystemEntity fse, String source, String target) {
  if(fse is Directory) return null;
  if(fse is Link) {
    throw new ArgumentError('Cannot rock on the link at ${fse.path}');
  }

  var relative = p.relative(fse.path, from: source);

  var newPath = p.join(target, relative);

  var parentDirPath = p.dirname(newPath);

  var parentDir = new Directory(parentDirPath);

  return parentDir.create(recursive: true).then((_) {
    return (fse as File).copy(newPath);
  });
}

// TODO(kevmoo) document
void _requireEmptyDir(String path, String argName) {
  requireArgument(FileSystemEntity.isDirectorySync(path), argName,
      '$path does not exist or is not a directory.');

  var dir = new Directory(path);

  requireArgument(dir.listSync().isEmpty, argName,
      '$path is not empty.');
}

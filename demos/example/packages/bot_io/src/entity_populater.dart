library bot_io.entity_populater;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

abstract class EntityPopulater {

  static Future<FileSystemEntity> populate(String path, dynamic source,
      {bool createParentDirectories: false, bool overwriteExisting: false,
    bool leaveExistingDirs: false}) {

    if (source is String) {
      var stringStream = new Stream.fromIterable([source]);
      source = UTF8.encoder.bind(stringStream);
    } else if (source is File) {
      source = source.openRead();
    }

    if (source is Stream) {
      return _ensurePath(path, createParentDirectories: createParentDirectories,
          overwriteExisting: overwriteExisting,
          leaveExistingDir: leaveExistingDirs)
          .then((_) => _populateFileWithStream(path, source));
    } else if(source is Map) {
      return _ensurePath(path, createParentDirectories: createParentDirectories,
          overwriteExisting: overwriteExisting,
          leaveExistingDir: leaveExistingDirs)
          .then((_) => _populateDirWithMap(path, source, overwriteExisting,
              leaveExistingDirs));
    }

    throw new Exception("Cannot populate from '$source'.");
  }

  static Future<Directory> updateDirectory(String path,
      Map<String, dynamic> source) {
    assert(path != null);
    assert(source != null);

    var existingDir = new Directory(path);

    return existingDir.exists()
        .then((bool exists) {
          if(!exists) {
            throw new EntityPopulatorException._internal('Expected directory to'
                ' exist at $path', path);
          }

          return _populateDirWithMap(path, source, true, true);
        });
  }

  /**
   * We assume [_ensurePath] has been called first.
   */
  static Future<File> _populateFileWithStream(String path,
      Stream<List<int>> content) {

    var file = new File(path);

    return content.pipe(file.openWrite())
      .then((_) => file);
  }

  /**
   * We assume [_ensurePath] has been called first.
   */
  static Future<Directory> _populateDirWithMap(String path,
      Map<String, dynamic> content, bool overwriteExisting,
      bool leaveExistingDir) {

    var dir = new Directory(path);

    // calling _ensurePath *should* ensure the parent dir is created
    return dir.create(recursive: false)
        .then((_) {
          return Future.forEach(content.keys, (String entityName) {
            // TODO: assert entityName has no path characters, right?

            var entityPath = p.join(path, entityName);
            return populate(entityPath, content[entityName],
                overwriteExisting: overwriteExisting,
                leaveExistingDirs: leaveExistingDir);

          });
        })
        .then((_) => dir);
  }

  static Future _ensurePath(String path,
      {bool createParentDirectories: false, bool overwriteExisting: false,
    bool leaveExistingDir: false}) {

    final dirName = p.dirname(path);
    var parentDir = new Directory(dirName);
    return parentDir.exists()
        .then((bool parentDirExists) {
          if(!parentDirExists && !createParentDirectories) {
            throw new EntityPopulatorException._internal(
                'Parent directory does not exist', path);
          } else if(parentDirExists) {

            return FileSystemEntity.type(path, followLinks: false)
                .then((FileSystemEntityType existingType) {

                  if(existingType != FileSystemEntityType.NOT_FOUND) {

                    if(leaveExistingDir && existingType == FileSystemEntityType.DIRECTORY) {
                      return null;
                    }

                    if(overwriteExisting) {
                      switch(existingType) {
                        case FileSystemEntityType.DIRECTORY:
                          final dir = new Directory(path);
                          return dir.delete(recursive: true);
                        case FileSystemEntityType.LINK:
                          final link = new Link(path);
                          return link.delete();
                        case FileSystemEntityType.FILE:
                          final file = new File(path);
                          return file.delete();
                      }

                    } else {
                      throw new EntityPopulatorException._internal(
                          'Existing entity.', path);
                    }
                  }
                })
                .then((_) => null);

          }

          if(!parentDirExists && createParentDirectories) {
            return parentDir.create(recursive: true);
          }
        });
  }
}

class EntityPopulatorException implements Exception {
  final String message;
  final String targetPath;

  EntityPopulatorException._internal(this.message, this.targetPath) {
    assert(message != null);
    assert(targetPath != null);
  }

  @override
  String toString() => '$runtimeType: $message\t$targetPath';
}


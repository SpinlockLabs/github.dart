library bot_io.temp_dir;

import 'dart:async';
import 'dart:io';

import 'package:bot/bot.dart';
import 'package:path/path.dart' as p;

import 'entity_populater.dart';
import 'io_helpers.dart';

class TempDir {
  final Directory dir;

  bool _disposed = false;

  /**
   * An easy way to create and use a temporory directory as part of an
   * asynchronous flow.
   *
   * The underlying [TempDir] will be disposed when the returned [Future]
   * completes.
   *
   * The value returned by [func] (if any) will be returned by [then].
   */
  static Future then(Future func(Directory dir)) {
    TempDir tmpDir;

    return TempDir.create()
        .then((value) {
          tmpDir = value;

          return func(tmpDir.dir);
        })
        .whenComplete(() {
          if(tmpDir != null) {
            return tmpDir.dispose();
          }
        });
  }

  // TODO: ponder added optional 'template' param here
  static Future<TempDir> create() {
    return Directory.systemTemp.createTemp()
        .then((newDir) => new TempDir._internal(newDir));
  }

  TempDir._internal(this.dir) {
    assert(this.dir != null);
    assert(this.dir.existsSync());
    assert(p.isAbsolute(this.dir.path));
  }

  String get path => dir.path;

  bool get isDisposed => _disposed;

  Future<TempDir> populate(source) {
    return EntityPopulater.populate(path, source,
        createParentDirectories: false,
        overwriteExisting: false,
        leaveExistingDirs: true)
        .then((Directory outputDir) {
          assert(path == outputDir.path);
          return this;
        });
  }

  Future<bool> verifyContents(Map<String, dynamic> content) {
    return IoHelpers.verifyContents(dir, content);
  }

  Future<bool> isEmpty() {
    return IoHelpers.isEmpty(dir);
  }

  String toString() => "TempDir: $path";

  Future dispose() {
    require(_disposed == false, 'Already disposed ore in the process of being'
        ' disposed.');
    _disposed = null;
    return dir.delete(recursive: true)
        .then((_) {
          _disposed = true;
          return null;
        });
  }
}

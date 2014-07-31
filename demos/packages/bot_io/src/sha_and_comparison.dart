library bot_io.sha_and_comparison;

import 'dart:async';
import 'dart:io';

import 'package:crypto/crypto.dart';

/**
 * Returns a [Future] that evaluates to true if the contents of [file1] and
 * [file2] are the same.
 *
 * Equality is determined by comparing the result of [fileSha1Hex] for each
 * file.
 */
Future<bool> fileContentsMatch(File file1, File file2) {
  return Future.wait([fileSha1Hex(file1), fileSha1Hex(file2)])
      .then((List<String> shas) {
        assert(shas.length == 2);
        return shas[0] == shas[1];
  });
}

/**
 * Returns the 40-character hex SHA1 value of the provided file.
 *
 * If [file] is null or does not exist, errors will occur.
 */
Future<String> fileSha1Hex(File file) =>
  _getFileSha1(file).then(CryptoUtils.bytesToHex);

Future<List<int>> _getFileSha1(File source) {
  var sha1 = new SHA1();

  return source.openRead().forEach((list) {
    sha1.add(list);
  }).then((_) => sha1.close());
}

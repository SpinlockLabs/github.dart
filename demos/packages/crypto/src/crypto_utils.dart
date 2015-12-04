// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of crypto;

abstract class _CryptoUtils {
  static String bytesToHex(List<int> bytes) {
    var result = new StringBuffer();
    for (var part in bytes) {
      result.write('${part < 16 ? '0' : ''}${part.toRadixString(16)}');
    }
    return result.toString();
  }

  static String bytesToBase64(List<int> bytes,
                              [bool urlSafe = false,
                               bool addLineSeparator = false]) {
    return BASE64.encode(bytes,
                         urlSafe: urlSafe,
                         addLineSeparator: addLineSeparator);
  }

  static List<int> base64StringToBytes(String input) {
    return BASE64.decode(input);
  }
}

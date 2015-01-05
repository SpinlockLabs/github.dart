part of github.common;

/// Converts from a Base64 String to a UTF-8 String.
String base64ToUtf8(String base64) {
  var bytes = CryptoUtils.base64StringToBytes(base64);
  return UTF8.decode(bytes);
}

/// Converts a UTF-8 String to a Base64 String.
String utf8ToBase64(String utf8) {
  var bytes = UTF8.encode(utf8);
  return CryptoUtils.bytesToBase64(bytes);
}

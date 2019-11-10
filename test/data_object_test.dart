import 'dart:convert';

import 'package:test/test.dart';
import 'package:github/github.dart';

const _licenseJson = r'''  {
  "name": "LICENSE",
  "path": "LICENSE",
  "sha": "68bcabfb39b7af5a1f5efbb8f651d51e16d60398",
  "size": 2500,
  "url": "https://api.github.com/repos/dart-lang/sdk/contents/LICENSE?ref=master",
  "html_url": "https://github.com/dart-lang/sdk/blob/master/LICENSE",
  "git_url": "https://api.github.com/repos/dart-lang/sdk/git/blobs/68bcabfb39b7af5a1f5efbb8f651d51e16d60398",
  "download_url": "https://raw.githubusercontent.com/dart-lang/sdk/master/LICENSE",
  "type": "file",
  "content": "VGhpcyBsaWNlbnNlIGFwcGxpZXMgdG8gYWxsIHBhcnRzIG9mIERhcnQgdGhh\ndCBhcmUgbm90IGV4dGVybmFsbHkKbWFpbnRhaW5lZCBsaWJyYXJpZXMuIFRo\nZSBleHRlcm5hbCBtYWludGFpbmVkIGxpYnJhcmllcyB1c2VkIGJ5CkRhcnQg\nYXJlOgoKNy1aaXAgLSBpbiB0aGlyZF9wYXJ0eS83emlwCkpTQ1JFIC0gaW4g\ncnVudGltZS90aGlyZF9wYXJ0eS9qc2NyZQpBbnQgLSBpbiB0aGlyZF9wYXJ0\neS9hcGFjaGVfYW50CmFyZ3M0aiAtIGluIHRoaXJkX3BhcnR5L2FyZ3M0agpi\nemlwMiAtIGluIHRoaXJkX3BhcnR5L2J6aXAyCkNvbW1vbnMgSU8gLSBpbiB0\naGlyZF9wYXJ0eS9jb21tb25zLWlvCkNvbW1vbnMgTGFuZyBpbiB0aGlyZF9w\nYXJ0eS9jb21tb25zLWxhbmcKRWNsaXBzZSAtIGluIHRoaXJkX3BhcnR5L2Vj\nbGlwc2UKZ3N1dGlsIC0gaW4gdGhpcmRfcGFydHkvZ3N1dGlsCkd1YXZhIC0g\naW4gdGhpcmRfcGFydHkvZ3VhdmEKaGFtY3Jlc3QgLSBpbiB0aGlyZF9wYXJ0\neS9oYW1jcmVzdApIdHRwbGliMiAtIGluIHNhbXBsZXMvdGhpcmRfcGFydHkv\naHR0cGxpYjIKSlNPTiAtIGluIHRoaXJkX3BhcnR5L2pzb24KSlVuaXQgLSBp\nbiB0aGlyZF9wYXJ0eS9qdW5pdApOU1MgLSBpbiB0aGlyZF9wYXJ0eS9uc3Mg\nYW5kIHRoaXJkX3BhcnR5L25ldF9uc3MKT2F1dGggLSBpbiBzYW1wbGVzL3Ro\naXJkX3BhcnR5L29hdXRoMmNsaWVudApTUUxpdGUgLSBpbiB0aGlyZF9wYXJ0\neS9zcWxpdGUKd2ViZXJrbmVjaHQgLSBpbiB0aGlyZF9wYXJ0eS93ZWJlcmtu\nZWNodAp6bGliIC0gaW4gdGhpcmRfcGFydHkvemxpYgpmZXN0IC0gaW4gdGhp\ncmRfcGFydHkvZmVzdAptb2NraXRvIC0gaW4gdGhpcmRfcGFydHkvbW9ja2l0\nbwoKVGhlIGxpYnJhcmllcyBtYXkgaGF2ZSB0aGVpciBvd24gbGljZW5zZXM7\nIHdlIHJlY29tbWVuZCB5b3UgcmVhZCB0aGVtLAphcyB0aGVpciB0ZXJtcyBt\nYXkgZGlmZmVyIGZyb20gdGhlIHRlcm1zIGJlbG93LgoKQ29weXJpZ2h0IDIw\nMTIsIHRoZSBEYXJ0IHByb2plY3QgYXV0aG9ycy4gQWxsIHJpZ2h0cyByZXNl\ncnZlZC4KUmVkaXN0cmlidXRpb24gYW5kIHVzZSBpbiBzb3VyY2UgYW5kIGJp\nbmFyeSBmb3Jtcywgd2l0aCBvciB3aXRob3V0Cm1vZGlmaWNhdGlvbiwgYXJl\nIHBlcm1pdHRlZCBwcm92aWRlZCB0aGF0IHRoZSBmb2xsb3dpbmcgY29uZGl0\naW9ucyBhcmUKbWV0OgogICAgKiBSZWRpc3RyaWJ1dGlvbnMgb2Ygc291cmNl\nIGNvZGUgbXVzdCByZXRhaW4gdGhlIGFib3ZlIGNvcHlyaWdodAogICAgICBu\nb3RpY2UsIHRoaXMgbGlzdCBvZiBjb25kaXRpb25zIGFuZCB0aGUgZm9sbG93\naW5nIGRpc2NsYWltZXIuCiAgICAqIFJlZGlzdHJpYnV0aW9ucyBpbiBiaW5h\ncnkgZm9ybSBtdXN0IHJlcHJvZHVjZSB0aGUgYWJvdmUKICAgICAgY29weXJp\nZ2h0IG5vdGljZSwgdGhpcyBsaXN0IG9mIGNvbmRpdGlvbnMgYW5kIHRoZSBm\nb2xsb3dpbmcKICAgICAgZGlzY2xhaW1lciBpbiB0aGUgZG9jdW1lbnRhdGlv\nbiBhbmQvb3Igb3RoZXIgbWF0ZXJpYWxzIHByb3ZpZGVkCiAgICAgIHdpdGgg\ndGhlIGRpc3RyaWJ1dGlvbi4KICAgICogTmVpdGhlciB0aGUgbmFtZSBvZiBH\nb29nbGUgSW5jLiBub3IgdGhlIG5hbWVzIG9mIGl0cwogICAgICBjb250cmli\ndXRvcnMgbWF5IGJlIHVzZWQgdG8gZW5kb3JzZSBvciBwcm9tb3RlIHByb2R1\nY3RzIGRlcml2ZWQKICAgICAgZnJvbSB0aGlzIHNvZnR3YXJlIHdpdGhvdXQg\nc3BlY2lmaWMgcHJpb3Igd3JpdHRlbiBwZXJtaXNzaW9uLgpUSElTIFNPRlRX\nQVJFIElTIFBST1ZJREVEIEJZIFRIRSBDT1BZUklHSFQgSE9MREVSUyBBTkQg\nQ09OVFJJQlVUT1JTCiJBUyBJUyIgQU5EIEFOWSBFWFBSRVNTIE9SIElNUExJ\nRUQgV0FSUkFOVElFUywgSU5DTFVESU5HLCBCVVQgTk9UCkxJTUlURUQgVE8s\nIFRIRSBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZIEFO\nRCBGSVRORVNTIEZPUgpBIFBBUlRJQ1VMQVIgUFVSUE9TRSBBUkUgRElTQ0xB\nSU1FRC4gSU4gTk8gRVZFTlQgU0hBTEwgVEhFIENPUFlSSUdIVApPV05FUiBP\nUiBDT05UUklCVVRPUlMgQkUgTElBQkxFIEZPUiBBTlkgRElSRUNULCBJTkRJ\nUkVDVCwgSU5DSURFTlRBTCwKU1BFQ0lBTCwgRVhFTVBMQVJZLCBPUiBDT05T\nRVFVRU5USUFMIERBTUFHRVMgKElOQ0xVRElORywgQlVUIE5PVApMSU1JVEVE\nIFRPLCBQUk9DVVJFTUVOVCBPRiBTVUJTVElUVVRFIEdPT0RTIE9SIFNFUlZJ\nQ0VTOyBMT1NTIE9GIFVTRSwKREFUQSwgT1IgUFJPRklUUzsgT1IgQlVTSU5F\nU1MgSU5URVJSVVBUSU9OKSBIT1dFVkVSIENBVVNFRCBBTkQgT04gQU5ZClRI\nRU9SWSBPRiBMSUFCSUxJVFksIFdIRVRIRVIgSU4gQ09OVFJBQ1QsIFNUUklD\nVCBMSUFCSUxJVFksIE9SIFRPUlQKKElOQ0xVRElORyBORUdMSUdFTkNFIE9S\nIE9USEVSV0lTRSkgQVJJU0lORyBJTiBBTlkgV0FZIE9VVCBPRiBUSEUgVVNF\nCk9GIFRISVMgU09GVFdBUkUsIEVWRU4gSUYgQURWSVNFRCBPRiBUSEUgUE9T\nU0lCSUxJVFkgT0YgU1VDSCBEQU1BR0UuCg==\n",
  "encoding": "base64",
  "_links": {
    "self": "https://api.github.com/repos/dart-lang/sdk/contents/LICENSE?ref=master",
    "git": "https://api.github.com/repos/dart-lang/sdk/git/blobs/68bcabfb39b7af5a1f5efbb8f651d51e16d60398",
    "html": "https://github.com/dart-lang/sdk/blob/master/LICENSE"
  },
  "license": {
    "key": "other",
    "name": "Other",
    "spdx_id": null,
    "url": null,
    "node_id": "MDc6TGljZW5zZTA="
  }
}''';

void main() {
  test('License round-trip', () {
    final licenseJson = jsonDecode(_licenseJson) as Map<String, dynamic>;

    final instance = LicenseDetails.fromJson(licenseJson);

    final toJson = instance.toJson();

    expect(_prettyEncode(toJson), _prettyEncode(licenseJson));
  });
}

String _prettyEncode(obj) => const JsonEncoder.withIndent(' ').convert(obj);

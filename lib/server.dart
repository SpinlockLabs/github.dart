/**
 * GitHub for the Dart VM
 */
library github.server;

import "dart:async";
import "dart:io";
import "dart:convert";

import 'common.dart';
export 'common.dart';

import 'http.dart' as http;

part "src/server/hooks.dart";

void initGitHub() {
  GitHub.defaultClient = () => new _IOClient();
}

class _IOClient extends http.Client {
  
  final HttpClient client;
  
  _IOClient() : client = new HttpClient();
  
  @override
  Future<http.Response> request(http.Request request) {
    var completer = new Completer<http.Response>();
    client.openUrl(request.method, Uri.parse(request.url)).then((req) {
      request.headers.forEach(req.headers.set);
      if (request.body != null) {
        req.write(request.body);
      }
      return req.close();
    }).then((response) {
      response.transform(UTF8.decoder).join().then((value) {
        var map = {};
        
        response.headers.forEach((key, value) => map[key] = value.first);
        
        var resp = new http.Response(value, map, response.statusCode);
        completer.complete(resp);
      });
    });
    
    return completer.future;
  }
}
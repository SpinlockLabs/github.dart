import 'dart:async';
import 'dart:convert';
import 'dart:html';

Future<void> main() async {
  final request = await HttpRequest.request(
    'https://status.github.com/api/status.json',
    requestHeaders: {'Origin': window.location.origin},
  );

  final text = request.responseText;
  final map = json.decode(text);

  querySelector('#status')
    ..appendText(map['status'])
    ..classes.add('status-${map["status"]}');
}

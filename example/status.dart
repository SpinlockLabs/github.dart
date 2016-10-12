import 'dart:async';
import "dart:html";
import "dart:convert";

Future<Null> main() async {
  var request = await HttpRequest.request(
      "https://status.github.com/api/status.json",
      requestHeaders: {"Origin": window.location.origin});

  var text = request.responseText;
  var json = JSON.decode(text);

  querySelector("#status")
    ..appendText(json["status"])
    ..classes.add("status-${json["status"]}");
}

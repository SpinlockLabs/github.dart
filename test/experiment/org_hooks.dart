import "../helper.dart";
import 'dart:async';

Future main() async {
  var org = "IOT-DSA";

  var hooks = await github.organizations.listHooks(org).toList();

  for (var hook in hooks) {
    print(hook.config);
  }

  github.dispose();
}

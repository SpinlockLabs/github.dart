import 'dart:async';
import '../helper.dart';

Future main() async {
  const org = 'IOT-DSA';

  final hooks = await github.organizations.listHooks(org).toList();

  for (final hook in hooks) {
    print(hook.config);
  }

  github.dispose();
}

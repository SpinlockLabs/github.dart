import 'dart:html';
import 'common.dart';

void main() {
  final tokenInput = querySelector('#token') as InputElement;
  tokenInput.value = github.auth!.token ?? '';
  window.localStorage['GITHUB_TOKEN'] = tokenInput.value!;
  tokenInput.onKeyUp.listen((_) {
    window.localStorage['GITHUB_TOKEN'] = tokenInput.value!;
  });
}

import 'dart:html';
import 'common.dart';

void main() {
  final tokenInput = querySelector('#token') as InputElement;
  tokenInput.value = github.auth!.token ?? '';
  window.sessionStorage['GITHUB_TOKEN'] = tokenInput.value!;
  tokenInput.onKeyUp.listen((_) {
    window.sessionStorage['GITHUB_TOKEN'] = tokenInput.value!;
  });
}

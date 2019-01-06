import 'dart:html';

void main() {
  InputElement tokenInput = querySelector('#token');
  String token = window.sessionStorage['token'];
  tokenInput.value = token;
  tokenInput.onKeyUp.listen((_) {
    window.sessionStorage['token'] = tokenInput.value;
  });
}

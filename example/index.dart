import 'dart:html';

void main() {
  final InputElement tokenInput = querySelector('#token');
  final String token = window.sessionStorage['token'];
  tokenInput.value = token;
  tokenInput.onKeyUp.listen((_) {
    window.sessionStorage['token'] = tokenInput.value;
  });
}

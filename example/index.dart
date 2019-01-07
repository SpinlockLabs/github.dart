import 'dart:html';

void main() {
  InputElement tokenInput = querySelector('#token');
  ButtonElement removeTokenBtn = querySelector('#removeTokenBtn');
  String token = window.localStorage['token'];
  tokenInput.value = token;
  tokenInput.onKeyUp.listen((_) {
    window.localStorage['token'] = tokenInput.value;
  });
  removeTokenBtn.onClick.listen((_) => window.localStorage.remove('token'));
}

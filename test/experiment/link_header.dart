import 'package:github/src/util.dart';

void main() {
  var it = parseLinkHeader(
      '<https://api.github.com/user/1342004/repos?sort=stars&page=2>; rel="next", <https://api.github.com/user/1342004/repos?sort=stars&page=7>; rel="last"');
  print(it);
}

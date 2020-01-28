import 'package:github/src/common/util/pagination.dart';

void main() {
  final it = parseLinkHeader(
      '<https://api.github.com/user/1342004/repos?sort=stars&page=2>; rel="next", <https://api.github.com/user/1342004/repos?sort=stars&page=7>; rel="last"');
  print(it);
}

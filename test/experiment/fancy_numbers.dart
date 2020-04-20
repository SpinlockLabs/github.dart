import 'package:github/src/common/util/utils.dart';

void main() {
  test('1k', 1000);
  test('2k', 2000);
  test('2.2k', 2200);
  test('2.34k', 2340);
  test('1ht', 100000);
  test('1m', 1000000);
  test('3,000', 3000);
}

void test(String input, int expect) {
  final out = parseFancyNumber(input);
  if (out != expect) {
    print('ERROR: $input was parsed as $out but we expected $expect');
  } else {
    print('$input => $expect');
  }
}

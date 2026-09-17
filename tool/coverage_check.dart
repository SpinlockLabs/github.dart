import 'dart:io';

/// Validates that test coverage meets or exceeds the required floor.
///
/// Usage: dart run tool/coverage_check.dart [coverage_file_or_dir] [--min=percentage]
void main(List<String> args) {
  var minCoverage = 50.0;
  String? targetPath;

  for (final arg in args) {
    if (arg.startsWith('--min=')) {
      minCoverage = double.parse(arg.substring(6));
    } else if (!arg.startsWith('--')) {
      targetPath = arg;
    }
  }

  targetPath ??= 'coverage/lcov.info';
  final file = File(targetPath);

  if (!file.existsSync()) {
    print('Coverage file not found at $targetPath. Skipping coverage check.');
    exit(0);
  }

  final lines = file.readAsLinesSync();
  var linesFound = 0;
  var linesHit = 0;

  for (final line in lines) {
    if (line.startsWith('LF:')) {
      linesFound += int.tryParse(line.substring(3).trim()) ?? 0;
    } else if (line.startsWith('LH:')) {
      linesHit += int.tryParse(line.substring(3).trim()) ?? 0;
    }
  }

  if (linesFound == 0) {
    print('No executable lines found in $targetPath.');
    exit(0);
  }

  final percentage = (linesHit / linesFound) * 100.0;
  print(
      'Test line coverage: ${percentage.toStringAsFixed(2)}% ($linesHit / $linesFound lines hit)');
  print('Required coverage floor: ${minCoverage.toStringAsFixed(2)}%');

  if (percentage < minCoverage) {
    print(
        'Error: Coverage ${percentage.toStringAsFixed(2)}% is below required floor of ${minCoverage.toStringAsFixed(2)}%!');
    exit(1);
  }

  print('Coverage check passed successfully.');
}

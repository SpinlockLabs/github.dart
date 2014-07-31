part of hop_runner;

Future<int> inheritIO(Process process) {
  process.stdin.addStream(stdin);
  stdout.addStream(process.stdout);
  stderr.addStream(process.stderr);

  return process.exitCode;
}

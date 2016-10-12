#!/usr/bin/env dart
import "dart:async";
import "dart:io";

Directory packagesDirectory = new Directory("packages/");

void main(List<String> args) {
  var future = new Future.value(null);

  if (!packagesDirectory.existsSync()) {
    future = execute("pub get");
  }

  future.then((_) {
    var argz = (args.length > 0 ? " " : "") + args.join(" ");
    return execute("dart --checked tool/hop_runner.dart --color${argz}");
  });
}

dynamic execute(String cmdline) {
  var split = cmdline.split(" ");
  var command = split[0];
  split.remove(command);
  var args = split;
  return Process.start(command, args).then((Process process) {
    stdout.addStream(process.stdout);
    stderr.addStream(process.stderr);
    return process.exitCode;
  }).then((int exitCode) {
    if (exitCode != 0) {
      exit(exitCode);
    }
  });
}

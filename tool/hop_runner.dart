library hop_runner;

import 'dart:async';
import "dart:io";

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart' hide createAnalyzerTask;
import 'package:yaml/yaml.dart';

part 'docgen.dart';
part 'utils.dart';
part 'version.dart';
part 'analyze.dart';
part 'config.dart';

void main(List<String> args) {
  init();
  addTask("docs", createDocGenTask(".", out_dir: parse_config_value(getvar("docs.output"))));
  addTask("analyze", createAnalyzerTask(getvar("analyzer.files").map(parse_config_value)));
  addTask("version", createVersionTask());
  addTask("publish", createProcessTask("pub", args: ["publish", "-f"], description: "Publishes a New Version"), dependencies: ["version"]);
  addTask("bench", createBenchTask());
  addTask("test", createProcessTask("dart", args: ["--checked", getvar("test.file")], description: "Runs Unit Tests"));
  addChainedTask("check", getvar("check.tasks").map(parse_config_value).toList(), description: "Runs the Dart Analyzer and Unit Tests");
  runHop(args);
}

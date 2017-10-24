import 'package:build_runner/build_runner.dart';
import 'package:json_serializable/generators.dart';
import 'package:source_gen/source_gen.dart';

final buildActions = <BuildAction>[
  new BuildAction(
      new PartBuilder(const [
        const JsonSerializableGenerator(),
      ]),
      'github',
      inputs: ['lib/src/common.dart'])
];

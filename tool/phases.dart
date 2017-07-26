import 'package:build_runner/build_runner.dart';
import 'package:json_serializable/generators.dart';
import 'package:source_gen/source_gen.dart';

final PhaseGroup phases = new PhaseGroup.singleAction(
    new PartBuilder(const [
      const JsonSerializableGenerator(),
    ]),
    new InputSet('github', const ['lib/src/common.dart']));

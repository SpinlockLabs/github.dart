import 'package:build_runner/build_runner.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_gen/generators/json_serializable_generator.dart';

final PhaseGroup phases = new PhaseGroup.singleAction(
    new GeneratorBuilder(const [
      const JsonSerializableGenerator(),
    ]),
    new InputSet('github', const ['lib/src/common.dart']));

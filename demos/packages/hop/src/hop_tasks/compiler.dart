library hop_tasks.compiler;


import 'dart:async';
import 'dart:io';
import 'package:bot/bot.dart';
import 'package:hop/hop_core.dart';
import 'package:hop/src/tasks_shared.dart';
import 'package:hop/src/hop_tasks/process.dart';

class CompilerTargetType {

  static const JS = const CompilerTargetType._('js', 'Javascript');
  static const DART = const CompilerTargetType._('dart', 'Dart');

  final String fileExt;
  final String friendlyName;

  const CompilerTargetType._(this.fileExt, this.friendlyName);

  @override
  String toString() => 'CompilerTargetType.$fileExt';
}

/// Runs `dart2js` on the specified files.
///
/// [delayedRootList] is [List<String>] mapping to librarie paths. It can also
/// be a [Future] or [Function] values which return [List<String>].
///
/// [outputType] must be one of type [CompilerTargetType].
Task createDartCompilerTask(dynamic delayedRootList, {String singleOutput,
  String packageRoot, bool minify: false, bool liveTypeAnalysis: true,
  bool throwOnError: false, bool verbose: true, bool suppressWarnings: false,
  CompilerTargetType outputType: CompilerTargetType.JS,
  String outputMapper(String source), bool checked: false}) {

  requireArgument(outputType == CompilerTargetType.JS || outputType == CompilerTargetType.DART, 'outputType');

  if (singleOutput != null && outputMapper != null) {
    throw new ArgumentError(
        'Only one of "singleOutput" and "outputMapper" can be set.');
  }

  return new Task((TaskContext context) {

    return getDelayedResult(delayedRootList)
        .then((List<String> inputs) {

          if(inputs.length > 1 && singleOutput != null) {
            assert(outputMapper == null);
            context.fail('Cannot specify a single output when more than one '
                'input is provided.');
          }

          if(outputMapper == null) {
            if(singleOutput != null) {
              outputMapper = (String input) => singleOutput;
            } else if (outputType == CompilerTargetType.JS) {
              outputMapper = _dart2jsOutputMapper;
            } else {
              assert(outputType == CompilerTargetType.DART);
              outputMapper = _dart2DartOutputMapper;
            }
          }

          return Future.forEach(inputs, (path) {

            String output = outputMapper(path);

            return _dart2js(context, path,
                output, packageRoot, minify, liveTypeAnalysis,
                throwOnError, verbose, suppressWarnings, outputType, checked);
          });
        });
  }, description: 'Run Dart-to-${outputType.friendlyName} compiler');
}

String _dart2jsOutputMapper(String input) => input + '.js';

String _dart2DartOutputMapper(String input) {
  if (input.endsWith('.dart')) {
    return input.substring(0, input.length - 5) + '.compiled.dart';
  } else {
    return input + '.dart';
  }
}

Future _dart2js(TaskContext ctx, String file,
    String output, String packageRoot, bool minify, bool liveTypeAnalysis,
    bool throwOnError, bool verbose, bool suppressWarnings,
    CompilerTargetType outputType, bool checked) {

  requireArgumentNotNullOrEmpty(output, 'output');

  if (output == file) {
    ctx.fail('The provided or derived output value "$output" is the same as the'
        ' input file.');
  }

  final packageDir = new Directory('packages');
  assert(packageDir.existsSync());

  final args = ["--package-root=${packageDir.path}",
                "--output-type=${outputType.fileExt}",
                "--out=$output",
                file];

  if (verbose) {
    args.add('--verbose');
  }

  if (suppressWarnings) {
    args.add('--suppress-warnings');
  }

  if (throwOnError) {
    args.add('--throw-on-error');
  }

  if (liveTypeAnalysis == false) {
    args.add('--disable-native-live-type-analysis');
  }

  if (minify) {
    args.add('--minify');
  }

  if (packageRoot != null) {
    args.add('--package-root=$packageRoot');
  }

  if (checked == true) {
    args.add('--enable-checked-mode');
  }

  return startProcess(ctx, getPlatformBin('dart2js'), args);
}

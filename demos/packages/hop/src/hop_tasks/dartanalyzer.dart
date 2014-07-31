library hop_tasks.dart_analyzer;

import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:bot/bot.dart';
import 'package:hop/hop_core.dart';
import 'package:hop/src/tasks_shared.dart';
import 'package:hop/src/hop_tasks/process.dart';
import 'package:path/path.dart' as pathos;

const _verboseArgName = 'verbose';
const _formatMachineArgName = 'format-machine';

/// Creates a task which runs `dartanalyzer` on each file in
/// [delayedFileList].
///
/// [delayedRootList] is [List<String>] mapping to Dart source files. It can
/// also be a [Future] or [Function] values which return [List<String>].
///
/// `dartanalyzer` is recursive. It scans imported files also.
Task createAnalyzerTask(dynamic delayedFileList) {
  return new Task((context) {
    final parseResult = context.arguments;

    final bool verbose = parseResult[_verboseArgName];
    final bool formatMachine = parseResult[_formatMachineArgName];

    return getDelayedResult(delayedFileList)
        .then((List<String> files) {
          return Future.forEach(files, (f) {
            return FileSystemEntity.isFile(f)
                .then((bool isFile) {
                  if(!isFile) {
                    context.fail("$f does not exist or is not a file");
                  }
                });
          })
          .then((_) {
            return files;
          });
        })
        .then((List<String> files) {
          return _processDartAnalyzerFile(context, files, verbose,
              formatMachine);
        });
  },
  description: 'Run "dartanalyzer" for the provided dart files.',
  argParser: _parserConfig());
}

ArgParser _parserConfig() =>
  new ArgParser()
    ..addFlag(_verboseArgName, abbr: 'v', defaultsTo: false,
        help: 'verbose output of all errors')
    ..addFlag(_formatMachineArgName, abbr: 'm', defaultsTo: false,
        help: 'Print errors in a format suitable for parsing');

Future _processDartAnalyzerFile(TaskContext context,
    List<String> analyzerFilePaths, bool verbose, bool formatMachine) {

  int errorsCount = 0;
  int passedCount = 0;
  int warningCount = 0;

  return Future.forEach(analyzerFilePaths, (String path) {
    var logger = context.getSubLogger(path);
    return _dartAnalyzer(logger, path, verbose, formatMachine)
        .then((int exitCode) {
          logger.dispose();

          String prefix;

          switch(exitCode) {
            case 0:
              prefix = "PASSED";
              passedCount++;
              break;
            case 1:
              prefix = "WARNING";
              warningCount++;
              break;
            case 2:
              prefix =  "ERROR";
              errorsCount++;
              break;
            default:
              prefix = "Unknown exit code $exitCode";
              errorsCount++;
              break;
          }

          context.info("$prefix - $path");
        });
    })
    .then((_) {
      context.info("PASSED: ${passedCount}, WARNING: ${warningCount}, ERROR: ${errorsCount}");

      if(errorsCount > 0) context.fail('$errorsCount errors found.');
    });
}

Future<int> _dartAnalyzer(TaskLogger logger, String filePath, bool verbose,
    bool formatMachine) {

  return _getPackagesDir(filePath)
      .then((String packagesPath) {

        var processArgs = [];

        if(formatMachine) {
          processArgs.add('--machine');
        }

        if(packagesPath != null) {
          processArgs.addAll(['--package-root', packagesPath]);
        }

        processArgs.addAll([pathos.normalize(filePath)]);

        return Process.start(getPlatformBin('dartanalyzer'), processArgs);
      })
      .then((process) {
        if(verbose) {
          return pipeProcess(process,
              stdOutWriter: logger.info,
              stdErrWriter: logger.severe);
        } else {
          return pipeProcess(process);
        }
      });
}

// TODO: (kevmoo) user should be able to provide their own packages dir? Hmm...
Future<String> _getPackagesDir(String filePath) {
  var dirName = pathos.dirname(filePath);

  const packageDirName = 'packages';

  var packagesDirCandidatePath = pathos.join(dirName, packageDirName);
  return FileSystemEntity.isDirectory(packagesDirCandidatePath)
      .then((bool isDir) {

        if(isDir) {
          return packagesDirCandidatePath;
        }

        packagesDirCandidatePath =
            pathos.join(Directory.current.path, packageDirName);

        return FileSystemEntity.isDirectory(packagesDirCandidatePath)
            .then((bool isDir2) {
              if(isDir2) {
                return packagesDirCandidatePath;
              }
              return null;
            });
      });
}

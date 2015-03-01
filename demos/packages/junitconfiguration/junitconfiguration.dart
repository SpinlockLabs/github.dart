library junitconfiguration;

import 'dart:io';

import 'package:unittest/unittest.dart';

part 'exitconfiguration.dart';
part 'nullconfiguration.dart';

/**
 * A test configuration that another test configuration and emits JUnit
 * compatible XML output.
 */
class JUnitConfiguration implements Configuration {

  /**
   * Install this configuration.
   */
  static void install({Configuration configuration, StringSink output, DateTime time,
      String hostname}) {
    unittestConfiguration = new JUnitConfiguration(
        configuration: configuration,
        output: output,
        time: time,
        hostname: hostname);
  }

  /// The wrapped test configuration.
  final Configuration _configuration;

  /// The string sink where the XML output is written to.
  final StringSink _output;

  /// The current date and time of this operation.
  final DateTime _time;

  /// The hostname where this operation is performed on.
  final String _hostname;

  /// The output logged by test case.
  final Map<TestCase, List<String>> _logs = new Map();

  /**
   * Creates a new configuration instance with an optional output sink.
   */
  factory JUnitConfiguration({Configuration configuration, StringSink output, DateTime time,
        String hostname}) {
    return new JUnitConfiguration._internal(
        configuration != null ? configuration : new ExitConfiguration(),
        output != null ? output : stdout,
        time != null ? time : new DateTime.now(),
        hostname != null ? hostname : Platform.localHostname);
  }

  JUnitConfiguration._internal(this._configuration, this._output, this._time, this._hostname);

  @override
  bool get autoStart => _configuration.autoStart;

  @override
  Duration get timeout => _configuration.timeout;

  @override
  set timeout(Duration duration) => _configuration.timeout = duration;

  @override
  void onInit() {
    _logs.clear();
    _configuration.onInit();
  }

  @override
  void onStart() => _configuration.onStart();

  @override
  void onTestStart(TestCase testCase) => _configuration.onTestStart(testCase);

  @override
  void onTestResult(TestCase testCase) => _configuration.onTestResult(testCase);

  @override
  void onTestResultChanged(TestCase testCase) => _configuration.onTestResultChanged(testCase);

  @override
  void onLogMessage(TestCase testCase, String message) {
    _logs.putIfAbsent(testCase, () => new List()).add(message);
    _configuration.onLogMessage(testCase, message);
  }

  @override
  void onDone(bool success) {
    if (_output is IOSink) {
      (_output as IOSink).flush().then((_) {
        _configuration.onDone(success);
      });
    } else {
      _configuration.onDone(success);
    }
  }

  @override
  void onSummary(int passed, int failed, int errors, List<TestCase> results, String uncaughtError) {
    var totalTime = 0, skipped = 0;
    for (var testCase in results) {
      if (testCase.runningTime != null) {
        totalTime += testCase.runningTime.inMilliseconds;
      }
      if (!testCase.enabled) {
        skipped++;
      }
    }
    _output.writeln('<?xml version="1.0" encoding="UTF-8" ?>');
    _output.writeln('<testsuite name="All tests" hostname="${_xml(_hostname)}" ' +
        'tests="${results.length}" failures="$failed" errors="$errors" ' +
        'skipped="$skipped" time="${totalTime / 1000.0}" timestamp="${_time}">');
    for (TestCase testCase in results) {
      var time = testCase.runningTime != null ? testCase.runningTime.inMilliseconds : 0;
      _output.writeln('  <testcase id="${testCase.id}" name="${_xml(testCase.description)}" ' +
          'time="${time / 1000.0}">');
      if (testCase.result == FAIL) {
        _output.writeln('    <failure>${_xml(testCase.message)}</failure>');
      } else if (testCase.result == ERROR) {
        _output.writeln('    <error>${_xml(testCase.message)}</error>');
      } else if (!testCase.enabled) {
        _output.writeln('    <skipped>${_xml(testCase.message)}</skipped>');
      }
      if (_logs.containsKey(testCase)) {
        _output.writeln('    <system-out>${_xml(_logs[testCase].join('\n'))}</system-out>');
      }
      if (testCase.stackTrace != null) {
        _output.writeln('    <system-err>${_xml(testCase.stackTrace)}</system-err>');
      }
      _output.writeln('  </testcase>');
    }
    if (uncaughtError != null && !uncaughtError.isEmpty) {
      _output.writeln('  <system-err>${_xml(uncaughtError)}</system-err>');
    }
    _output.writeln('</testsuite>');
    _configuration.onSummary(passed, failed, errors, results, uncaughtError);
  }

  String _xml(value) {
    return value.toString()
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;');
  }
}




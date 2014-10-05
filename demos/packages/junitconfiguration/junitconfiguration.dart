library junitconfiguration;

import 'dart:io';
import 'dart:isolate';
import 'package:unittest/unittest.dart';

/**
 * A test configuration that emits JUnit compatible XML output.
 */
class JUnitConfiguration extends SimpleConfiguration {

  /**
   * Install this configuration with the testing framework.
   */
  static void install({StringSink output, DateTime time, String hostname}) {
    unittestConfiguration = new JUnitConfiguration(
        output: output,
        time: time,
        hostname: hostname);
  }

  /**
   * Creates a new configuration instance with an optional output sink.
   */
  factory JUnitConfiguration({StringSink output, DateTime time, String hostname}) {
    return new JUnitConfiguration._internal(
        output != null ? output : stdout,
        time != null ? time : new DateTime.now(),
        hostname != null ? hostname : Platform.localHostname);
  }

  final StringSink _output;
  final DateTime _time;
  final String _hostname;

  ReceivePort _receivePort;
  Map<TestCase, List<String>> _stdout;

  JUnitConfiguration._internal(this._output, this._time, this._hostname) : super() {
    throwOnTestFailures = false;
    stopTestOnExpectFailure = false;
  }

  @override
  String get name => 'JUnit Test Configuration';

  @override
  void onInit() {
    // override to avoid a call to "_postMessage(String)"
    filterStacks = false;
    _receivePort = new ReceivePort();
    _stdout = new Map();
  }

  @override
  void onLogMessage(TestCase testCase, String message) {
    _stdout.putIfAbsent(testCase, () => new List()).add(message);
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
    _output.writeln('<testsuite name="All tests" hostname="${_xml(this._hostname)}" ' +
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
      if (_stdout.containsKey(testCase)) {
        var output = _stdout[testCase].join('\n');
        _output.writeln('    <system-out>${_xml(output)}</system-out>');
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
  }

  @override
  void onDone(bool success) {
    // override to avoid a call to "_postMessage(String)"
    _receivePort.close();
  }

  String _xml(value) {
    return value.toString()
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;');
  }

}

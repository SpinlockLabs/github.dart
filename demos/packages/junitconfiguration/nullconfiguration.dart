part of junitconfiguration;

/**
 * A test configuration that does nothing.
 */
class NullConfiguration implements Configuration {

  @override
  bool autoStart = true;

  @override
  Duration timeout = const Duration(minutes: 2);

  @override
  void onInit() => null;

  @override
  void onStart() => null;

  @override
  void onTestStart(TestCase testCase) => null;

  @override
  void onTestResult(TestCase testCase) => null;

  @override
  void onTestResultChanged(TestCase testCase) => null;

  @override
  void onLogMessage(TestCase testCase, String message) => null;

  @override
  void onDone(bool success) => null;

  @override
  void onSummary(int passed, int failed, int errors, List<TestCase> results, String uncaughtError) => null;

}
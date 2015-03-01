part of junitconfiguration;

/**
 * A test configuration that exits with an error code.
 */
class ExitConfiguration extends NullConfiguration {

  @override
  void onDone(bool success) => exit(success ? 0 : 1);

}
part of hop.core;

/// Allows logging of [Task] activities, spawning sub-loggers, and failing the
/// current [Task];
abstract class TaskLogger {

  TaskLogger getSubLogger(String name);

  // level 300
  void finest(String message) {
    log(Level.FINEST, message);
  }

  // level 400
  void finer(String message) {
    log(Level.FINER, message);
  }

  // level 500
  void fine(String message) {
    log(Level.FINE, message);
  }

  // level 700
  void config(String message) {
    log(Level.CONFIG, message);
  }

  // level 800
  void info(String message) {
    log(Level.INFO, message);
  }

  // level 900
  void warning(String message) {
    log(Level.WARNING, message);
  }

  // level 1000
  void severe(String message) {
    log(Level.SEVERE, message);
  }

  void log(Level logLevel, String message);

  void dispose();
  bool get isDisposed;
}

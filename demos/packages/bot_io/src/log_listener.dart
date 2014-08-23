library bot_io.log_listener;

import 'dart:io';

import 'package:logging/logging.dart' as logging;
import 'package:path/path.dart' as p;

/**
 * When called, a listener is added to the root [Logger] and all output is
 * appended to a log file named "`new Options().script`.log".
 *
 * The format: [LogRecord.time] 'tab' [LogRecord.level] 'tab' [LogRecord.loggerName] 'tab' [LogRecord.message]
 */
void enableScriptLogListener() {
  if (_scriptLogListenerPath == null) {

    final script = Platform.script.toFilePath();
    _scriptLogListenerPath = p.absolute(script) + '.log';

    final rootLogger = logging.Logger.root;
    rootLogger.level = logging.Level.ALL;

    rootLogger.onRecord.listen(_doLog);

    final logger = logging.Logger.root;

    logger.info('Starting log for $script at $_scriptLogListenerPath');
  }
}

String _scriptLogListenerPath;

void _doLog(logging.LogRecord record) {

  var msg = '${record.time}\t${record.level}\t${record.loggerName}\t${record.message}';

  var logFile = new File(_scriptLogListenerPath);

  logFile.writeAsStringSync('$msg\n', mode: FileMode.APPEND);
}

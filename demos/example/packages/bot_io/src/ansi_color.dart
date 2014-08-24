library bot_io.ansi_color;

import 'dart:io';

/**
 * [More details](https://en.wikipedia.org/wiki/ANSI_escape_code#Colors)
 */
class AnsiColor {
  static const AnsiColor BLACK = const AnsiColor._(0, 'black');
  static const AnsiColor RED = const AnsiColor._(1, 'red');
  static const AnsiColor GREEN = const AnsiColor._(2, 'green');
  static const AnsiColor YELLOW = const AnsiColor._(3, 'yellow');
  static const AnsiColor BLUE = const AnsiColor._(4, 'blue');
  static const AnsiColor MAGENTA = const AnsiColor._(5, 'magenta');
  static const AnsiColor CYAN = const AnsiColor._(6, 'cyan');
  static const AnsiColor GRAY = const AnsiColor._(7, 'gray');
  static const AnsiColor LIGHT_RED = const AnsiColor._(91, 'light red');
  static const AnsiColor BOLD = const AnsiColor._(null, 'bold', srg: 1);
  static const AnsiColor RESET = const AnsiColor._(null, 'reset');

  final int foregroundId;
  final String name;
  final int _srg;

  bool get isBold => _srg == 1;

  /// Returns `true` if the current platform is not Windows and if the type
  /// of [stdout] is [StdioType.TERMINAL].
  static final bool isSupported = !Platform.isWindows &&
      stdioType(stdout) == StdioType.TERMINAL;

  const AnsiColor._(this.foregroundId, this.name, {int srg: 0}) :
    this._srg = srg;

  AnsiColor asBold() {
    if (isBold) {
      return this;
    } else {
      return new AnsiColor._(foregroundId, name, srg: 1);
    }
  }

  String toString() {
    final value = 'AnsiColor: $name';

    if (isBold) {
      return value + ' (BOLD)';
    } else {
      return value;
    }
  }

  // TODO: maybe no-op here if 'this' is RESET?
  String wrap(String input) {
    assert(input != null);
    return "${shellValue}$input${RESET.shellValue}";
  }

  String get shellValue {
    final items = new List<String>();

    items.add(_srg.toString());

    if (foregroundId != null) {
      items.add('3$foregroundId');
    }

    return '\u001b[${items.join(";")}m';
  }
}

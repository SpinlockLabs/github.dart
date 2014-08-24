library bot_io.shell_string;

import 'package:bot/bot.dart';

import 'ansi_color.dart';

abstract class ShellString {
  ShellString._internal();

  factory ShellString(Object value) {
    value = _convert(value);
    if (value is ShellString) {
      return value;
    } else {
      assert(value is String);
      return new _SimpleShellString(value);
    }
  }

  factory ShellString.withColor(String value, AnsiColor color) =>
      new _ColorShellString(value, color);

  factory ShellString.withAlt(String value, AnsiColor color, String alt) =>
      new _ColorShellStringWithAlt(value, color, alt);

  String format(bool useColor);

  ShellString concat(Object value) => _join([this, value]);

  @override
  String toString() => format(false);

  static ShellString _join(Iterable values) {
    final vals = values.where((v) => v != null && v != '')
        .map((v) => ShellString._convert(v))
        .toList();

    if (vals.isEmpty) {
      return new ShellString('');
    } else if (values.length == 1) {
      return new ShellString(values.single);
    } else {
      return new _ListShellString(vals);
    }
  }

  static Object _convert(Object value) {
    requireArgumentNotNull(value, 'value');
    if (value is ShellString) {
      return value;
    } else if (value is String) {
      return value;
    } else {
      return value.toString();
    }
  }
}

class _SimpleShellString extends ShellString {
  final String value;
  _SimpleShellString(this.value): super._internal() {
    assert(value != null);
  }

  @override
  String format(bool useColor) => value;
}

class _ColorShellString extends _SimpleShellString {
  final AnsiColor color;

  _ColorShellString(String value, this.color): super(value) {
    assert(color != null);
  }

  @override
  String format(bool useColor) => useColor ? color.wrap(value) : value;
}

class _ColorShellStringWithAlt extends _ColorShellString {
  final String alt;

  _ColorShellStringWithAlt(String value, AnsiColor color, this.alt) :
    super(value, color) {
    assert(alt != null);
  }

  @override
  String format(bool useColor) => useColor ? color.wrap(value) : alt;
}

class _ListShellString extends ShellString {
  final List<Object> values;

  _ListShellString(this.values): super._internal();

  @override
  String format(bool useColor) {
    final buffer = new StringBuffer();
    _toBuffer(buffer, useColor);
    return buffer.toString();
  }

  void _toBuffer(StringBuffer buffer, bool useColor) {
    for (final v in values) {
      if (v is _ListShellString) {
        v._toBuffer(buffer, useColor);
      } else if (v is ShellString) {
        buffer.write(v.format(useColor));
      } else {
        buffer.write(v);
      }
    }
  }
}

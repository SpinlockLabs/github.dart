library bot_io.console;

import 'dart:math' as math;
import 'package:bot/bot.dart';

import 'ansi_color.dart';

class Console {

  /// **DEPRECATED**
  ///
  /// Use [AnsiColor.isSupported] instead.
  @deprecated
  static bool get supportsColor => AnsiColor.isSupported;

  static Iterable<String> getTable(Iterable source,
      List<ColumnDefinition> columns, {bool includeHeader: false}) {
    requireArgumentNotNull(source, 'source');
    requireArgumentNotNull(columns, 'columns');
    requireArgument(columns.length > 0, 'columns',
        'Must have at least one column');

    //
    // populate cells so we know what data we're dealing with
    // also keep track of the max width of each column
    //

    final headerInclude = includeHeader ? 1 : 0;

    final cells = new Array2d<String>(columns.length, source.length + headerInclude);
    final maxWidths = new List<int>.filled(columns.length, 0);

    if (includeHeader) {
      // populate header first
      for (var i = 0; i < columns.length; i++) {
        final value = columns[i].name;
        maxWidths[i] = math.max(maxWidths[i], value.length);
        cells.set(i, 0, value);
      }
    }

    $(source).forEachWithIndex((item, i) {
      final rowIndex = i + headerInclude;
      for (var col = 0; col < columns.length; col++) {
        final column = columns[col];
        final value = column._mapper(item).trim();
        maxWidths[col] = math.max(maxWidths[col], value.length);
        cells.set(col, rowIndex, value);
      }
    });

    return cells.rows.map((r) => _getRow(r, maxWidths));
  }

  static String _getRow(List<String> row, List<int> columnWidths) {
    final minBuffer = 3;

    assert(row.length == columnWidths.length);
    final buffer = new StringBuffer();
    int targetWidth = 0;

    for (var i = 0; i < row.length; i++) {
      final value = row[i];
      final width = columnWidths[i];
      assert(value.length <= width);

      while (buffer.length < targetWidth) {
        buffer.write(' ');
      }
      buffer.write(value);

      targetWidth += width + minBuffer;
    }

    return buffer.toString();
  }
}

class ColumnDefinition {
  final String name;
  final Func1<dynamic, String> _mapper;

  ColumnDefinition(this.name, this._mapper) {
    requireArgumentNotNullOrEmpty(name, 'name');
    requireArgumentNotNull(_mapper, '_mapper');
  }
}

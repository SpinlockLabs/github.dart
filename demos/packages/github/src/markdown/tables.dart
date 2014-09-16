part of github.markdown;

String table(List<Map<String, dynamic>> data) {
  var buff = new StringBuffer();
  var columns = new Set<String>();
  data.forEach((row) => columns.addAll(row.keys));
  var p = [];
  var fm = true;
  for (var column in columns) {
    if (fm) {
      buff.write("|");
      p.add("|");
      fm = false;
    }
    buff.write(" ${column} |");
    p.add("${repeat("-", column.length + 2)}|");
  }
  buff.writeln();
  buff.writeln(p.join());
  data.forEach((row) {
    var values = row.values;
    var fa = true;
    for (var value in values) {
      if (fa) {
        buff.write("|");
        fa = false;
      }
      buff.write(" ${value} |");
    }
    buff.writeln();
  });
  return buff.toString();
}

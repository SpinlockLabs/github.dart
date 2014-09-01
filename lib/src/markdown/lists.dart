part of github.markdown;

String list(List<String> items, {bool ordered: false}) {
  var buff = new StringBuffer();
  if (ordered) {
    for (var i = 0; i < items.length; i++) {
      var number = i + 1;
      buff.writeln("${number}. ${items[i]}");
    }
  } else {
    for (var item in items) {
      buff.writeln("- ${item}");
    }
  }
  return buff.toString();
}

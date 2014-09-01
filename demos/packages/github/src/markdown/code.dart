part of github.markdown;

String code(String code, {String language}) {
  var buff = new StringBuffer();
  buff.writeln("```${language != null ? language: ""}");
  buff.writeln(code);
  buff.writeln("```");
  return buff.toString();
}

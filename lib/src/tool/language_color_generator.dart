import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:yaml/yaml.dart';

class LanguageColorGenerator {
  static final String indent = '  ';
  static final String path = './lib/src/const/language_color.dart';
  static final String url = 'https://raw.githubusercontent.com/'
      'github/linguist/master/lib/linguist/languages.yml';

  static Future buildColorMap() async {
    http.Response response = await http.Client().get(url);

    YamlMap yaml = loadYaml(response.body) as YamlMap;
    StringBuffer stringBuffer = StringBuffer();

    stringBuffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
    stringBuffer.writeln('// VERSION OF ${DateTime.now().toIso8601String()}');
    stringBuffer.writeln();

    stringBuffer
        .writeln('Map<String, String> languagesColor = <String, String>{');

    String color;

    YamlMap map = yaml.value;
    List<String> languages = List.from(map.keys);
    languages.sort();

    languages.forEach(
      (language) {
        color = map[language]['color']?.toString()?.toUpperCase() ?? '#000000';

        language = language.replaceAll("'", "\\'");

        stringBuffer.writeln("$indent'$language': '$color',");
      },
    );

    stringBuffer.writeln('};');

    File output = File(path);

    output.createSync();
    output.writeAsStringSync(stringBuffer.toString());

    print('File created with success');
  }
}

void main() {
  LanguageColorGenerator.buildColorMap();
}

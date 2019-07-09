import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:yaml/yaml.dart';

const _indent = '  ';
const _path = './lib/src/const/language_color.dart';
const _url = 'https://raw.githubusercontent.com/'
    'github/linguist/master/lib/linguist/languages.yml';

Future main() async {
  var response = await http.Client().get(_url);

  var yaml = loadYaml(response.body) as YamlMap;
  var stringBuffer = StringBuffer()
    ..writeln('// GENERATED CODE - DO NOT MODIFY BY HAND')
    ..writeln('// VERSION OF ${DateTime.now().toIso8601String()}')
    ..writeln()
    ..writeln('const languagesColor = <String, String>{');

  var map = yaml.value as YamlMap;
  var languages = map.keys.cast<String>().toList(growable: false)..sort();

  for (var language in languages) {
    var color = map[language]['color']?.toString()?.toUpperCase() ?? '#000000';

    language = language.replaceAll("'", "\\'");

    stringBuffer.writeln("$_indent'$language': '$color',");
  }

  stringBuffer.writeln('};');

  File(_path)
    ..createSync()
    ..writeAsStringSync(stringBuffer.toString());

  print('File created with success');
}

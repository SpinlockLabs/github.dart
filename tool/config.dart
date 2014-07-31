part of hop_runner;

Map<String, dynamic> config;

Directory get tool_dir => new File.fromUri(Platform.script).parent.absolute;
Directory get root_dir => tool_dir.parent;

Map<String, dynamic> load_config() {
  var it = loadYaml(new File("${tool_dir.path}/build.yaml").readAsStringSync());
  if (it.containsKey("variables")) {
    variables.addAll(it["variables"]);
  }
  return it;
}

Map<String, dynamic> variables = {
  "tool_dir": tool_dir.path,
  "root_dir": root_dir.path
};

String parse_config_value(String input) {
  var out = input;
  for (var variable in variables.keys) {
    out = out.replaceAll("{${variable}}", variables[variable]);
  }
  return out;
}

dynamic getvar(String path, [dynamic defaultValue = false]) {
  var current = config;

  if (current.containsKey(path)) {
    return current[path];
  }

  var parts = path.split(r"\.");
  for (var part in parts) {
    if (current == null) {
      return null;
    }
    current = current[part];
  }
  if (current is String) {
    current = parse_config_value(current);
  }
  return current;
}

void init() {
  Directory.current = root_dir;
  config = load_config();
}

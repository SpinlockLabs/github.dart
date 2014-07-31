part of hop_runner;

Task createAnalyzerTask(Iterable<String> files, [Iterable<String> extra_args]) {
  var args = [];
  args.addAll(files);
  if (extra_args != null) {
    args.addAll(extra_args);
  }
  return createProcessTask("dartanalyzer", args: args, description: "Statically Analyze Code");
}

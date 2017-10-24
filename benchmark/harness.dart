part of github.benchmark;

typedef Future<Stopwatch> Benchmark();

class BenchmarkHelper {
  static void prettyPrint(Map<String, List<Stopwatch>> results) {
    print("Results:");
    results.forEach((name, result) {
      int total =
          result.map((it) => it.elapsedMilliseconds).reduce((a, b) => a + b);
      num avg = total / result.length;
      print("  - $name:");
      print("    - Average: ${avg}ms");
      print("    - Times:");

      for (var resultz in result) {
        print("        - ${resultz.elapsedMilliseconds}ms");
      }
    });
  }
}

Future<List<Stopwatch>> runBenchmark(int times, Benchmark benchmark) {
  var group = new FutureGroup();
  for (var i = 0; i < times; i++) {
    group.add(benchmark());
  }
  return group.future;
}

void warmup() {
  print("Warming Up");
  int fib(int n) {
    if (n < 2) return n;
    return fib(n - 1) + fib(n - 2);
  }

  for (var i = 1; i <= 5; i++) {
    fib(20);
  }

  print("Warm Up Complete");
}

Future<Map<String, List<Stopwatch>>> runBenchmarks(
    int times, Map<String, Benchmark> benchmarks) {
  warmup();

  var group = new FutureGroup();
  var results = {};
  benchmarks.forEach((String name, Benchmark benchmark) {
    results[name] = [];
    for (var i = 0; i < times; i++) {
      group.add(benchmark().then((watch) {
        results[name].add(watch);
      }));
    }
  });

  return group.future.then((_) {
    return results;
  });
}

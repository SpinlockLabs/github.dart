library hop.src.stats;

import 'dart:math' as math;
import 'package:bot_io/bot_io.dart';

class Stats {
  final int count;
  final num mean;
  final num median;
  final num max;
  final num min;
  final num standardDeviation;
  final num standardError;

  Stats.raw(int count, this.mean, this.median, this.max, this.min,
      num standardDeviation)
      : this.count = count,
        this.standardDeviation = standardDeviation,
        standardError = standardDeviation / math.sqrt(count);

  factory Stats(Iterable<int> source) {
    assert(source != null);

    var list = source.toList()..sort();

    assert(!list.isEmpty);

    var count = list.length;

    var max = list.last;
    var min = list.first;

    var sum = list.fold(0, (sum, next) => sum + next);

    var mean = sum / count;

    // variance
    // The average of the squared difference from the Mean

    num sumOfSquaredDiffFromMean = 0;
    for (var value in list) {
      var squareDiffFromMean = math.pow(value - mean, 2);
      sumOfSquaredDiffFromMean += squareDiffFromMean;
    }

    var variance = sumOfSquaredDiffFromMean / count;

    // standardDeviation: sqrt of the variance
    var standardDeviation = math.sqrt(variance);

    num median;
    // if length is odd, take middle value
    if (count % 2 == 1) {
      var middleIndex = (count / 2 - 0.5).toInt();
      median = list[middleIndex];
    } else {
      var secondMiddle = count ~/ 2;
      var firstMiddle = secondMiddle - 1;
      median = (list[firstMiddle] + list[secondMiddle]) / 2.0;
    }

    return new Stats.raw(count, mean, median, max, min, standardDeviation);
  }

  String toString() {
    var rows = [
      ['Min', min],
      ['Max', max],
      ['Media', median],
      ['Mean', mean],
      ['StdDev', standardDeviation],
      ['StdDev%', (standardDeviation / mean * 100).toStringAsFixed(5) + '%'],
      ['StdErr', standardError],
      ['StdErr%', (standardError / mean * 100).toStringAsFixed(5) + '%'],
    ];

    var cols = [
      new ColumnDefinition('Name', (a) => a[0]),
      new ColumnDefinition('Value', (a) {
        var val = a[1];
        if (val is num) {
          return new Duration(microseconds: val.toInt()).toString();
        } else {
          return val.toString();
        }
      })
    ];

    return Console.getTable(rows, cols).join('\n');
  }
}

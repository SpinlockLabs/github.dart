import 'dart:io';

import 'bindings_manifest.dart';
import 'openapi_model.dart';

/// Generates `docs/api-coverage.md` detailing measured GitHub REST API conformance.
class CoverageReporter {
  final List<RestOperation> operations;
  final BindingsManifest manifest;

  CoverageReporter({
    required this.operations,
    required this.manifest,
  });

  String generateMarkdown() {
    final opMap = {for (final op in operations) op.operationId: op};
    final bindingMap = {
      for (final b in manifest.bindings) b.operationId: b,
    };

    final totalOps = operations.length;
    final totalBound = manifest.bindings.length;
    final supportedCount = manifest.bindings
        .where((b) => b.status == BindingStatus.supported)
        .length;
    final partialCount = manifest.bindings
        .where((b) => b.status == BindingStatus.partial)
        .length;
    final deprecatedCount = manifest.bindings
        .where((b) => b.status == BindingStatus.deprecated)
        .length;

    final overallPercent = totalOps == 0
        ? 0.0
        : ((supportedCount + partialCount) / totalOps) * 100;

    // Group by primary tag
    final tagGroups = <String, List<RestOperation>>{};
    for (final op in operations) {
      final tag = op.tags.isNotEmpty ? op.tags.first : 'other';
      tagGroups.putIfAbsent(tag, () => []).add(op);
    }

    final sortedTags = tagGroups.keys.toList()..sort();

    final buffer = StringBuffer();
    buffer.writeln('# GitHub REST API Conformance & Coverage');
    buffer.writeln();
    buffer.writeln(
        '> Automatically generated from `tool/spec/github-openapi.lock.json` and `tool/spec/bindings.yaml`.');
    buffer.writeln();
    buffer.writeln('## Summary');
    buffer.writeln();
    buffer.writeln('| Metric | Count |');
    buffer.writeln('| --- | --- |');
    buffer.writeln('| Total OpenAPI Operations | $totalOps |');
    buffer.writeln('| Total Bound Operations | $totalBound |');
    buffer.writeln('| Supported Operations | $supportedCount |');
    buffer.writeln('| Partial Operations | $partialCount |');
    buffer.writeln('| Deprecated Operations | $deprecatedCount |');
    buffer.writeln(
        '| Conformance Coverage | ${overallPercent.toStringAsFixed(1)}% |');
    buffer.writeln();

    buffer.writeln('## Coverage by Category (Tags)');
    buffer.writeln();
    buffer.writeln(
        '| Category | Total | Bound | Supported | Partial | Coverage % |');
    buffer.writeln('| --- | --- | --- | --- | --- | --- |');

    for (final tag in sortedTags) {
      final ops = tagGroups[tag]!;
      var tagBound = 0;
      var tagSupported = 0;
      var tagPartial = 0;

      for (final op in ops) {
        final b = bindingMap[op.operationId];
        if (b != null) {
          tagBound++;
          if (b.status == BindingStatus.supported) {
            tagSupported++;
          }
          if (b.status == BindingStatus.partial) {
            tagPartial++;
          }
        }
      }

      final tagPercent =
          ops.isEmpty ? 0.0 : ((tagSupported + tagPartial) / ops.length) * 100;

      buffer.writeln(
          '| $tag | ${ops.length} | $tagBound | $tagSupported | $tagPartial | ${tagPercent.toStringAsFixed(1)}% |');
    }

    buffer.writeln();
    buffer.writeln('## Bound Operations');
    buffer.writeln();
    buffer.writeln(
        '| Operation ID | Method | Path | Service Method | Status | Notes |');
    buffer.writeln('| --- | --- | --- | --- | --- | --- |');

    final sortedBindings = [...manifest.bindings]
      ..sort((a, b) => a.operationId.compareTo(b.operationId));

    for (final b in sortedBindings) {
      final op = opMap[b.operationId];
      final method = op?.method ?? 'UNKNOWN';
      final path = op?.path ?? 'UNKNOWN';
      final serviceMethod =
          b.service.isNotEmpty ? '`${b.service}.${b.method}`' : '-';
      buffer.writeln(
          '| `${b.operationId}` | `$method` | `$path` | $serviceMethod | ${b.status.name} | ${b.notes} |');
    }

    return buffer.toString();
  }

  Future<void> writeToFile([String outputPath = 'docs/api-coverage.md']) async {
    final file = File(outputPath);
    final parent = file.parent;
    if (!parent.existsSync()) {
      await parent.create(recursive: true);
    }
    await file.writeAsString(generateMarkdown());
  }
}

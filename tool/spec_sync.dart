import 'dart:convert';
import 'dart:io';

import 'src/openapi/bindings_manifest.dart';
import 'src/openapi/catalog_generator.dart';
import 'src/openapi/coverage_reporter.dart';
import 'src/openapi/spec_loader.dart';

void main(List<String> args) async {
  final checkMode = args.contains('--check');
  final updateMode = args.contains('--update');
  final offlineMode = args.contains('--offline');
  final reportJsonMode = args.contains('--report-json');

  try {
    final loader = await SpecLoader.loadFromLock();
    final operations = await loader.loadOperations(offline: offlineMode);

    final validOperationIds = operations.map((o) => o.operationId).toSet();
    final manifest = await BindingsManifest.loadFromFile();
    manifest.validate(validOperationIds);

    final catalogGen = CatalogGenerator(operations);
    final expectedCatalog = catalogGen.generate();

    final reporter =
        CoverageReporter(operations: operations, manifest: manifest);
    final expectedCoverage = reporter.generateMarkdown();

    if (checkMode) {
      var hasDrift = false;

      final catalogFile =
          File('lib/src/common/generated/rest_contracts.g.dart');
      if (!catalogFile.existsSync()) {
        stderr.writeln(
            'DRIFT: lib/src/common/generated/rest_contracts.g.dart does not exist.');
        hasDrift = true;
      } else {
        final currentCatalog = await catalogFile.readAsString();
        final tempFile = File(
            '.dart_tool/expected_catalog_${DateTime.now().millisecondsSinceEpoch}.dart');
        try {
          tempFile.writeAsStringSync(expectedCatalog);
          Process.runSync(
              Platform.resolvedExecutable, ['format', tempFile.path]);
          final formattedExpected = tempFile.readAsStringSync();
          if (currentCatalog != formattedExpected) {
            stderr.writeln(
                'DRIFT: lib/src/common/generated/rest_contracts.g.dart has uncommitted changes.');
            hasDrift = true;
          }
        } finally {
          if (tempFile.existsSync()) {
            tempFile.deleteSync();
          }
        }
      }

      final coverageFile = File('docs/api-coverage.md');
      if (!coverageFile.existsSync()) {
        stderr.writeln('DRIFT: docs/api-coverage.md does not exist.');
        hasDrift = true;
      } else {
        final currentCoverage = await coverageFile.readAsString();
        if (currentCoverage != expectedCoverage) {
          stderr
              .writeln('DRIFT: docs/api-coverage.md has uncommitted changes.');
          hasDrift = true;
        }
      }

      if (hasDrift) {
        stderr.writeln(
            'Spec sync check failed. Run: dart run tool/spec_sync.dart --update');
        exit(1);
      } else {
        stdout.writeln('Spec sync check passed: No drift detected.');
        if (reportJsonMode) {
          stdout.writeln(jsonEncode({
            'status': 'clean',
            'operationsCount': operations.length,
            'boundCount': manifest.bindings.length,
          }));
        }
        exit(0);
      }
    }

    if (updateMode || (!checkMode && !reportJsonMode)) {
      await catalogGen.writeToFile();
      await reporter.writeToFile();
      stdout.writeln(
          'Updated rest_contracts.g.dart (${operations.length} operations) and docs/api-coverage.md (${manifest.bindings.length} bound).');
    }

    if (reportJsonMode) {
      final summary = {
        'totalOperations': operations.length,
        'totalBound': manifest.bindings.length,
        'supported': manifest.bindings
            .where((b) => b.status == BindingStatus.supported)
            .length,
        'partial': manifest.bindings
            .where((b) => b.status == BindingStatus.partial)
            .length,
        'deprecated': manifest.bindings
            .where((b) => b.status == BindingStatus.deprecated)
            .length,
      };
      stdout.writeln(jsonEncode(summary));
    }
  } catch (e, st) {
    stderr.writeln('Error during spec_sync: $e\n$st');
    exit(1);
  }
}

import 'dart:io';

import 'package:test/test.dart';
import '../../tool/src/openapi/bindings_manifest.dart';
import '../../tool/src/openapi/catalog_generator.dart';
import '../../tool/src/openapi/coverage_reporter.dart';
import '../../tool/src/openapi/semantic_diff.dart';
import '../../tool/src/openapi/spec_loader.dart';

void main() {
  group('Spec baseline & OpenAPI catalog', () {
    test('loads pinned OpenAPI spec and resolves operations', () async {
      final loader = await SpecLoader.loadFromLock();
      final operations = await loader.loadOperations(offline: true);
      expect(operations.length, 1229);

      final opMap = {for (final op in operations) op.operationId: op};
      expect(opMap.containsKey('users/get-authenticated'), isTrue);
      expect(opMap.containsKey('repos/get'), isTrue);
      expect(opMap.containsKey('pulls/update'), isTrue);
      expect(opMap['pulls/update']!.method, 'PATCH');
    });

    test('validates bindings.yaml manifest against spec', () async {
      final loader = await SpecLoader.loadFromLock();
      final operations = await loader.loadOperations(offline: true);
      final validOperationIds = operations.map((o) => o.operationId).toSet();

      final manifest = await BindingsManifest.loadFromFile();
      expect(manifest.bindings, isNotEmpty);
      expect(() => manifest.validate(validOperationIds), returnsNormally);
    });

    test('detects semantic differences between specs', () async {
      final loader = await SpecLoader.loadFromLock();
      final operations = await loader.loadOperations(offline: true);

      final diff = SemanticDiff.between(operations, operations);
      expect(diff.hasChanges, isFalse);
      expect(diff.isBreaking, isFalse);
    });

    test('catalog generation is deterministic', () async {
      final loader = await SpecLoader.loadFromLock();
      final operations = await loader.loadOperations(offline: true);

      final gen = CatalogGenerator(operations);
      final out1 = gen.generate();
      final out2 = gen.generate();
      expect(out1, equals(out2));
    });

    test('catalog on disk matches generated catalog', () async {
      final loader = await SpecLoader.loadFromLock();
      final operations = await loader.loadOperations(offline: true);

      final gen = CatalogGenerator(operations);
      final generated = gen.generate();
      final file = File('lib/src/common/generated/rest_contracts.g.dart');
      expect(file.existsSync(), isTrue);
      final onDisk = file.readAsStringSync();

      final tempFile = File(
          '.dart_tool/test_expected_catalog_${DateTime.now().millisecondsSinceEpoch}.dart');
      try {
        tempFile.writeAsStringSync(generated);
        Process.runSync(Platform.resolvedExecutable, ['format', tempFile.path]);
        final formattedExpected = tempFile.readAsStringSync();
        expect(onDisk, equals(formattedExpected));
      } finally {
        if (tempFile.existsSync()) {
          tempFile.deleteSync();
        }
      }
    });

    test('api coverage markdown on disk matches reporter', () async {
      final loader = await SpecLoader.loadFromLock();
      final operations = await loader.loadOperations(offline: true);
      final manifest = await BindingsManifest.loadFromFile();

      final reporter =
          CoverageReporter(operations: operations, manifest: manifest);
      final expectedMarkdown = reporter.generateMarkdown();
      final file = File('docs/api-coverage.md');
      expect(file.existsSync(), isTrue);
      expect(file.readAsStringSync(), equals(expectedMarkdown));
    });
  });
}

import 'dart:io';

import 'package:yaml/yaml.dart';

enum BindingStatus {
  supported,
  partial,
  deprecated,
  unsupported,
}

class OperationBinding {
  final String operationId;
  final String service;
  final String method;
  final BindingStatus status;
  final String notes;

  const OperationBinding({
    required this.operationId,
    required this.service,
    required this.method,
    required this.status,
    this.notes = '',
  });

  Map<String, dynamic> toJson() => {
        'operationId': operationId,
        'service': service,
        'method': method,
        'status': status.name,
        'notes': notes,
      };
}

class BindingsManifest {
  final String schemaVersion;
  final List<OperationBinding> bindings;

  BindingsManifest({
    required this.bindings,
    this.schemaVersion = '1.0.0',
  });

  static Future<BindingsManifest> loadFromFile([
    String filePath = 'tool/spec/bindings.yaml',
  ]) async {
    final file = File(filePath);
    if (!file.existsSync()) {
      return BindingsManifest(bindings: []);
    }
    final content = await file.readAsString();
    final doc = loadYaml(content);
    if (doc is! Map) {
      return BindingsManifest(bindings: []);
    }

    final schemaVersion = doc['schemaVersion'] as String? ?? '1.0.0';
    final rawBindings = doc['bindings'] as List? ?? [];
    final bindings = <OperationBinding>[];

    for (final b in rawBindings) {
      if (b is! Map) {
        continue;
      }
      final opId = b['operationId'] as String;
      final service = b['service'] as String? ?? '';
      final method = b['method'] as String? ?? '';
      final statusStr = b['status'] as String? ?? 'supported';
      final notes = b['notes'] as String? ?? '';

      final status = BindingStatus.values.firstWhere(
        (e) => e.name == statusStr,
        orElse: () => BindingStatus.supported,
      );

      bindings.add(OperationBinding(
        operationId: opId,
        service: service,
        method: method,
        status: status,
        notes: notes,
      ));
    }

    return BindingsManifest(
      schemaVersion: schemaVersion,
      bindings: bindings,
    );
  }

  /// Validates the manifest against the specification's operation IDs.
  void validate(Set<String> validOperationIds) {
    final seenOps = <String>{};
    final seenMethods = <String>{};

    for (final b in bindings) {
      if (!validOperationIds.contains(b.operationId)) {
        throw StateError(
          'bindings.yaml references unknown OpenAPI operationId: "${b.operationId}"',
        );
      }
      if (!seenOps.add(b.operationId)) {
        throw StateError(
          'Duplicate binding for operationId "${b.operationId}" in bindings.yaml',
        );
      }
      final methodKey = '${b.service}.${b.method}';
      if (b.service.isNotEmpty && b.method.isNotEmpty) {
        if (!seenMethods.add(methodKey)) {
          throw StateError(
            'Duplicate binding for service method "$methodKey" in bindings.yaml',
          );
        }
      }
    }
  }

  Future<void> saveToFile([
    String filePath = 'tool/spec/bindings.yaml',
  ]) async {
    final file = File(filePath);
    final sorted = [...bindings]
      ..sort((a, b) => a.operationId.compareTo(b.operationId));

    final sb = StringBuffer();
    sb.writeln('schemaVersion: $schemaVersion');
    sb.writeln('bindings:');
    for (final b in sorted) {
      sb.writeln('  - operationId: ${b.operationId}');
      sb.writeln('    service: ${b.service}');
      sb.writeln('    method: ${b.method}');
      sb.writeln('    status: ${b.status.name}');
      if (b.notes.isNotEmpty) {
        sb.writeln('    notes: "${b.notes.replaceAll('"', r'\"')}"');
      }
    }

    await file.writeAsString(sb.toString());
  }
}

import 'openapi_model.dart';

/// Categorized semantic differences between two OpenAPI specifications.
class SemanticDiff {
  final List<String> addedOperationIds;
  final List<String> removedOperationIds;
  final List<OperationModification> modifiedOperations;
  final List<String> breakingChangeNotes;

  SemanticDiff({
    this.addedOperationIds = const [],
    this.removedOperationIds = const [],
    this.modifiedOperations = const [],
    this.breakingChangeNotes = const [],
  });

  bool get hasChanges =>
      addedOperationIds.isNotEmpty ||
      removedOperationIds.isNotEmpty ||
      modifiedOperations.isNotEmpty;

  bool get isBreaking =>
      removedOperationIds.isNotEmpty || breakingChangeNotes.isNotEmpty;

  Map<String, dynamic> toJson() => {
        'hasChanges': hasChanges,
        'isBreaking': isBreaking,
        'addedOperationsCount': addedOperationIds.length,
        'removedOperationsCount': removedOperationIds.length,
        'modifiedOperationsCount': modifiedOperations.length,
        'addedOperations': addedOperationIds,
        'removedOperations': removedOperationIds,
        'modifiedOperations':
            modifiedOperations.map((m) => m.toJson()).toList(),
        'breakingChangeNotes': breakingChangeNotes,
      };

  factory SemanticDiff.between(
    List<RestOperation> oldOps,
    List<RestOperation> newOps,
  ) {
    final oldMap = {for (final op in oldOps) op.operationId: op};
    final newMap = {for (final op in newOps) op.operationId: op};

    final added = <String>[];
    final removed = <String>[];
    final modified = <OperationModification>[];
    final breakingNotes = <String>[];

    for (final newId in newMap.keys) {
      if (!oldMap.containsKey(newId)) {
        added.add(newId);
      }
    }

    for (final oldId in oldMap.keys) {
      if (!newMap.containsKey(oldId)) {
        removed.add(oldId);
        breakingNotes.add('Operation removed: $oldId');
      }
    }

    for (final opId in oldMap.keys) {
      if (!newMap.containsKey(opId)) {
        continue;
      }
      final oldOp = oldMap[opId]!;
      final newOp = newMap[opId]!;

      final methodChanged = oldOp.method != newOp.method;
      final pathChanged = oldOp.path != newOp.path;
      final addedPathParams =
          newOp.pathParams.where((p) => !oldOp.pathParams.contains(p)).toList();
      final removedPathParams =
          oldOp.pathParams.where((p) => !newOp.pathParams.contains(p)).toList();
      final addedQueryParams = newOp.queryParams
          .where((p) => !oldOp.queryParams.contains(p))
          .toList();
      final removedQueryParams = oldOp.queryParams
          .where((p) => !newOp.queryParams.contains(p))
          .toList();
      final requestBodyChanged = oldOp.hasRequestBody != newOp.hasRequestBody;

      final isModified = methodChanged ||
          pathChanged ||
          addedPathParams.isNotEmpty ||
          removedPathParams.isNotEmpty ||
          addedQueryParams.isNotEmpty ||
          removedQueryParams.isNotEmpty ||
          requestBodyChanged;

      if (isModified) {
        if (methodChanged) {
          breakingNotes.add(
              '$opId: Method changed from ${oldOp.method} to ${newOp.method}');
        }
        if (pathChanged) {
          breakingNotes
              .add('$opId: Path changed from ${oldOp.path} to ${newOp.path}');
        }
        if (addedPathParams.isNotEmpty) {
          breakingNotes.add(
              '$opId: Added required path parameters: ${addedPathParams.join(', ')}');
        }

        modified.add(OperationModification(
          operationId: opId,
          oldMethod: oldOp.method,
          newMethod: newOp.method,
          oldPath: oldOp.path,
          newPath: newOp.path,
          addedPathParams: addedPathParams,
          removedPathParams: removedPathParams,
          addedQueryParams: addedQueryParams,
          removedQueryParams: removedQueryParams,
          requestBodyChanged: requestBodyChanged,
        ));
      }
    }

    added.sort();
    removed.sort();
    modified.sort((a, b) => a.operationId.compareTo(b.operationId));

    return SemanticDiff(
      addedOperationIds: added,
      removedOperationIds: removed,
      modifiedOperations: modified,
      breakingChangeNotes: breakingNotes,
    );
  }
}

class OperationModification {
  final String operationId;
  final String oldMethod;
  final String newMethod;
  final String oldPath;
  final String newPath;
  final List<String> addedPathParams;
  final List<String> removedPathParams;
  final List<String> addedQueryParams;
  final List<String> removedQueryParams;
  final bool requestBodyChanged;

  OperationModification({
    required this.operationId,
    required this.oldMethod,
    required this.newMethod,
    required this.oldPath,
    required this.newPath,
    this.addedPathParams = const [],
    this.removedPathParams = const [],
    this.addedQueryParams = const [],
    this.removedQueryParams = const [],
    this.requestBodyChanged = false,
  });

  Map<String, dynamic> toJson() => {
        'operationId': operationId,
        'method': oldMethod == newMethod
            ? oldMethod
            : {'old': oldMethod, 'new': newMethod},
        'path': oldPath == newPath ? oldPath : {'old': oldPath, 'new': newPath},
        if (addedPathParams.isNotEmpty) 'addedPathParams': addedPathParams,
        if (removedPathParams.isNotEmpty)
          'removedPathParams': removedPathParams,
        if (addedQueryParams.isNotEmpty) 'addedQueryParams': addedQueryParams,
        if (removedQueryParams.isNotEmpty)
          'removedQueryParams': removedQueryParams,
        if (requestBodyChanged) 'requestBodyChanged': true,
      };
}

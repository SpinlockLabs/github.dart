import 'dart:convert';
import 'package:github/src/util.dart';

/// Model class for a new fork to be created.
class CreateFork {
  final String organization;

  CreateFork([this.organization]);

  String toJSON() {
    final map = <String, dynamic>{};
    putValue('organization', organization, map);
    return jsonEncode(map);
  }
}

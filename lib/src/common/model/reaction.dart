import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reaction.g.dart';

/// This API is currently in preview. It may break.
///
/// See https://developer.github.com/v3/reactions/
@JsonSerializable(fieldRename: FieldRename.snake)
class Reaction {
  final int id;
  final String nodeId;
  final User user;
  final String content;
  final DateTime createdAt;

  Reaction({
    this.id,
    this.nodeId,
    this.user,
    this.content,
    this.createdAt,
  });

  factory Reaction.fromJson(Map<String, dynamic> json) =>
      _$ReactionFromJson(json);

  Map<String, dynamic> toJson() => _$ReactionToJson(this);
}

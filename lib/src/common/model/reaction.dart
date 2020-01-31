import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

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

  ReactionType get type => ReactionType.fromString(content);

  factory Reaction.fromJson(Map<String, dynamic> json) =>
      _$ReactionFromJson(json);

  Map<String, dynamic> toJson() => _$ReactionToJson(this);
}

@immutable
class ReactionType {
  final String content;
  final String emoji;
  const ReactionType._(this.content, this.emoji);

  @override
  String toString() => content;

  static const plusOne = ReactionType._('+1', '👍');
  static const minusOne = ReactionType._('-1', '👎');
  static const laugh = ReactionType._('laugh', '😄');
  static const confused = ReactionType._('confused', '😕');
  static const heart = ReactionType._('heart', '❤️');
  static const hooray = ReactionType._('hooray', '🎉');
  static const rocket = ReactionType._('rocket', '🚀');
  static const eyes = ReactionType._('eyes', '👀');

  static final _types = {
    '+1': plusOne,
    '-1': minusOne,
    'laugh': laugh,
    'confused': confused,
    'heart': heart,
    'hooray': hooray,
    'rocket': rocket,
    'eyes': eyes,
    ':+1:': plusOne,
    ':-1:': minusOne,
    ':laugh:': laugh,
    ':confused:': confused,
    ':heart:': heart,
    ':hooray:': hooray,
    ':rocket:': rocket,
    ':eyes:': eyes,
  };

  static ReactionType fromString(String content) => _types[content];
}

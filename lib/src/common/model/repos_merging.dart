import 'package:json_annotation/json_annotation.dart';
part 'repos_merging.g.dart';

/// Model class for a new merge to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreateMerge {
  CreateMerge(this.base, this.head, {this.commitMessage});

  final String base;
  final String head;
  String commitMessage;

  factory CreateMerge.fromJson(Map<String, dynamic> input) =>
      _$CreateMergeFromJson(input);
  Map<String, dynamic> toJson() => _$CreateMergeToJson(this);
}

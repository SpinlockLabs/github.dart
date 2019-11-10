import 'package:json_annotation/json_annotation.dart';
part 'repos_forks.g.dart';

/// Model class for a new fork to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreateFork {
  CreateFork([this.organization]);

  String organization;

  factory CreateFork.fromJson(Map<String, dynamic> input) =>
      _$CreateForkFromJson(input);
  Map<String, dynamic> toJson() => _$CreateForkToJson(this);
}

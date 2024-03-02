import 'package:json_annotation/json_annotation.dart';
part 'repos_forks.g.dart';

/// Model class for a new fork to be created.
/// https://docs.github.com/en/rest/repos/forks#create-a-fork
@JsonSerializable()
class CreateFork {
  CreateFork({this.organization, this.name});

  String? organization;
  String? name;

  factory CreateFork.fromJson(Map<String, dynamic> input) =>
      _$CreateForkFromJson(input);
  Map<String, dynamic> toJson() => _$CreateForkToJson(this);
}

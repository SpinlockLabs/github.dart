import 'package:json_annotation/json_annotation.dart';

part 'changes.g.dart';

@JsonSerializable()
class Ref {
  Ref(this.from);
  String? from;

  factory Ref.fromJson(Map<String, dynamic> input) =>
      _$RefFromJson(input);
  Map<String, dynamic> toJson() => _$RefToJson(this);
}

@JsonSerializable()
class Sha {
  Sha(this.from);
  String? from;

  factory Sha.fromJson(Map<String, dynamic> input) =>
      _$ShaFromJson(input);
  Map<String, dynamic> toJson() => _$ShaToJson(this);
}

@JsonSerializable()
class Base {
  Base(this.ref, this.sha);
  Ref? ref;
  Sha? sha;

  factory Base.fromJson(Map<String, dynamic> input) =>
      _$BaseFromJson(input);
  Map<String, dynamic> toJson() => _$BaseToJson(this);
}

@JsonSerializable()
class Body {
  Body(this.from);
  String? from;

  factory Body.fromJson(Map<String, dynamic> input) =>
      _$BodyFromJson(input);
  Map<String, dynamic> toJson() => _$BodyToJson(this);
}

@JsonSerializable()
class Title {
  Title({this.from});
  String? from;

  factory Title.fromJson(Map<String, dynamic> input) =>
      _$TitleFromJson(input);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class Changes {
  Changes(this.base, this.body, this.title);
  Base? base;
  Body? body;
  Title? title;

  factory Changes.fromJson(Map<String, dynamic> input) =>
      _$ChangesFromJson(input);
  Map<String, dynamic> toJson() => _$ChangesToJson(this);
}
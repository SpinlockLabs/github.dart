import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'changes.g.dart';

@immutable
@JsonSerializable()
class Ref {
  const Ref(this.from);
  final String? from;

  factory Ref.fromJson(Map<String, dynamic> input) => _$RefFromJson(input);
  Map<String, dynamic> toJson() => _$RefToJson(this);
}

@immutable
@JsonSerializable()
class Sha {
  const Sha(this.from);
  final String? from;

  factory Sha.fromJson(Map<String, dynamic> input) => _$ShaFromJson(input);
  Map<String, dynamic> toJson() => _$ShaToJson(this);
}

@immutable
@JsonSerializable()
class Base {
  const Base(this.ref, this.sha);
  final Ref? ref;
  final Sha? sha;

  factory Base.fromJson(Map<String, dynamic> input) => _$BaseFromJson(input);
  Map<String, dynamic> toJson() => _$BaseToJson(this);
}

@immutable
@JsonSerializable()
class Body {
  const Body(this.from);
  final String? from;

  factory Body.fromJson(Map<String, dynamic> input) => _$BodyFromJson(input);
  Map<String, dynamic> toJson() => _$BodyToJson(this);
}

@immutable
@JsonSerializable()
class Title {
  const Title({this.from});
  final String? from;

  factory Title.fromJson(Map<String, dynamic> input) => _$TitleFromJson(input);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@immutable
@JsonSerializable()
class Changes {
  const Changes(this.base, this.body, this.title);
  final Base? base;
  final Body? body;
  final Title? title;

  factory Changes.fromJson(Map<String, dynamic> input) =>
      _$ChangesFromJson(input);
  Map<String, dynamic> toJson() => _$ChangesToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'keys.g.dart';

/// Model class for a public key.
///
/// Note: [PublicKey] is used both by the repositories' deploy keys and by the
/// users' public keys.
@JsonSerializable(fieldRename: FieldRename.snake)
class PublicKey {
  PublicKey({
    this.id,
    this.key,
    this.title,
  });
  final int id;
  final String key;
  final String title;

  factory PublicKey.fromJson(Map<String, dynamic> input) =>
      _$PublicKeyFromJson(input);
  Map<String, dynamic> toJson() => _$PublicKeyToJson(this);
}

/// Model class for a new public key to be created.
@JsonSerializable(fieldRename: FieldRename.snake)
class CreatePublicKey {
  CreatePublicKey(this.title, this.key);

  final String title;
  final String key;

  Map<String, dynamic> toJson() => _$CreatePublicKeyToJson(this);

  factory CreatePublicKey.fromJson(Map<String, dynamic> input) =>
      _$CreatePublicKeyFromJson(input);
}

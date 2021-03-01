//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object31.g.dart';

abstract class InlineObject31 implements Built<InlineObject31, InlineObject31Builder> {

    /// Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get an organization public key](https://docs.github.com/rest/reference/actions#get-an-organization-public-key) endpoint.
    @nullable
    @BuiltValueField(wireName: r'encrypted_value')
    String get encryptedValue;

    /// ID of the key you used to encrypt the secret.
    @nullable
    @BuiltValueField(wireName: r'key_id')
    String get keyId;

    /// Configures the access that repositories have to the organization secret. Can be one of:   \\- `all` - All repositories in an organization can access the secret.   \\- `private` - Private repositories in an organization can access the secret.   \\- `selected` - Only specific repositories can access the secret.
    @nullable
    @BuiltValueField(wireName: r'visibility')
    InlineObject31VisibilityEnum get visibility;
    // enum visibilityEnum {  all,  private,  selected,  };

    /// An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the `visibility` is set to `selected`. You can manage the list of selected repositories using the [List selected repositories for an organization secret](https://docs.github.com/rest/reference/actions#list-selected-repositories-for-an-organization-secret), [Set selected repositories for an organization secret](https://docs.github.com/rest/reference/actions#set-selected-repositories-for-an-organization-secret), and [Remove selected repository from an organization secret](https://docs.github.com/rest/reference/actions#remove-selected-repository-from-an-organization-secret) endpoints.
    @nullable
    @BuiltValueField(wireName: r'selected_repository_ids')
    BuiltList<String> get selectedRepositoryIds;

    // Boilerplate code needed to wire-up generated code
    InlineObject31._();

    static void _initializeBuilder(InlineObject31Builder b) => b;

    factory InlineObject31([void updates(InlineObject31Builder b)]) = _$InlineObject31;
    static Serializer<InlineObject31> get serializer => _$inlineObject31Serializer;
}

class InlineObject31VisibilityEnum extends EnumClass {

  /// Configures the access that repositories have to the organization secret. Can be one of:   \\- `all` - All repositories in an organization can access the secret.   \\- `private` - Private repositories in an organization can access the secret.   \\- `selected` - Only specific repositories can access the secret.
  @BuiltValueEnumConst(wireName: r'all')
  static const InlineObject31VisibilityEnum all = _$inlineObject31VisibilityEnum_all;
  /// Configures the access that repositories have to the organization secret. Can be one of:   \\- `all` - All repositories in an organization can access the secret.   \\- `private` - Private repositories in an organization can access the secret.   \\- `selected` - Only specific repositories can access the secret.
  @BuiltValueEnumConst(wireName: r'private')
  static const InlineObject31VisibilityEnum private = _$inlineObject31VisibilityEnum_private;
  /// Configures the access that repositories have to the organization secret. Can be one of:   \\- `all` - All repositories in an organization can access the secret.   \\- `private` - Private repositories in an organization can access the secret.   \\- `selected` - Only specific repositories can access the secret.
  @BuiltValueEnumConst(wireName: r'selected')
  static const InlineObject31VisibilityEnum selected = _$inlineObject31VisibilityEnum_selected;

  static Serializer<InlineObject31VisibilityEnum> get serializer => _$inlineObject31VisibilityEnumSerializer;

  const InlineObject31VisibilityEnum._(String name): super(name);

  static BuiltSet<InlineObject31VisibilityEnum> get values => _$inlineObject31VisibilityEnumValues;
  static InlineObject31VisibilityEnum valueOf(String name) => _$inlineObject31VisibilityEnumValueOf(name);
}


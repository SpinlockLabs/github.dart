//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'release_asset.g.dart';

abstract class ReleaseAsset implements Built<ReleaseAsset, ReleaseAssetBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'browser_download_url')
    String get browserDownloadUrl;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The file name of the asset.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'label')
    String get label;

    /// State of the release asset.
    @nullable
    @BuiltValueField(wireName: r'state')
    ReleaseAssetStateEnum get state;
    // enum stateEnum {  uploaded,  open,  };

    @nullable
    @BuiltValueField(wireName: r'content_type')
    String get contentType;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    @nullable
    @BuiltValueField(wireName: r'download_count')
    int get downloadCount;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'uploader')
    SimpleUser get uploader;

    // Boilerplate code needed to wire-up generated code
    ReleaseAsset._();

    static void _initializeBuilder(ReleaseAssetBuilder b) => b;

    factory ReleaseAsset([void updates(ReleaseAssetBuilder b)]) = _$ReleaseAsset;
    static Serializer<ReleaseAsset> get serializer => _$releaseAssetSerializer;
}

class ReleaseAssetStateEnum extends EnumClass {

  /// State of the release asset.
  @BuiltValueEnumConst(wireName: r'uploaded')
  static const ReleaseAssetStateEnum uploaded = _$releaseAssetStateEnum_uploaded;
  /// State of the release asset.
  @BuiltValueEnumConst(wireName: r'open')
  static const ReleaseAssetStateEnum open = _$releaseAssetStateEnum_open;

  static Serializer<ReleaseAssetStateEnum> get serializer => _$releaseAssetStateEnumSerializer;

  const ReleaseAssetStateEnum._(String name): super(name);

  static BuiltSet<ReleaseAssetStateEnum> get values => _$releaseAssetStateEnumValues;
  static ReleaseAssetStateEnum valueOf(String name) => _$releaseAssetStateEnumValueOf(name);
}


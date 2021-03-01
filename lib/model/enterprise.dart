//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enterprise.g.dart';

abstract class Enterprise implements Built<Enterprise, EnterpriseBuilder> {

    /// A short description of the enterprise.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    /// The enterprise's website URL.
    @nullable
    @BuiltValueField(wireName: r'website_url')
    String get websiteUrl;

    /// Unique identifier of the enterprise
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The name of the enterprise.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The slug url identifier for the enterprise.
    @nullable
    @BuiltValueField(wireName: r'slug')
    String get slug;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'avatar_url')
    String get avatarUrl;

    // Boilerplate code needed to wire-up generated code
    Enterprise._();

    static void _initializeBuilder(EnterpriseBuilder b) => b;

    factory Enterprise([void updates(EnterpriseBuilder b)]) = _$Enterprise;
    static Serializer<Enterprise> get serializer => _$enterpriseSerializer;
}


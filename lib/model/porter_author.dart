//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'porter_author.g.dart';

abstract class PorterAuthor implements Built<PorterAuthor, PorterAuthorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'remote_id')
    String get remoteId;

    @nullable
    @BuiltValueField(wireName: r'remote_name')
    String get remoteName;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'import_url')
    String get importUrl;

    // Boilerplate code needed to wire-up generated code
    PorterAuthor._();

    static void _initializeBuilder(PorterAuthorBuilder b) => b;

    factory PorterAuthor([void updates(PorterAuthorBuilder b)]) = _$PorterAuthor;
    static Serializer<PorterAuthor> get serializer => _$porterAuthorSerializer;
}


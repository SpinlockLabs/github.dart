//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_grant_app.g.dart';

abstract class ApplicationGrantApp implements Built<ApplicationGrantApp, ApplicationGrantAppBuilder> {

    @nullable
    @BuiltValueField(wireName: r'client_id')
    String get clientId;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    ApplicationGrantApp._();

    static void _initializeBuilder(ApplicationGrantAppBuilder b) => b;

    factory ApplicationGrantApp([void updates(ApplicationGrantAppBuilder b)]) = _$ApplicationGrantApp;
    static Serializer<ApplicationGrantApp> get serializer => _$applicationGrantAppSerializer;
}


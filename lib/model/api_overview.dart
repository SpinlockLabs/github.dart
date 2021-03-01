//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/api_overview_ssh_key_fingerprints.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_overview.g.dart';

abstract class ApiOverview implements Built<ApiOverview, ApiOverviewBuilder> {

    @nullable
    @BuiltValueField(wireName: r'verifiable_password_authentication')
    bool get verifiablePasswordAuthentication;

    @nullable
    @BuiltValueField(wireName: r'ssh_key_fingerprints')
    ApiOverviewSshKeyFingerprints get sshKeyFingerprints;

    @nullable
    @BuiltValueField(wireName: r'hooks')
    BuiltList<String> get hooks;

    @nullable
    @BuiltValueField(wireName: r'web')
    BuiltList<String> get web;

    @nullable
    @BuiltValueField(wireName: r'api')
    BuiltList<String> get api;

    @nullable
    @BuiltValueField(wireName: r'git')
    BuiltList<String> get git;

    @nullable
    @BuiltValueField(wireName: r'pages')
    BuiltList<String> get pages;

    @nullable
    @BuiltValueField(wireName: r'importer')
    BuiltList<String> get importer;

    @nullable
    @BuiltValueField(wireName: r'actions')
    BuiltList<String> get actions;

    // Boilerplate code needed to wire-up generated code
    ApiOverview._();

    static void _initializeBuilder(ApiOverviewBuilder b) => b;

    factory ApiOverview([void updates(ApiOverviewBuilder b)]) = _$ApiOverview;
    static Serializer<ApiOverview> get serializer => _$apiOverviewSerializer;
}


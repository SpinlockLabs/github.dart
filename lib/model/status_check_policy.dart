//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_check_policy.g.dart';

abstract class StatusCheckPolicy implements Built<StatusCheckPolicy, StatusCheckPolicyBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'strict')
    bool get strict;

    @nullable
    @BuiltValueField(wireName: r'contexts')
    BuiltList<String> get contexts;

    @nullable
    @BuiltValueField(wireName: r'contexts_url')
    String get contextsUrl;

    // Boilerplate code needed to wire-up generated code
    StatusCheckPolicy._();

    static void _initializeBuilder(StatusCheckPolicyBuilder b) => b;

    factory StatusCheckPolicy([void updates(StatusCheckPolicyBuilder b)]) = _$StatusCheckPolicy;
    static Serializer<StatusCheckPolicy> get serializer => _$statusCheckPolicySerializer;
}


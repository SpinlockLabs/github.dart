//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/traffic.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'clone_traffic.g.dart';

abstract class CloneTraffic implements Built<CloneTraffic, CloneTrafficBuilder> {

    @nullable
    @BuiltValueField(wireName: r'count')
    int get count;

    @nullable
    @BuiltValueField(wireName: r'uniques')
    int get uniques;

    @nullable
    @BuiltValueField(wireName: r'clones')
    BuiltList<Traffic> get clones;

    // Boilerplate code needed to wire-up generated code
    CloneTraffic._();

    static void _initializeBuilder(CloneTrafficBuilder b) => b;

    factory CloneTraffic([void updates(CloneTrafficBuilder b)]) = _$CloneTraffic;
    static Serializer<CloneTraffic> get serializer => _$cloneTrafficSerializer;
}


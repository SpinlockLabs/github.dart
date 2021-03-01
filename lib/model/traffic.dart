//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'traffic.g.dart';

abstract class Traffic implements Built<Traffic, TrafficBuilder> {

    @nullable
    @BuiltValueField(wireName: r'timestamp')
    DateTime get timestamp;

    @nullable
    @BuiltValueField(wireName: r'uniques')
    int get uniques;

    @nullable
    @BuiltValueField(wireName: r'count')
    int get count;

    // Boilerplate code needed to wire-up generated code
    Traffic._();

    static void _initializeBuilder(TrafficBuilder b) => b;

    factory Traffic([void updates(TrafficBuilder b)]) = _$Traffic;
    static Serializer<Traffic> get serializer => _$trafficSerializer;
}


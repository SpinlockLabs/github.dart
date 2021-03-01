//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/traffic.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'view_traffic.g.dart';

abstract class ViewTraffic implements Built<ViewTraffic, ViewTrafficBuilder> {

    @nullable
    @BuiltValueField(wireName: r'count')
    int get count;

    @nullable
    @BuiltValueField(wireName: r'uniques')
    int get uniques;

    @nullable
    @BuiltValueField(wireName: r'views')
    BuiltList<Traffic> get views;

    // Boilerplate code needed to wire-up generated code
    ViewTraffic._();

    static void _initializeBuilder(ViewTrafficBuilder b) => b;

    factory ViewTraffic([void updates(ViewTrafficBuilder b)]) = _$ViewTraffic;
    static Serializer<ViewTraffic> get serializer => _$viewTrafficSerializer;
}


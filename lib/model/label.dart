//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'label.g.dart';

abstract class Label implements Built<Label, LabelBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// URL for the label
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// The name of the label.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// 6-character hex code, without the leading #, identifying the color
    @nullable
    @BuiltValueField(wireName: r'color')
    String get color;

    @nullable
    @BuiltValueField(wireName: r'default')
    bool get default_;

    // Boilerplate code needed to wire-up generated code
    Label._();

    static void _initializeBuilder(LabelBuilder b) => b;

    factory Label([void updates(LabelBuilder b)]) = _$Label;
    static Serializer<Label> get serializer => _$labelSerializer;
}


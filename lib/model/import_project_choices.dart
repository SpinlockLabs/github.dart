//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_project_choices.g.dart';

abstract class ImportProjectChoices implements Built<ImportProjectChoices, ImportProjectChoicesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'vcs')
    String get vcs;

    @nullable
    @BuiltValueField(wireName: r'tfvc_project')
    String get tfvcProject;

    @nullable
    @BuiltValueField(wireName: r'human_name')
    String get humanName;

    // Boilerplate code needed to wire-up generated code
    ImportProjectChoices._();

    static void _initializeBuilder(ImportProjectChoicesBuilder b) => b;

    factory ImportProjectChoices([void updates(ImportProjectChoicesBuilder b)]) = _$ImportProjectChoices;
    static Serializer<ImportProjectChoices> get serializer => _$importProjectChoicesSerializer;
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'diff_entry.g.dart';

abstract class DiffEntry implements Built<DiffEntry, DiffEntryBuilder> {

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'filename')
    String get filename;

    @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    @nullable
    @BuiltValueField(wireName: r'additions')
    int get additions;

    @nullable
    @BuiltValueField(wireName: r'deletions')
    int get deletions;

    @nullable
    @BuiltValueField(wireName: r'changes')
    int get changes;

    @nullable
    @BuiltValueField(wireName: r'blob_url')
    String get blobUrl;

    @nullable
    @BuiltValueField(wireName: r'raw_url')
    String get rawUrl;

    @nullable
    @BuiltValueField(wireName: r'contents_url')
    String get contentsUrl;

    @nullable
    @BuiltValueField(wireName: r'patch')
    String get patch_;

    @nullable
    @BuiltValueField(wireName: r'previous_filename')
    String get previousFilename;

    // Boilerplate code needed to wire-up generated code
    DiffEntry._();

    static void _initializeBuilder(DiffEntryBuilder b) => b;

    factory DiffEntry([void updates(DiffEntryBuilder b)]) = _$DiffEntry;
    static Serializer<DiffEntry> get serializer => _$diffEntrySerializer;
}


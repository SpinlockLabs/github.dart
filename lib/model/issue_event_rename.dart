//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_event_rename.g.dart';

abstract class IssueEventRename implements Built<IssueEventRename, IssueEventRenameBuilder> {

    @nullable
    @BuiltValueField(wireName: r'from')
    String get from;

    @nullable
    @BuiltValueField(wireName: r'to')
    String get to;

    // Boilerplate code needed to wire-up generated code
    IssueEventRename._();

    static void _initializeBuilder(IssueEventRenameBuilder b) => b;

    factory IssueEventRename([void updates(IssueEventRenameBuilder b)]) = _$IssueEventRename;
    static Serializer<IssueEventRename> get serializer => _$issueEventRenameSerializer;
}


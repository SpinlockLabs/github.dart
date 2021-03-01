//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/one_ofstringobject.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/one_ofstringinteger.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object110.g.dart';

abstract class InlineObject110 implements Built<InlineObject110, InlineObject110Builder> {

    /// The title of the issue.
    @nullable
    @BuiltValueField(wireName: r'title')
    OneOfstringinteger get title;

    /// The contents of the issue.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// Login for the user that this issue should be assigned to. _NOTE: Only users with push access can set the assignee for new issues. The assignee is silently dropped otherwise. **This field is deprecated.**_
    @nullable
    @BuiltValueField(wireName: r'assignee')
    String get assignee;

    @nullable
    @BuiltValueField(wireName: r'milestone')
    OneOfstringinteger get milestone;

    /// Labels to associate with this issue. _NOTE: Only users with push access can set labels for new issues. Labels are silently dropped otherwise._
    @nullable
    @BuiltValueField(wireName: r'labels')
    BuiltList<OneOfstringobject> get labels;

    /// Logins for Users to assign to this issue. _NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise._
    @nullable
    @BuiltValueField(wireName: r'assignees')
    BuiltList<String> get assignees;

    // Boilerplate code needed to wire-up generated code
    InlineObject110._();

    static void _initializeBuilder(InlineObject110Builder b) => b;

    factory InlineObject110([void updates(InlineObject110Builder b)]) = _$InlineObject110;
    static Serializer<InlineObject110> get serializer => _$inlineObject110Serializer;
}


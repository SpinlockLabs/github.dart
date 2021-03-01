//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object135.g.dart';

abstract class InlineObject135 implements Built<InlineObject135, InlineObject135Builder> {

    /// The text of the review comment.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// The SHA of the commit needing a comment. Not using the latest commit SHA may render your comment outdated if a subsequent commit modifies the line you specify as the `position`.
    @nullable
    @BuiltValueField(wireName: r'commit_id')
    String get commitId;

    /// The relative path to the file that necessitates a comment.
    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    /// **Required without `comfort-fade` preview**. The position in the diff where you want to add a review comment. Note this value is not the same as the line number in the file. For help finding the position value, read the note above.
    @nullable
    @BuiltValueField(wireName: r'position')
    int get position;

    /// **Required with `comfort-fade` preview**. In a split diff view, the side of the diff that the pull request's changes appear on. Can be `LEFT` or `RIGHT`. Use `LEFT` for deletions that appear in red. Use `RIGHT` for additions that appear in green or unchanged lines that appear in white and are shown for context. For a multi-line comment, side represents whether the last line of the comment range is a deletion or addition. For more information, see \"[Diff view options](https://help.github.com/en/articles/about-comparing-branches-in-pull-requests#diff-view-options)\" in the GitHub Help documentation.
    @nullable
    @BuiltValueField(wireName: r'side')
    InlineObject135SideEnum get side;
    // enum sideEnum {  LEFT,  RIGHT,  };

    /// **Required with `comfort-fade` preview**. The line of the blob in the pull request diff that the comment applies to. For a multi-line comment, the last line of the range that your comment applies to.
    @nullable
    @BuiltValueField(wireName: r'line')
    int get line;

    /// **Required when using multi-line comments**. To create multi-line comments, you must use the `comfort-fade` preview header. The `start_line` is the first line in the pull request diff that your multi-line comment applies to. To learn more about multi-line comments, see \"[Commenting on a pull request](https://help.github.com/en/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)\" in the GitHub Help documentation.
    @nullable
    @BuiltValueField(wireName: r'start_line')
    int get startLine;

    /// **Required when using multi-line comments**. To create multi-line comments, you must use the `comfort-fade` preview header. The `start_side` is the starting side of the diff that the comment applies to. Can be `LEFT` or `RIGHT`. To learn more about multi-line comments, see \"[Commenting on a pull request](https://help.github.com/en/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)\" in the GitHub Help documentation. See `side` in this table for additional context.
    @nullable
    @BuiltValueField(wireName: r'start_side')
    InlineObject135StartSideEnum get startSide;
    // enum startSideEnum {  LEFT,  RIGHT,  side,  };

    @nullable
    @BuiltValueField(wireName: r'in_reply_to')
    int get inReplyTo;

    // Boilerplate code needed to wire-up generated code
    InlineObject135._();

    static void _initializeBuilder(InlineObject135Builder b) => b;

    factory InlineObject135([void updates(InlineObject135Builder b)]) = _$InlineObject135;
    static Serializer<InlineObject135> get serializer => _$inlineObject135Serializer;
}

class InlineObject135SideEnum extends EnumClass {

  /// **Required with `comfort-fade` preview**. In a split diff view, the side of the diff that the pull request's changes appear on. Can be `LEFT` or `RIGHT`. Use `LEFT` for deletions that appear in red. Use `RIGHT` for additions that appear in green or unchanged lines that appear in white and are shown for context. For a multi-line comment, side represents whether the last line of the comment range is a deletion or addition. For more information, see \"[Diff view options](https://help.github.com/en/articles/about-comparing-branches-in-pull-requests#diff-view-options)\" in the GitHub Help documentation.
  @BuiltValueEnumConst(wireName: r'LEFT')
  static const InlineObject135SideEnum LEFT = _$inlineObject135SideEnum_LEFT;
  /// **Required with `comfort-fade` preview**. In a split diff view, the side of the diff that the pull request's changes appear on. Can be `LEFT` or `RIGHT`. Use `LEFT` for deletions that appear in red. Use `RIGHT` for additions that appear in green or unchanged lines that appear in white and are shown for context. For a multi-line comment, side represents whether the last line of the comment range is a deletion or addition. For more information, see \"[Diff view options](https://help.github.com/en/articles/about-comparing-branches-in-pull-requests#diff-view-options)\" in the GitHub Help documentation.
  @BuiltValueEnumConst(wireName: r'RIGHT')
  static const InlineObject135SideEnum RIGHT = _$inlineObject135SideEnum_RIGHT;

  static Serializer<InlineObject135SideEnum> get serializer => _$inlineObject135SideEnumSerializer;

  const InlineObject135SideEnum._(String name): super(name);

  static BuiltSet<InlineObject135SideEnum> get values => _$inlineObject135SideEnumValues;
  static InlineObject135SideEnum valueOf(String name) => _$inlineObject135SideEnumValueOf(name);
}

class InlineObject135StartSideEnum extends EnumClass {

  /// **Required when using multi-line comments**. To create multi-line comments, you must use the `comfort-fade` preview header. The `start_side` is the starting side of the diff that the comment applies to. Can be `LEFT` or `RIGHT`. To learn more about multi-line comments, see \"[Commenting on a pull request](https://help.github.com/en/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)\" in the GitHub Help documentation. See `side` in this table for additional context.
  @BuiltValueEnumConst(wireName: r'LEFT')
  static const InlineObject135StartSideEnum LEFT = _$inlineObject135StartSideEnum_LEFT;
  /// **Required when using multi-line comments**. To create multi-line comments, you must use the `comfort-fade` preview header. The `start_side` is the starting side of the diff that the comment applies to. Can be `LEFT` or `RIGHT`. To learn more about multi-line comments, see \"[Commenting on a pull request](https://help.github.com/en/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)\" in the GitHub Help documentation. See `side` in this table for additional context.
  @BuiltValueEnumConst(wireName: r'RIGHT')
  static const InlineObject135StartSideEnum RIGHT = _$inlineObject135StartSideEnum_RIGHT;
  /// **Required when using multi-line comments**. To create multi-line comments, you must use the `comfort-fade` preview header. The `start_side` is the starting side of the diff that the comment applies to. Can be `LEFT` or `RIGHT`. To learn more about multi-line comments, see \"[Commenting on a pull request](https://help.github.com/en/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)\" in the GitHub Help documentation. See `side` in this table for additional context.
  @BuiltValueEnumConst(wireName: r'side')
  static const InlineObject135StartSideEnum side = _$inlineObject135StartSideEnum_side;

  static Serializer<InlineObject135StartSideEnum> get serializer => _$inlineObject135StartSideEnumSerializer;

  const InlineObject135StartSideEnum._(String name): super(name);

  static BuiltSet<InlineObject135StartSideEnum> get values => _$inlineObject135StartSideEnumValues;
  static InlineObject135StartSideEnum valueOf(String name) => _$inlineObject135StartSideEnumValueOf(name);
}


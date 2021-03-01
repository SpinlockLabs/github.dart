//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object123.g.dart';

abstract class InlineObject123 implements Built<InlineObject123, InlineObject123Builder> {

    /// The new name of the label. Emoji can be added to label names, using either native emoji or colon-style markup. For example, typing `:strawberry:` will render the emoji ![:strawberry:](https://github.githubassets.com/images/icons/emoji/unicode/1f353.png \":strawberry:\"). For a full list of available emoji and codes, see [emoji-cheat-sheet.com](http://emoji-cheat-sheet.com/).
    @nullable
    @BuiltValueField(wireName: r'new_name')
    String get newName;

    /// The [hexadecimal color code](http://www.color-hex.com/) for the label, without the leading `#`.
    @nullable
    @BuiltValueField(wireName: r'color')
    String get color;

    /// A short description of the label.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    // Boilerplate code needed to wire-up generated code
    InlineObject123._();

    static void _initializeBuilder(InlineObject123Builder b) => b;

    factory InlineObject123([void updates(InlineObject123Builder b)]) = _$InlineObject123;
    static Serializer<InlineObject123> get serializer => _$inlineObject123Serializer;
}


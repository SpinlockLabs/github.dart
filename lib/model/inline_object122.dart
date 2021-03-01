//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object122.g.dart';

abstract class InlineObject122 implements Built<InlineObject122, InlineObject122Builder> {

    /// The name of the label. Emoji can be added to label names, using either native emoji or colon-style markup. For example, typing `:strawberry:` will render the emoji ![:strawberry:](https://github.githubassets.com/images/icons/emoji/unicode/1f353.png \":strawberry:\"). For a full list of available emoji and codes, see [emoji-cheat-sheet.com](http://emoji-cheat-sheet.com/).
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The [hexadecimal color code](http://www.color-hex.com/) for the label, without the leading `#`.
    @nullable
    @BuiltValueField(wireName: r'color')
    String get color;

    /// A short description of the label.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    // Boilerplate code needed to wire-up generated code
    InlineObject122._();

    static void _initializeBuilder(InlineObject122Builder b) => b;

    factory InlineObject122([void updates(InlineObject122Builder b)]) = _$InlineObject122;
    static Serializer<InlineObject122> get serializer => _$inlineObject122Serializer;
}


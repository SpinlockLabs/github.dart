//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/any_ofstringobject.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object128.g.dart';

abstract class InlineObject128 implements Built<InlineObject128, InlineObject128Builder> {

    /// Specify a custom domain for the repository. Sending a `null` value will remove the custom domain. For more about custom domains, see \"[Using a custom domain with GitHub Pages](https://help.github.com/articles/using-a-custom-domain-with-github-pages/).\"
    @nullable
    @BuiltValueField(wireName: r'cname')
    String get cname;

    /// Configures access controls for the GitHub Pages site. If public is set to `true`, the site is accessible to anyone on the internet. If set to `false`, the site will only be accessible to users who have at least `read` access to the repository that published the site. This includes anyone in your Enterprise if the repository is set to `internal` visibility. This feature is only available to repositories in an organization on an Enterprise plan.
    @nullable
    @BuiltValueField(wireName: r'public')
    bool get public;

    @nullable
    @BuiltValueField(wireName: r'source')
    AnyOfstringobject get source_;

    // Boilerplate code needed to wire-up generated code
    InlineObject128._();

    static void _initializeBuilder(InlineObject128Builder b) => b;

    factory InlineObject128([void updates(InlineObject128Builder b)]) = _$InlineObject128;
    static Serializer<InlineObject128> get serializer => _$inlineObject128Serializer;
}


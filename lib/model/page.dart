//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pages_source_hash.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page.g.dart';

abstract class Page implements Built<Page, PageBuilder> {

    /// The API address for accessing this Page resource.
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// The status of the most recent build of the Page.
    @nullable
    @BuiltValueField(wireName: r'status')
    PageStatusEnum get status;
    // enum statusEnum {  built,  building,  errored,  };

    /// The Pages site's custom domain
    @nullable
    @BuiltValueField(wireName: r'cname')
    String get cname;

    /// Whether the Page has a custom 404 page.
    @nullable
    @BuiltValueField(wireName: r'custom_404')
    bool get custom404;

    /// The web address the Page can be accessed from.
    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'source')
    PagesSourceHash get source_;

    /// Whether the GitHub Pages site is publicly visible. If set to `true`, the site is accessible to anyone on the internet. If set to `false`, the site will only be accessible to users who have at least `read` access to the repository that published the site.
    @nullable
    @BuiltValueField(wireName: r'public')
    bool get public;

    // Boilerplate code needed to wire-up generated code
    Page._();

    static void _initializeBuilder(PageBuilder b) => b
        ..custom404 = false;

    factory Page([void updates(PageBuilder b)]) = _$Page;
    static Serializer<Page> get serializer => _$pageSerializer;
}

class PageStatusEnum extends EnumClass {

  /// The status of the most recent build of the Page.
  @BuiltValueEnumConst(wireName: r'built')
  static const PageStatusEnum built = _$pageStatusEnum_built;
  /// The status of the most recent build of the Page.
  @BuiltValueEnumConst(wireName: r'building')
  static const PageStatusEnum building = _$pageStatusEnum_building;
  /// The status of the most recent build of the Page.
  @BuiltValueEnumConst(wireName: r'errored')
  static const PageStatusEnum errored = _$pageStatusEnum_errored;

  static Serializer<PageStatusEnum> get serializer => _$pageStatusEnumSerializer;

  const PageStatusEnum._(String name): super(name);

  static BuiltSet<PageStatusEnum> get values => _$pageStatusEnumValues;
  static PageStatusEnum valueOf(String name) => _$pageStatusEnumValueOf(name);
}


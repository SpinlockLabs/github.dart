// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'content_tree.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentTree> _$contentTreeSerializer = new _$ContentTreeSerializer();

class _$ContentTreeSerializer implements StructuredSerializer<ContentTree> {
  @override
  final Iterable<Type> types = const [ContentTree, _$ContentTree];
  @override
  final String wireName = 'ContentTree';

  @override
  Iterable<Object> serialize(Serializers serializers, ContentTree object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.gitUrl != null) {
      result
        ..add('git_url')
        ..add(serializers.serialize(object.gitUrl,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.downloadUrl != null) {
      result
        ..add('download_url')
        ..add(serializers.serialize(object.downloadUrl,
            specifiedType: const FullType(String)));
    }
    if (object.entries != null) {
      result
        ..add('entries')
        ..add(serializers.serialize(object.entries,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContentTreeEntries)])));
    }
    if (object.links != null) {
      result
        ..add('_links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(ContentTreeLinks)));
    }
    return result;
  }

  @override
  ContentTree deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentTreeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_url':
          result.gitUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'download_url':
          result.downloadUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'entries':
          result.entries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ContentTreeEntries)]))
              as BuiltList<Object>);
          break;
        case '_links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ContentTreeLinks))
              as ContentTreeLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$ContentTree extends ContentTree {
  @override
  final String type;
  @override
  final int size;
  @override
  final String name;
  @override
  final String path;
  @override
  final String sha;
  @override
  final String url;
  @override
  final String gitUrl;
  @override
  final String htmlUrl;
  @override
  final String downloadUrl;
  @override
  final BuiltList<ContentTreeEntries> entries;
  @override
  final ContentTreeLinks links;

  factory _$ContentTree([void Function(ContentTreeBuilder) updates]) =>
      (new ContentTreeBuilder()..update(updates)).build();

  _$ContentTree._(
      {this.type,
      this.size,
      this.name,
      this.path,
      this.sha,
      this.url,
      this.gitUrl,
      this.htmlUrl,
      this.downloadUrl,
      this.entries,
      this.links})
      : super._();

  @override
  ContentTree rebuild(void Function(ContentTreeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentTreeBuilder toBuilder() => new ContentTreeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentTree &&
        type == other.type &&
        size == other.size &&
        name == other.name &&
        path == other.path &&
        sha == other.sha &&
        url == other.url &&
        gitUrl == other.gitUrl &&
        htmlUrl == other.htmlUrl &&
        downloadUrl == other.downloadUrl &&
        entries == other.entries &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, type.hashCode),
                                            size.hashCode),
                                        name.hashCode),
                                    path.hashCode),
                                sha.hashCode),
                            url.hashCode),
                        gitUrl.hashCode),
                    htmlUrl.hashCode),
                downloadUrl.hashCode),
            entries.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentTree')
          ..add('type', type)
          ..add('size', size)
          ..add('name', name)
          ..add('path', path)
          ..add('sha', sha)
          ..add('url', url)
          ..add('gitUrl', gitUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('downloadUrl', downloadUrl)
          ..add('entries', entries)
          ..add('links', links))
        .toString();
  }
}

class ContentTreeBuilder implements Builder<ContentTree, ContentTreeBuilder> {
  _$ContentTree _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _gitUrl;
  String get gitUrl => _$this._gitUrl;
  set gitUrl(String gitUrl) => _$this._gitUrl = gitUrl;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _downloadUrl;
  String get downloadUrl => _$this._downloadUrl;
  set downloadUrl(String downloadUrl) => _$this._downloadUrl = downloadUrl;

  ListBuilder<ContentTreeEntries> _entries;
  ListBuilder<ContentTreeEntries> get entries =>
      _$this._entries ??= new ListBuilder<ContentTreeEntries>();
  set entries(ListBuilder<ContentTreeEntries> entries) =>
      _$this._entries = entries;

  ContentTreeLinksBuilder _links;
  ContentTreeLinksBuilder get links =>
      _$this._links ??= new ContentTreeLinksBuilder();
  set links(ContentTreeLinksBuilder links) => _$this._links = links;

  ContentTreeBuilder() {
    ContentTree._initializeBuilder(this);
  }

  ContentTreeBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _size = _$v.size;
      _name = _$v.name;
      _path = _$v.path;
      _sha = _$v.sha;
      _url = _$v.url;
      _gitUrl = _$v.gitUrl;
      _htmlUrl = _$v.htmlUrl;
      _downloadUrl = _$v.downloadUrl;
      _entries = _$v.entries?.toBuilder();
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentTree other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentTree;
  }

  @override
  void update(void Function(ContentTreeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentTree build() {
    _$ContentTree _$result;
    try {
      _$result = _$v ??
          new _$ContentTree._(
              type: type,
              size: size,
              name: name,
              path: path,
              sha: sha,
              url: url,
              gitUrl: gitUrl,
              htmlUrl: htmlUrl,
              downloadUrl: downloadUrl,
              entries: _entries?.build(),
              links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'entries';
        _entries?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContentTree', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'content_tree_entries.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentTreeEntries> _$contentTreeEntriesSerializer =
    new _$ContentTreeEntriesSerializer();

class _$ContentTreeEntriesSerializer
    implements StructuredSerializer<ContentTreeEntries> {
  @override
  final Iterable<Type> types = const [ContentTreeEntries, _$ContentTreeEntries];
  @override
  final String wireName = 'ContentTreeEntries';

  @override
  Iterable<Object> serialize(Serializers serializers, ContentTreeEntries object,
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
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
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
    if (object.links != null) {
      result
        ..add('_links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(ContentTreeLinks)));
    }
    return result;
  }

  @override
  ContentTreeEntries deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentTreeEntriesBuilder();

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
        case 'content':
          result.content = serializers.deserialize(value,
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

class _$ContentTreeEntries extends ContentTreeEntries {
  @override
  final String type;
  @override
  final int size;
  @override
  final String name;
  @override
  final String path;
  @override
  final String content;
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
  final ContentTreeLinks links;

  factory _$ContentTreeEntries(
          [void Function(ContentTreeEntriesBuilder) updates]) =>
      (new ContentTreeEntriesBuilder()..update(updates)).build();

  _$ContentTreeEntries._(
      {this.type,
      this.size,
      this.name,
      this.path,
      this.content,
      this.sha,
      this.url,
      this.gitUrl,
      this.htmlUrl,
      this.downloadUrl,
      this.links})
      : super._();

  @override
  ContentTreeEntries rebuild(
          void Function(ContentTreeEntriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentTreeEntriesBuilder toBuilder() =>
      new ContentTreeEntriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentTreeEntries &&
        type == other.type &&
        size == other.size &&
        name == other.name &&
        path == other.path &&
        content == other.content &&
        sha == other.sha &&
        url == other.url &&
        gitUrl == other.gitUrl &&
        htmlUrl == other.htmlUrl &&
        downloadUrl == other.downloadUrl &&
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
                                content.hashCode),
                            sha.hashCode),
                        url.hashCode),
                    gitUrl.hashCode),
                htmlUrl.hashCode),
            downloadUrl.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentTreeEntries')
          ..add('type', type)
          ..add('size', size)
          ..add('name', name)
          ..add('path', path)
          ..add('content', content)
          ..add('sha', sha)
          ..add('url', url)
          ..add('gitUrl', gitUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('downloadUrl', downloadUrl)
          ..add('links', links))
        .toString();
  }
}

class ContentTreeEntriesBuilder
    implements Builder<ContentTreeEntries, ContentTreeEntriesBuilder> {
  _$ContentTreeEntries _$v;

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

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

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

  ContentTreeLinksBuilder _links;
  ContentTreeLinksBuilder get links =>
      _$this._links ??= new ContentTreeLinksBuilder();
  set links(ContentTreeLinksBuilder links) => _$this._links = links;

  ContentTreeEntriesBuilder() {
    ContentTreeEntries._initializeBuilder(this);
  }

  ContentTreeEntriesBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _size = _$v.size;
      _name = _$v.name;
      _path = _$v.path;
      _content = _$v.content;
      _sha = _$v.sha;
      _url = _$v.url;
      _gitUrl = _$v.gitUrl;
      _htmlUrl = _$v.htmlUrl;
      _downloadUrl = _$v.downloadUrl;
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentTreeEntries other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentTreeEntries;
  }

  @override
  void update(void Function(ContentTreeEntriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentTreeEntries build() {
    _$ContentTreeEntries _$result;
    try {
      _$result = _$v ??
          new _$ContentTreeEntries._(
              type: type,
              size: size,
              name: name,
              path: path,
              content: content,
              sha: sha,
              url: url,
              gitUrl: gitUrl,
              htmlUrl: htmlUrl,
              downloadUrl: downloadUrl,
              links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContentTreeEntries', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

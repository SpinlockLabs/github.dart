// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'license_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LicenseContent> _$licenseContentSerializer =
    new _$LicenseContentSerializer();

class _$LicenseContentSerializer
    implements StructuredSerializer<LicenseContent> {
  @override
  final Iterable<Type> types = const [LicenseContent, _$LicenseContent];
  @override
  final String wireName = 'LicenseContent';

  @override
  Iterable<Object> serialize(Serializers serializers, LicenseContent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.gitUrl != null) {
      result
        ..add('git_url')
        ..add(serializers.serialize(object.gitUrl,
            specifiedType: const FullType(String)));
    }
    if (object.downloadUrl != null) {
      result
        ..add('download_url')
        ..add(serializers.serialize(object.downloadUrl,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.encoding != null) {
      result
        ..add('encoding')
        ..add(serializers.serialize(object.encoding,
            specifiedType: const FullType(String)));
    }
    if (object.links != null) {
      result
        ..add('_links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(ContentTreeLinks)));
    }
    if (object.license != null) {
      result
        ..add('license')
        ..add(serializers.serialize(object.license,
            specifiedType: const FullType(LicenseSimple)));
    }
    return result;
  }

  @override
  LicenseContent deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LicenseContentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_url':
          result.gitUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'download_url':
          result.downloadUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'encoding':
          result.encoding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ContentTreeLinks))
              as ContentTreeLinks);
          break;
        case 'license':
          result.license.replace(serializers.deserialize(value,
              specifiedType: const FullType(LicenseSimple)) as LicenseSimple);
          break;
      }
    }

    return result.build();
  }
}

class _$LicenseContent extends LicenseContent {
  @override
  final String name;
  @override
  final String path;
  @override
  final String sha;
  @override
  final int size;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String gitUrl;
  @override
  final String downloadUrl;
  @override
  final String type;
  @override
  final String content;
  @override
  final String encoding;
  @override
  final ContentTreeLinks links;
  @override
  final LicenseSimple license;

  factory _$LicenseContent([void Function(LicenseContentBuilder) updates]) =>
      (new LicenseContentBuilder()..update(updates)).build();

  _$LicenseContent._(
      {this.name,
      this.path,
      this.sha,
      this.size,
      this.url,
      this.htmlUrl,
      this.gitUrl,
      this.downloadUrl,
      this.type,
      this.content,
      this.encoding,
      this.links,
      this.license})
      : super._();

  @override
  LicenseContent rebuild(void Function(LicenseContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseContentBuilder toBuilder() =>
      new LicenseContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseContent &&
        name == other.name &&
        path == other.path &&
        sha == other.sha &&
        size == other.size &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        gitUrl == other.gitUrl &&
        downloadUrl == other.downloadUrl &&
        type == other.type &&
        content == other.content &&
        encoding == other.encoding &&
        links == other.links &&
        license == other.license;
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
                                        $jc(
                                            $jc(
                                                $jc($jc(0, name.hashCode),
                                                    path.hashCode),
                                                sha.hashCode),
                                            size.hashCode),
                                        url.hashCode),
                                    htmlUrl.hashCode),
                                gitUrl.hashCode),
                            downloadUrl.hashCode),
                        type.hashCode),
                    content.hashCode),
                encoding.hashCode),
            links.hashCode),
        license.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LicenseContent')
          ..add('name', name)
          ..add('path', path)
          ..add('sha', sha)
          ..add('size', size)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('gitUrl', gitUrl)
          ..add('downloadUrl', downloadUrl)
          ..add('type', type)
          ..add('content', content)
          ..add('encoding', encoding)
          ..add('links', links)
          ..add('license', license))
        .toString();
  }
}

class LicenseContentBuilder
    implements Builder<LicenseContent, LicenseContentBuilder> {
  _$LicenseContent _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _gitUrl;
  String get gitUrl => _$this._gitUrl;
  set gitUrl(String gitUrl) => _$this._gitUrl = gitUrl;

  String _downloadUrl;
  String get downloadUrl => _$this._downloadUrl;
  set downloadUrl(String downloadUrl) => _$this._downloadUrl = downloadUrl;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _encoding;
  String get encoding => _$this._encoding;
  set encoding(String encoding) => _$this._encoding = encoding;

  ContentTreeLinksBuilder _links;
  ContentTreeLinksBuilder get links =>
      _$this._links ??= new ContentTreeLinksBuilder();
  set links(ContentTreeLinksBuilder links) => _$this._links = links;

  LicenseSimpleBuilder _license;
  LicenseSimpleBuilder get license =>
      _$this._license ??= new LicenseSimpleBuilder();
  set license(LicenseSimpleBuilder license) => _$this._license = license;

  LicenseContentBuilder() {
    LicenseContent._initializeBuilder(this);
  }

  LicenseContentBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _path = _$v.path;
      _sha = _$v.sha;
      _size = _$v.size;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _gitUrl = _$v.gitUrl;
      _downloadUrl = _$v.downloadUrl;
      _type = _$v.type;
      _content = _$v.content;
      _encoding = _$v.encoding;
      _links = _$v.links?.toBuilder();
      _license = _$v.license?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseContent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LicenseContent;
  }

  @override
  void update(void Function(LicenseContentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LicenseContent build() {
    _$LicenseContent _$result;
    try {
      _$result = _$v ??
          new _$LicenseContent._(
              name: name,
              path: path,
              sha: sha,
              size: size,
              url: url,
              htmlUrl: htmlUrl,
              gitUrl: gitUrl,
              downloadUrl: downloadUrl,
              type: type,
              content: content,
              encoding: encoding,
              links: _links?.build(),
              license: _license?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'license';
        _license?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LicenseContent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

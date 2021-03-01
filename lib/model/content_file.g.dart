// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'content_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentFile> _$contentFileSerializer = new _$ContentFileSerializer();

class _$ContentFileSerializer implements StructuredSerializer<ContentFile> {
  @override
  final Iterable<Type> types = const [ContentFile, _$ContentFile];
  @override
  final String wireName = 'ContentFile';

  @override
  Iterable<Object> serialize(Serializers serializers, ContentFile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.encoding != null) {
      result
        ..add('encoding')
        ..add(serializers.serialize(object.encoding,
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
    if (object.target != null) {
      result
        ..add('target')
        ..add(serializers.serialize(object.target,
            specifiedType: const FullType(String)));
    }
    if (object.submoduleGitUrl != null) {
      result
        ..add('submodule_git_url')
        ..add(serializers.serialize(object.submoduleGitUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContentFile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentFileBuilder();

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
        case 'encoding':
          result.encoding = serializers.deserialize(value,
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
        case 'target':
          result.target = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'submodule_git_url':
          result.submoduleGitUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContentFile extends ContentFile {
  @override
  final String type;
  @override
  final String encoding;
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
  @override
  final String target;
  @override
  final String submoduleGitUrl;

  factory _$ContentFile([void Function(ContentFileBuilder) updates]) =>
      (new ContentFileBuilder()..update(updates)).build();

  _$ContentFile._(
      {this.type,
      this.encoding,
      this.size,
      this.name,
      this.path,
      this.content,
      this.sha,
      this.url,
      this.gitUrl,
      this.htmlUrl,
      this.downloadUrl,
      this.links,
      this.target,
      this.submoduleGitUrl})
      : super._();

  @override
  ContentFile rebuild(void Function(ContentFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentFileBuilder toBuilder() => new ContentFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentFile &&
        type == other.type &&
        encoding == other.encoding &&
        size == other.size &&
        name == other.name &&
        path == other.path &&
        content == other.content &&
        sha == other.sha &&
        url == other.url &&
        gitUrl == other.gitUrl &&
        htmlUrl == other.htmlUrl &&
        downloadUrl == other.downloadUrl &&
        links == other.links &&
        target == other.target &&
        submoduleGitUrl == other.submoduleGitUrl;
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
                                                $jc(
                                                    $jc($jc(0, type.hashCode),
                                                        encoding.hashCode),
                                                    size.hashCode),
                                                name.hashCode),
                                            path.hashCode),
                                        content.hashCode),
                                    sha.hashCode),
                                url.hashCode),
                            gitUrl.hashCode),
                        htmlUrl.hashCode),
                    downloadUrl.hashCode),
                links.hashCode),
            target.hashCode),
        submoduleGitUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentFile')
          ..add('type', type)
          ..add('encoding', encoding)
          ..add('size', size)
          ..add('name', name)
          ..add('path', path)
          ..add('content', content)
          ..add('sha', sha)
          ..add('url', url)
          ..add('gitUrl', gitUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('downloadUrl', downloadUrl)
          ..add('links', links)
          ..add('target', target)
          ..add('submoduleGitUrl', submoduleGitUrl))
        .toString();
  }
}

class ContentFileBuilder implements Builder<ContentFile, ContentFileBuilder> {
  _$ContentFile _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _encoding;
  String get encoding => _$this._encoding;
  set encoding(String encoding) => _$this._encoding = encoding;

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

  String _target;
  String get target => _$this._target;
  set target(String target) => _$this._target = target;

  String _submoduleGitUrl;
  String get submoduleGitUrl => _$this._submoduleGitUrl;
  set submoduleGitUrl(String submoduleGitUrl) =>
      _$this._submoduleGitUrl = submoduleGitUrl;

  ContentFileBuilder() {
    ContentFile._initializeBuilder(this);
  }

  ContentFileBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _encoding = _$v.encoding;
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
      _target = _$v.target;
      _submoduleGitUrl = _$v.submoduleGitUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentFile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentFile;
  }

  @override
  void update(void Function(ContentFileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentFile build() {
    _$ContentFile _$result;
    try {
      _$result = _$v ??
          new _$ContentFile._(
              type: type,
              encoding: encoding,
              size: size,
              name: name,
              path: path,
              content: content,
              sha: sha,
              url: url,
              gitUrl: gitUrl,
              htmlUrl: htmlUrl,
              downloadUrl: downloadUrl,
              links: _links?.build(),
              target: target,
              submoduleGitUrl: submoduleGitUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContentFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

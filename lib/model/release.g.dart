// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'release.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Release> _$releaseSerializer = new _$ReleaseSerializer();

class _$ReleaseSerializer implements StructuredSerializer<Release> {
  @override
  final Iterable<Type> types = const [Release, _$Release];
  @override
  final String wireName = 'Release';

  @override
  Iterable<Object> serialize(Serializers serializers, Release object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.assetsUrl != null) {
      result
        ..add('assets_url')
        ..add(serializers.serialize(object.assetsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.uploadUrl != null) {
      result
        ..add('upload_url')
        ..add(serializers.serialize(object.uploadUrl,
            specifiedType: const FullType(String)));
    }
    if (object.tarballUrl != null) {
      result
        ..add('tarball_url')
        ..add(serializers.serialize(object.tarballUrl,
            specifiedType: const FullType(String)));
    }
    if (object.zipballUrl != null) {
      result
        ..add('zipball_url')
        ..add(serializers.serialize(object.zipballUrl,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.tagName != null) {
      result
        ..add('tag_name')
        ..add(serializers.serialize(object.tagName,
            specifiedType: const FullType(String)));
    }
    if (object.targetCommitish != null) {
      result
        ..add('target_commitish')
        ..add(serializers.serialize(object.targetCommitish,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.draft != null) {
      result
        ..add('draft')
        ..add(serializers.serialize(object.draft,
            specifiedType: const FullType(bool)));
    }
    if (object.prerelease != null) {
      result
        ..add('prerelease')
        ..add(serializers.serialize(object.prerelease,
            specifiedType: const FullType(bool)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.publishedAt != null) {
      result
        ..add('published_at')
        ..add(serializers.serialize(object.publishedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.assets != null) {
      result
        ..add('assets')
        ..add(serializers.serialize(object.assets,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ReleaseAsset)])));
    }
    if (object.bodyHtml != null) {
      result
        ..add('body_html')
        ..add(serializers.serialize(object.bodyHtml,
            specifiedType: const FullType(String)));
    }
    if (object.bodyText != null) {
      result
        ..add('body_text')
        ..add(serializers.serialize(object.bodyText,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Release deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReleaseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assets_url':
          result.assetsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'upload_url':
          result.uploadUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tarball_url':
          result.tarballUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zipball_url':
          result.zipballUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tag_name':
          result.tagName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'target_commitish':
          result.targetCommitish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'draft':
          result.draft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'prerelease':
          result.prerelease = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'published_at':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'assets':
          result.assets.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ReleaseAsset)]))
              as BuiltList<Object>);
          break;
        case 'body_html':
          result.bodyHtml = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_text':
          result.bodyText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Release extends Release {
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String assetsUrl;
  @override
  final String uploadUrl;
  @override
  final String tarballUrl;
  @override
  final String zipballUrl;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String tagName;
  @override
  final String targetCommitish;
  @override
  final String name;
  @override
  final String body;
  @override
  final bool draft;
  @override
  final bool prerelease;
  @override
  final DateTime createdAt;
  @override
  final DateTime publishedAt;
  @override
  final SimpleUser author;
  @override
  final BuiltList<ReleaseAsset> assets;
  @override
  final String bodyHtml;
  @override
  final String bodyText;

  factory _$Release([void Function(ReleaseBuilder) updates]) =>
      (new ReleaseBuilder()..update(updates)).build();

  _$Release._(
      {this.url,
      this.htmlUrl,
      this.assetsUrl,
      this.uploadUrl,
      this.tarballUrl,
      this.zipballUrl,
      this.id,
      this.nodeId,
      this.tagName,
      this.targetCommitish,
      this.name,
      this.body,
      this.draft,
      this.prerelease,
      this.createdAt,
      this.publishedAt,
      this.author,
      this.assets,
      this.bodyHtml,
      this.bodyText})
      : super._();

  @override
  Release rebuild(void Function(ReleaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseBuilder toBuilder() => new ReleaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Release &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        assetsUrl == other.assetsUrl &&
        uploadUrl == other.uploadUrl &&
        tarballUrl == other.tarballUrl &&
        zipballUrl == other.zipballUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        tagName == other.tagName &&
        targetCommitish == other.targetCommitish &&
        name == other.name &&
        body == other.body &&
        draft == other.draft &&
        prerelease == other.prerelease &&
        createdAt == other.createdAt &&
        publishedAt == other.publishedAt &&
        author == other.author &&
        assets == other.assets &&
        bodyHtml == other.bodyHtml &&
        bodyText == other.bodyText;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc(0, url.hashCode),
                                                                                htmlUrl.hashCode),
                                                                            assetsUrl.hashCode),
                                                                        uploadUrl.hashCode),
                                                                    tarballUrl.hashCode),
                                                                zipballUrl.hashCode),
                                                            id.hashCode),
                                                        nodeId.hashCode),
                                                    tagName.hashCode),
                                                targetCommitish.hashCode),
                                            name.hashCode),
                                        body.hashCode),
                                    draft.hashCode),
                                prerelease.hashCode),
                            createdAt.hashCode),
                        publishedAt.hashCode),
                    author.hashCode),
                assets.hashCode),
            bodyHtml.hashCode),
        bodyText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Release')
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('assetsUrl', assetsUrl)
          ..add('uploadUrl', uploadUrl)
          ..add('tarballUrl', tarballUrl)
          ..add('zipballUrl', zipballUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('tagName', tagName)
          ..add('targetCommitish', targetCommitish)
          ..add('name', name)
          ..add('body', body)
          ..add('draft', draft)
          ..add('prerelease', prerelease)
          ..add('createdAt', createdAt)
          ..add('publishedAt', publishedAt)
          ..add('author', author)
          ..add('assets', assets)
          ..add('bodyHtml', bodyHtml)
          ..add('bodyText', bodyText))
        .toString();
  }
}

class ReleaseBuilder implements Builder<Release, ReleaseBuilder> {
  _$Release _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _assetsUrl;
  String get assetsUrl => _$this._assetsUrl;
  set assetsUrl(String assetsUrl) => _$this._assetsUrl = assetsUrl;

  String _uploadUrl;
  String get uploadUrl => _$this._uploadUrl;
  set uploadUrl(String uploadUrl) => _$this._uploadUrl = uploadUrl;

  String _tarballUrl;
  String get tarballUrl => _$this._tarballUrl;
  set tarballUrl(String tarballUrl) => _$this._tarballUrl = tarballUrl;

  String _zipballUrl;
  String get zipballUrl => _$this._zipballUrl;
  set zipballUrl(String zipballUrl) => _$this._zipballUrl = zipballUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _tagName;
  String get tagName => _$this._tagName;
  set tagName(String tagName) => _$this._tagName = tagName;

  String _targetCommitish;
  String get targetCommitish => _$this._targetCommitish;
  set targetCommitish(String targetCommitish) =>
      _$this._targetCommitish = targetCommitish;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  bool _draft;
  bool get draft => _$this._draft;
  set draft(bool draft) => _$this._draft = draft;

  bool _prerelease;
  bool get prerelease => _$this._prerelease;
  set prerelease(bool prerelease) => _$this._prerelease = prerelease;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _publishedAt;
  DateTime get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime publishedAt) => _$this._publishedAt = publishedAt;

  SimpleUserBuilder _author;
  SimpleUserBuilder get author => _$this._author ??= new SimpleUserBuilder();
  set author(SimpleUserBuilder author) => _$this._author = author;

  ListBuilder<ReleaseAsset> _assets;
  ListBuilder<ReleaseAsset> get assets =>
      _$this._assets ??= new ListBuilder<ReleaseAsset>();
  set assets(ListBuilder<ReleaseAsset> assets) => _$this._assets = assets;

  String _bodyHtml;
  String get bodyHtml => _$this._bodyHtml;
  set bodyHtml(String bodyHtml) => _$this._bodyHtml = bodyHtml;

  String _bodyText;
  String get bodyText => _$this._bodyText;
  set bodyText(String bodyText) => _$this._bodyText = bodyText;

  ReleaseBuilder() {
    Release._initializeBuilder(this);
  }

  ReleaseBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _assetsUrl = _$v.assetsUrl;
      _uploadUrl = _$v.uploadUrl;
      _tarballUrl = _$v.tarballUrl;
      _zipballUrl = _$v.zipballUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _tagName = _$v.tagName;
      _targetCommitish = _$v.targetCommitish;
      _name = _$v.name;
      _body = _$v.body;
      _draft = _$v.draft;
      _prerelease = _$v.prerelease;
      _createdAt = _$v.createdAt;
      _publishedAt = _$v.publishedAt;
      _author = _$v.author?.toBuilder();
      _assets = _$v.assets?.toBuilder();
      _bodyHtml = _$v.bodyHtml;
      _bodyText = _$v.bodyText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Release other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Release;
  }

  @override
  void update(void Function(ReleaseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Release build() {
    _$Release _$result;
    try {
      _$result = _$v ??
          new _$Release._(
              url: url,
              htmlUrl: htmlUrl,
              assetsUrl: assetsUrl,
              uploadUrl: uploadUrl,
              tarballUrl: tarballUrl,
              zipballUrl: zipballUrl,
              id: id,
              nodeId: nodeId,
              tagName: tagName,
              targetCommitish: targetCommitish,
              name: name,
              body: body,
              draft: draft,
              prerelease: prerelease,
              createdAt: createdAt,
              publishedAt: publishedAt,
              author: _author?.build(),
              assets: _assets?.build(),
              bodyHtml: bodyHtml,
              bodyText: bodyText);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
        _$failedField = 'assets';
        _assets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Release', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

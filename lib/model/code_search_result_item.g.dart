// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_search_result_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeSearchResultItem> _$codeSearchResultItemSerializer =
    new _$CodeSearchResultItemSerializer();

class _$CodeSearchResultItemSerializer
    implements StructuredSerializer<CodeSearchResultItem> {
  @override
  final Iterable<Type> types = const [
    CodeSearchResultItem,
    _$CodeSearchResultItem
  ];
  @override
  final String wireName = 'CodeSearchResultItem';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeSearchResultItem object,
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
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(MinimalRepository)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.fileSize != null) {
      result
        ..add('file_size')
        ..add(serializers.serialize(object.fileSize,
            specifiedType: const FullType(int)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.lastModifiedAt != null) {
      result
        ..add('last_modified_at')
        ..add(serializers.serialize(object.lastModifiedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.lineNumbers != null) {
      result
        ..add('line_numbers')
        ..add(serializers.serialize(object.lineNumbers,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.textMatches != null) {
      result
        ..add('text_matches')
        ..add(serializers.serialize(object.textMatches,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JsonObject)])));
    }
    return result;
  }

  @override
  CodeSearchResultItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeSearchResultItemBuilder();

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
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MinimalRepository))
              as MinimalRepository);
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'file_size':
          result.fileSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_modified_at':
          result.lastModifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'line_numbers':
          result.lineNumbers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'text_matches':
          result.textMatches.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JsonObject)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CodeSearchResultItem extends CodeSearchResultItem {
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
  final MinimalRepository repository;
  @override
  final int score;
  @override
  final int fileSize;
  @override
  final String language;
  @override
  final DateTime lastModifiedAt;
  @override
  final BuiltList<String> lineNumbers;
  @override
  final BuiltList<JsonObject> textMatches;

  factory _$CodeSearchResultItem(
          [void Function(CodeSearchResultItemBuilder) updates]) =>
      (new CodeSearchResultItemBuilder()..update(updates)).build();

  _$CodeSearchResultItem._(
      {this.name,
      this.path,
      this.sha,
      this.url,
      this.gitUrl,
      this.htmlUrl,
      this.repository,
      this.score,
      this.fileSize,
      this.language,
      this.lastModifiedAt,
      this.lineNumbers,
      this.textMatches})
      : super._();

  @override
  CodeSearchResultItem rebuild(
          void Function(CodeSearchResultItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeSearchResultItemBuilder toBuilder() =>
      new CodeSearchResultItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeSearchResultItem &&
        name == other.name &&
        path == other.path &&
        sha == other.sha &&
        url == other.url &&
        gitUrl == other.gitUrl &&
        htmlUrl == other.htmlUrl &&
        repository == other.repository &&
        score == other.score &&
        fileSize == other.fileSize &&
        language == other.language &&
        lastModifiedAt == other.lastModifiedAt &&
        lineNumbers == other.lineNumbers &&
        textMatches == other.textMatches;
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
                                            url.hashCode),
                                        gitUrl.hashCode),
                                    htmlUrl.hashCode),
                                repository.hashCode),
                            score.hashCode),
                        fileSize.hashCode),
                    language.hashCode),
                lastModifiedAt.hashCode),
            lineNumbers.hashCode),
        textMatches.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeSearchResultItem')
          ..add('name', name)
          ..add('path', path)
          ..add('sha', sha)
          ..add('url', url)
          ..add('gitUrl', gitUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('repository', repository)
          ..add('score', score)
          ..add('fileSize', fileSize)
          ..add('language', language)
          ..add('lastModifiedAt', lastModifiedAt)
          ..add('lineNumbers', lineNumbers)
          ..add('textMatches', textMatches))
        .toString();
  }
}

class CodeSearchResultItemBuilder
    implements Builder<CodeSearchResultItem, CodeSearchResultItemBuilder> {
  _$CodeSearchResultItem _$v;

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

  MinimalRepositoryBuilder _repository;
  MinimalRepositoryBuilder get repository =>
      _$this._repository ??= new MinimalRepositoryBuilder();
  set repository(MinimalRepositoryBuilder repository) =>
      _$this._repository = repository;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _fileSize;
  int get fileSize => _$this._fileSize;
  set fileSize(int fileSize) => _$this._fileSize = fileSize;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  DateTime _lastModifiedAt;
  DateTime get lastModifiedAt => _$this._lastModifiedAt;
  set lastModifiedAt(DateTime lastModifiedAt) =>
      _$this._lastModifiedAt = lastModifiedAt;

  ListBuilder<String> _lineNumbers;
  ListBuilder<String> get lineNumbers =>
      _$this._lineNumbers ??= new ListBuilder<String>();
  set lineNumbers(ListBuilder<String> lineNumbers) =>
      _$this._lineNumbers = lineNumbers;

  ListBuilder<JsonObject> _textMatches;
  ListBuilder<JsonObject> get textMatches =>
      _$this._textMatches ??= new ListBuilder<JsonObject>();
  set textMatches(ListBuilder<JsonObject> textMatches) =>
      _$this._textMatches = textMatches;

  CodeSearchResultItemBuilder() {
    CodeSearchResultItem._initializeBuilder(this);
  }

  CodeSearchResultItemBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _path = _$v.path;
      _sha = _$v.sha;
      _url = _$v.url;
      _gitUrl = _$v.gitUrl;
      _htmlUrl = _$v.htmlUrl;
      _repository = _$v.repository?.toBuilder();
      _score = _$v.score;
      _fileSize = _$v.fileSize;
      _language = _$v.language;
      _lastModifiedAt = _$v.lastModifiedAt;
      _lineNumbers = _$v.lineNumbers?.toBuilder();
      _textMatches = _$v.textMatches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeSearchResultItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeSearchResultItem;
  }

  @override
  void update(void Function(CodeSearchResultItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeSearchResultItem build() {
    _$CodeSearchResultItem _$result;
    try {
      _$result = _$v ??
          new _$CodeSearchResultItem._(
              name: name,
              path: path,
              sha: sha,
              url: url,
              gitUrl: gitUrl,
              htmlUrl: htmlUrl,
              repository: _repository?.build(),
              score: score,
              fileSize: fileSize,
              language: language,
              lastModifiedAt: lastModifiedAt,
              lineNumbers: _lineNumbers?.build(),
              textMatches: _textMatches?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repository';
        _repository?.build();

        _$failedField = 'lineNumbers';
        _lineNumbers?.build();
        _$failedField = 'textMatches';
        _textMatches?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CodeSearchResultItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

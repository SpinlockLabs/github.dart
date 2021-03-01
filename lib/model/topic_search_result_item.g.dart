// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'topic_search_result_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopicSearchResultItem> _$topicSearchResultItemSerializer =
    new _$TopicSearchResultItemSerializer();

class _$TopicSearchResultItemSerializer
    implements StructuredSerializer<TopicSearchResultItem> {
  @override
  final Iterable<Type> types = const [
    TopicSearchResultItem,
    _$TopicSearchResultItem
  ];
  @override
  final String wireName = 'TopicSearchResultItem';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TopicSearchResultItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.displayName != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }
    if (object.shortDescription != null) {
      result
        ..add('short_description')
        ..add(serializers.serialize(object.shortDescription,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.createdBy != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(object.createdBy,
            specifiedType: const FullType(String)));
    }
    if (object.released != null) {
      result
        ..add('released')
        ..add(serializers.serialize(object.released,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.featured != null) {
      result
        ..add('featured')
        ..add(serializers.serialize(object.featured,
            specifiedType: const FullType(bool)));
    }
    if (object.curated != null) {
      result
        ..add('curated')
        ..add(serializers.serialize(object.curated,
            specifiedType: const FullType(bool)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.repositoryCount != null) {
      result
        ..add('repository_count')
        ..add(serializers.serialize(object.repositoryCount,
            specifiedType: const FullType(int)));
    }
    if (object.logoUrl != null) {
      result
        ..add('logo_url')
        ..add(serializers.serialize(object.logoUrl,
            specifiedType: const FullType(String)));
    }
    if (object.textMatches != null) {
      result
        ..add('text_matches')
        ..add(serializers.serialize(object.textMatches,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JsonObject)])));
    }
    if (object.related != null) {
      result
        ..add('related')
        ..add(serializers.serialize(object.related,
            specifiedType: const FullType(BuiltList,
                const [const FullType(TopicSearchResultItemRelated)])));
    }
    if (object.aliases != null) {
      result
        ..add('aliases')
        ..add(serializers.serialize(object.aliases,
            specifiedType: const FullType(BuiltList,
                const [const FullType(TopicSearchResultItemRelated)])));
    }
    return result;
  }

  @override
  TopicSearchResultItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicSearchResultItemBuilder();

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
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'short_description':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'released':
          result.released = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'featured':
          result.featured = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'curated':
          result.curated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'repository_count':
          result.repositoryCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'logo_url':
          result.logoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text_matches':
          result.textMatches.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JsonObject)]))
              as BuiltList<Object>);
          break;
        case 'related':
          result.related.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(TopicSearchResultItemRelated)
              ])) as BuiltList<Object>);
          break;
        case 'aliases':
          result.aliases.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(TopicSearchResultItemRelated)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TopicSearchResultItem extends TopicSearchResultItem {
  @override
  final String name;
  @override
  final String displayName;
  @override
  final String shortDescription;
  @override
  final String description;
  @override
  final String createdBy;
  @override
  final String released;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool featured;
  @override
  final bool curated;
  @override
  final int score;
  @override
  final int repositoryCount;
  @override
  final String logoUrl;
  @override
  final BuiltList<JsonObject> textMatches;
  @override
  final BuiltList<TopicSearchResultItemRelated> related;
  @override
  final BuiltList<TopicSearchResultItemRelated> aliases;

  factory _$TopicSearchResultItem(
          [void Function(TopicSearchResultItemBuilder) updates]) =>
      (new TopicSearchResultItemBuilder()..update(updates)).build();

  _$TopicSearchResultItem._(
      {this.name,
      this.displayName,
      this.shortDescription,
      this.description,
      this.createdBy,
      this.released,
      this.createdAt,
      this.updatedAt,
      this.featured,
      this.curated,
      this.score,
      this.repositoryCount,
      this.logoUrl,
      this.textMatches,
      this.related,
      this.aliases})
      : super._();

  @override
  TopicSearchResultItem rebuild(
          void Function(TopicSearchResultItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicSearchResultItemBuilder toBuilder() =>
      new TopicSearchResultItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopicSearchResultItem &&
        name == other.name &&
        displayName == other.displayName &&
        shortDescription == other.shortDescription &&
        description == other.description &&
        createdBy == other.createdBy &&
        released == other.released &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        featured == other.featured &&
        curated == other.curated &&
        score == other.score &&
        repositoryCount == other.repositoryCount &&
        logoUrl == other.logoUrl &&
        textMatches == other.textMatches &&
        related == other.related &&
        aliases == other.aliases;
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
                                                                    0,
                                                                    name
                                                                        .hashCode),
                                                                displayName
                                                                    .hashCode),
                                                            shortDescription
                                                                .hashCode),
                                                        description.hashCode),
                                                    createdBy.hashCode),
                                                released.hashCode),
                                            createdAt.hashCode),
                                        updatedAt.hashCode),
                                    featured.hashCode),
                                curated.hashCode),
                            score.hashCode),
                        repositoryCount.hashCode),
                    logoUrl.hashCode),
                textMatches.hashCode),
            related.hashCode),
        aliases.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TopicSearchResultItem')
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('shortDescription', shortDescription)
          ..add('description', description)
          ..add('createdBy', createdBy)
          ..add('released', released)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('featured', featured)
          ..add('curated', curated)
          ..add('score', score)
          ..add('repositoryCount', repositoryCount)
          ..add('logoUrl', logoUrl)
          ..add('textMatches', textMatches)
          ..add('related', related)
          ..add('aliases', aliases))
        .toString();
  }
}

class TopicSearchResultItemBuilder
    implements Builder<TopicSearchResultItem, TopicSearchResultItemBuilder> {
  _$TopicSearchResultItem _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _shortDescription;
  String get shortDescription => _$this._shortDescription;
  set shortDescription(String shortDescription) =>
      _$this._shortDescription = shortDescription;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _createdBy;
  String get createdBy => _$this._createdBy;
  set createdBy(String createdBy) => _$this._createdBy = createdBy;

  String _released;
  String get released => _$this._released;
  set released(String released) => _$this._released = released;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  bool _featured;
  bool get featured => _$this._featured;
  set featured(bool featured) => _$this._featured = featured;

  bool _curated;
  bool get curated => _$this._curated;
  set curated(bool curated) => _$this._curated = curated;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _repositoryCount;
  int get repositoryCount => _$this._repositoryCount;
  set repositoryCount(int repositoryCount) =>
      _$this._repositoryCount = repositoryCount;

  String _logoUrl;
  String get logoUrl => _$this._logoUrl;
  set logoUrl(String logoUrl) => _$this._logoUrl = logoUrl;

  ListBuilder<JsonObject> _textMatches;
  ListBuilder<JsonObject> get textMatches =>
      _$this._textMatches ??= new ListBuilder<JsonObject>();
  set textMatches(ListBuilder<JsonObject> textMatches) =>
      _$this._textMatches = textMatches;

  ListBuilder<TopicSearchResultItemRelated> _related;
  ListBuilder<TopicSearchResultItemRelated> get related =>
      _$this._related ??= new ListBuilder<TopicSearchResultItemRelated>();
  set related(ListBuilder<TopicSearchResultItemRelated> related) =>
      _$this._related = related;

  ListBuilder<TopicSearchResultItemRelated> _aliases;
  ListBuilder<TopicSearchResultItemRelated> get aliases =>
      _$this._aliases ??= new ListBuilder<TopicSearchResultItemRelated>();
  set aliases(ListBuilder<TopicSearchResultItemRelated> aliases) =>
      _$this._aliases = aliases;

  TopicSearchResultItemBuilder() {
    TopicSearchResultItem._initializeBuilder(this);
  }

  TopicSearchResultItemBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _displayName = _$v.displayName;
      _shortDescription = _$v.shortDescription;
      _description = _$v.description;
      _createdBy = _$v.createdBy;
      _released = _$v.released;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _featured = _$v.featured;
      _curated = _$v.curated;
      _score = _$v.score;
      _repositoryCount = _$v.repositoryCount;
      _logoUrl = _$v.logoUrl;
      _textMatches = _$v.textMatches?.toBuilder();
      _related = _$v.related?.toBuilder();
      _aliases = _$v.aliases?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopicSearchResultItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TopicSearchResultItem;
  }

  @override
  void update(void Function(TopicSearchResultItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopicSearchResultItem build() {
    _$TopicSearchResultItem _$result;
    try {
      _$result = _$v ??
          new _$TopicSearchResultItem._(
              name: name,
              displayName: displayName,
              shortDescription: shortDescription,
              description: description,
              createdBy: createdBy,
              released: released,
              createdAt: createdAt,
              updatedAt: updatedAt,
              featured: featured,
              curated: curated,
              score: score,
              repositoryCount: repositoryCount,
              logoUrl: logoUrl,
              textMatches: _textMatches?.build(),
              related: _related?.build(),
              aliases: _aliases?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'textMatches';
        _textMatches?.build();
        _$failedField = 'related';
        _related?.build();
        _$failedField = 'aliases';
        _aliases?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TopicSearchResultItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

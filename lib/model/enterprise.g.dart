// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'enterprise.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Enterprise> _$enterpriseSerializer = new _$EnterpriseSerializer();

class _$EnterpriseSerializer implements StructuredSerializer<Enterprise> {
  @override
  final Iterable<Type> types = const [Enterprise, _$Enterprise];
  @override
  final String wireName = 'Enterprise';

  @override
  Iterable<Object> serialize(Serializers serializers, Enterprise object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.websiteUrl != null) {
      result
        ..add('website_url')
        ..add(serializers.serialize(object.websiteUrl,
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
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
    if (object.avatarUrl != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(object.avatarUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Enterprise deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnterpriseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'website_url':
          result.websiteUrl = serializers.deserialize(value,
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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
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
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Enterprise extends Enterprise {
  @override
  final String description;
  @override
  final String htmlUrl;
  @override
  final String websiteUrl;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final String slug;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String avatarUrl;

  factory _$Enterprise([void Function(EnterpriseBuilder) updates]) =>
      (new EnterpriseBuilder()..update(updates)).build();

  _$Enterprise._(
      {this.description,
      this.htmlUrl,
      this.websiteUrl,
      this.id,
      this.nodeId,
      this.name,
      this.slug,
      this.createdAt,
      this.updatedAt,
      this.avatarUrl})
      : super._();

  @override
  Enterprise rebuild(void Function(EnterpriseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnterpriseBuilder toBuilder() => new EnterpriseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Enterprise &&
        description == other.description &&
        htmlUrl == other.htmlUrl &&
        websiteUrl == other.websiteUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        slug == other.slug &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        avatarUrl == other.avatarUrl;
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
                                    $jc($jc(0, description.hashCode),
                                        htmlUrl.hashCode),
                                    websiteUrl.hashCode),
                                id.hashCode),
                            nodeId.hashCode),
                        name.hashCode),
                    slug.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        avatarUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Enterprise')
          ..add('description', description)
          ..add('htmlUrl', htmlUrl)
          ..add('websiteUrl', websiteUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('slug', slug)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('avatarUrl', avatarUrl))
        .toString();
  }
}

class EnterpriseBuilder implements Builder<Enterprise, EnterpriseBuilder> {
  _$Enterprise _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _websiteUrl;
  String get websiteUrl => _$this._websiteUrl;
  set websiteUrl(String websiteUrl) => _$this._websiteUrl = websiteUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  EnterpriseBuilder() {
    Enterprise._initializeBuilder(this);
  }

  EnterpriseBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _htmlUrl = _$v.htmlUrl;
      _websiteUrl = _$v.websiteUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _slug = _$v.slug;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _avatarUrl = _$v.avatarUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Enterprise other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Enterprise;
  }

  @override
  void update(void Function(EnterpriseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Enterprise build() {
    final _$result = _$v ??
        new _$Enterprise._(
            description: description,
            htmlUrl: htmlUrl,
            websiteUrl: websiteUrl,
            id: id,
            nodeId: nodeId,
            name: name,
            slug: slug,
            createdAt: createdAt,
            updatedAt: updatedAt,
            avatarUrl: avatarUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

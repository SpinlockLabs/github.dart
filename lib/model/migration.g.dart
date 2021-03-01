// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'migration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Migration> _$migrationSerializer = new _$MigrationSerializer();

class _$MigrationSerializer implements StructuredSerializer<Migration> {
  @override
  final Iterable<Type> types = const [Migration, _$Migration];
  @override
  final String wireName = 'Migration';

  @override
  Iterable<Object> serialize(Serializers serializers, Migration object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.guid != null) {
      result
        ..add('guid')
        ..add(serializers.serialize(object.guid,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.lockRepositories != null) {
      result
        ..add('lock_repositories')
        ..add(serializers.serialize(object.lockRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.excludeAttachments != null) {
      result
        ..add('exclude_attachments')
        ..add(serializers.serialize(object.excludeAttachments,
            specifiedType: const FullType(bool)));
    }
    if (object.repositories != null) {
      result
        ..add('repositories')
        ..add(serializers.serialize(object.repositories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Repository)])));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
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
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.archiveUrl != null) {
      result
        ..add('archive_url')
        ..add(serializers.serialize(object.archiveUrl,
            specifiedType: const FullType(String)));
    }
    if (object.exclude != null) {
      result
        ..add('exclude')
        ..add(serializers.serialize(object.exclude,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JsonObject)])));
    }
    return result;
  }

  @override
  Migration deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MigrationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'guid':
          result.guid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lock_repositories':
          result.lockRepositories = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'exclude_attachments':
          result.excludeAttachments = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Repository)]))
              as BuiltList<Object>);
          break;
        case 'url':
          result.url = serializers.deserialize(value,
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
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'archive_url':
          result.archiveUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'exclude':
          result.exclude.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JsonObject)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Migration extends Migration {
  @override
  final int id;
  @override
  final SimpleUser owner;
  @override
  final String guid;
  @override
  final String state;
  @override
  final bool lockRepositories;
  @override
  final bool excludeAttachments;
  @override
  final BuiltList<Repository> repositories;
  @override
  final String url;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String nodeId;
  @override
  final String archiveUrl;
  @override
  final BuiltList<JsonObject> exclude;

  factory _$Migration([void Function(MigrationBuilder) updates]) =>
      (new MigrationBuilder()..update(updates)).build();

  _$Migration._(
      {this.id,
      this.owner,
      this.guid,
      this.state,
      this.lockRepositories,
      this.excludeAttachments,
      this.repositories,
      this.url,
      this.createdAt,
      this.updatedAt,
      this.nodeId,
      this.archiveUrl,
      this.exclude})
      : super._();

  @override
  Migration rebuild(void Function(MigrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MigrationBuilder toBuilder() => new MigrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Migration &&
        id == other.id &&
        owner == other.owner &&
        guid == other.guid &&
        state == other.state &&
        lockRepositories == other.lockRepositories &&
        excludeAttachments == other.excludeAttachments &&
        repositories == other.repositories &&
        url == other.url &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        nodeId == other.nodeId &&
        archiveUrl == other.archiveUrl &&
        exclude == other.exclude;
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
                                                $jc($jc(0, id.hashCode),
                                                    owner.hashCode),
                                                guid.hashCode),
                                            state.hashCode),
                                        lockRepositories.hashCode),
                                    excludeAttachments.hashCode),
                                repositories.hashCode),
                            url.hashCode),
                        createdAt.hashCode),
                    updatedAt.hashCode),
                nodeId.hashCode),
            archiveUrl.hashCode),
        exclude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Migration')
          ..add('id', id)
          ..add('owner', owner)
          ..add('guid', guid)
          ..add('state', state)
          ..add('lockRepositories', lockRepositories)
          ..add('excludeAttachments', excludeAttachments)
          ..add('repositories', repositories)
          ..add('url', url)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('nodeId', nodeId)
          ..add('archiveUrl', archiveUrl)
          ..add('exclude', exclude))
        .toString();
  }
}

class MigrationBuilder implements Builder<Migration, MigrationBuilder> {
  _$Migration _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  SimpleUserBuilder _owner;
  SimpleUserBuilder get owner => _$this._owner ??= new SimpleUserBuilder();
  set owner(SimpleUserBuilder owner) => _$this._owner = owner;

  String _guid;
  String get guid => _$this._guid;
  set guid(String guid) => _$this._guid = guid;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  bool _lockRepositories;
  bool get lockRepositories => _$this._lockRepositories;
  set lockRepositories(bool lockRepositories) =>
      _$this._lockRepositories = lockRepositories;

  bool _excludeAttachments;
  bool get excludeAttachments => _$this._excludeAttachments;
  set excludeAttachments(bool excludeAttachments) =>
      _$this._excludeAttachments = excludeAttachments;

  ListBuilder<Repository> _repositories;
  ListBuilder<Repository> get repositories =>
      _$this._repositories ??= new ListBuilder<Repository>();
  set repositories(ListBuilder<Repository> repositories) =>
      _$this._repositories = repositories;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _archiveUrl;
  String get archiveUrl => _$this._archiveUrl;
  set archiveUrl(String archiveUrl) => _$this._archiveUrl = archiveUrl;

  ListBuilder<JsonObject> _exclude;
  ListBuilder<JsonObject> get exclude =>
      _$this._exclude ??= new ListBuilder<JsonObject>();
  set exclude(ListBuilder<JsonObject> exclude) => _$this._exclude = exclude;

  MigrationBuilder() {
    Migration._initializeBuilder(this);
  }

  MigrationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _owner = _$v.owner?.toBuilder();
      _guid = _$v.guid;
      _state = _$v.state;
      _lockRepositories = _$v.lockRepositories;
      _excludeAttachments = _$v.excludeAttachments;
      _repositories = _$v.repositories?.toBuilder();
      _url = _$v.url;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _nodeId = _$v.nodeId;
      _archiveUrl = _$v.archiveUrl;
      _exclude = _$v.exclude?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Migration other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Migration;
  }

  @override
  void update(void Function(MigrationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Migration build() {
    _$Migration _$result;
    try {
      _$result = _$v ??
          new _$Migration._(
              id: id,
              owner: _owner?.build(),
              guid: guid,
              state: state,
              lockRepositories: lockRepositories,
              excludeAttachments: excludeAttachments,
              repositories: _repositories?.build(),
              url: url,
              createdAt: createdAt,
              updatedAt: updatedAt,
              nodeId: nodeId,
              archiveUrl: archiveUrl,
              exclude: _exclude?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'repositories';
        _repositories?.build();

        _$failedField = 'exclude';
        _exclude?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Migration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

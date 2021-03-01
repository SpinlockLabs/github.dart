// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'artifact.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Artifact> _$artifactSerializer = new _$ArtifactSerializer();

class _$ArtifactSerializer implements StructuredSerializer<Artifact> {
  @override
  final Iterable<Type> types = const [Artifact, _$Artifact];
  @override
  final String wireName = 'Artifact';

  @override
  Iterable<Object> serialize(Serializers serializers, Artifact object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.sizeInBytes != null) {
      result
        ..add('size_in_bytes')
        ..add(serializers.serialize(object.sizeInBytes,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.archiveDownloadUrl != null) {
      result
        ..add('archive_download_url')
        ..add(serializers.serialize(object.archiveDownloadUrl,
            specifiedType: const FullType(String)));
    }
    if (object.expired != null) {
      result
        ..add('expired')
        ..add(serializers.serialize(object.expired,
            specifiedType: const FullType(bool)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.expiresAt != null) {
      result
        ..add('expires_at')
        ..add(serializers.serialize(object.expiresAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  Artifact deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArtifactBuilder();

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
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size_in_bytes':
          result.sizeInBytes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'archive_download_url':
          result.archiveDownloadUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expired':
          result.expired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'expires_at':
          result.expiresAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Artifact extends Artifact {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final int sizeInBytes;
  @override
  final String url;
  @override
  final String archiveDownloadUrl;
  @override
  final bool expired;
  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final DateTime updatedAt;

  factory _$Artifact([void Function(ArtifactBuilder) updates]) =>
      (new ArtifactBuilder()..update(updates)).build();

  _$Artifact._(
      {this.id,
      this.nodeId,
      this.name,
      this.sizeInBytes,
      this.url,
      this.archiveDownloadUrl,
      this.expired,
      this.createdAt,
      this.expiresAt,
      this.updatedAt})
      : super._();

  @override
  Artifact rebuild(void Function(ArtifactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArtifactBuilder toBuilder() => new ArtifactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Artifact &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        sizeInBytes == other.sizeInBytes &&
        url == other.url &&
        archiveDownloadUrl == other.archiveDownloadUrl &&
        expired == other.expired &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        updatedAt == other.updatedAt;
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
                                $jc($jc($jc(0, id.hashCode), nodeId.hashCode),
                                    name.hashCode),
                                sizeInBytes.hashCode),
                            url.hashCode),
                        archiveDownloadUrl.hashCode),
                    expired.hashCode),
                createdAt.hashCode),
            expiresAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Artifact')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('sizeInBytes', sizeInBytes)
          ..add('url', url)
          ..add('archiveDownloadUrl', archiveDownloadUrl)
          ..add('expired', expired)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ArtifactBuilder implements Builder<Artifact, ArtifactBuilder> {
  _$Artifact _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _sizeInBytes;
  int get sizeInBytes => _$this._sizeInBytes;
  set sizeInBytes(int sizeInBytes) => _$this._sizeInBytes = sizeInBytes;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _archiveDownloadUrl;
  String get archiveDownloadUrl => _$this._archiveDownloadUrl;
  set archiveDownloadUrl(String archiveDownloadUrl) =>
      _$this._archiveDownloadUrl = archiveDownloadUrl;

  bool _expired;
  bool get expired => _$this._expired;
  set expired(bool expired) => _$this._expired = expired;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _expiresAt;
  DateTime get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime expiresAt) => _$this._expiresAt = expiresAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  ArtifactBuilder() {
    Artifact._initializeBuilder(this);
  }

  ArtifactBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _sizeInBytes = _$v.sizeInBytes;
      _url = _$v.url;
      _archiveDownloadUrl = _$v.archiveDownloadUrl;
      _expired = _$v.expired;
      _createdAt = _$v.createdAt;
      _expiresAt = _$v.expiresAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Artifact other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Artifact;
  }

  @override
  void update(void Function(ArtifactBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Artifact build() {
    final _$result = _$v ??
        new _$Artifact._(
            id: id,
            nodeId: nodeId,
            name: name,
            sizeInBytes: sizeInBytes,
            url: url,
            archiveDownloadUrl: archiveDownloadUrl,
            expired: expired,
            createdAt: createdAt,
            expiresAt: expiresAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

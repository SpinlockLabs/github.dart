// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tag> _$tagSerializer = new _$TagSerializer();

class _$TagSerializer implements StructuredSerializer<Tag> {
  @override
  final Iterable<Type> types = const [Tag, _$Tag];
  @override
  final String wireName = 'Tag';

  @override
  Iterable<Object> serialize(Serializers serializers, Tag object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.commit != null) {
      result
        ..add('commit')
        ..add(serializers.serialize(object.commit,
            specifiedType: const FullType(ShortBranchCommit)));
    }
    if (object.zipballUrl != null) {
      result
        ..add('zipball_url')
        ..add(serializers.serialize(object.zipballUrl,
            specifiedType: const FullType(String)));
    }
    if (object.tarballUrl != null) {
      result
        ..add('tarball_url')
        ..add(serializers.serialize(object.tarballUrl,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Tag deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagBuilder();

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
        case 'commit':
          result.commit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ShortBranchCommit))
              as ShortBranchCommit);
          break;
        case 'zipball_url':
          result.zipballUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tarball_url':
          result.tarballUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Tag extends Tag {
  @override
  final String name;
  @override
  final ShortBranchCommit commit;
  @override
  final String zipballUrl;
  @override
  final String tarballUrl;
  @override
  final String nodeId;

  factory _$Tag([void Function(TagBuilder) updates]) =>
      (new TagBuilder()..update(updates)).build();

  _$Tag._(
      {this.name, this.commit, this.zipballUrl, this.tarballUrl, this.nodeId})
      : super._();

  @override
  Tag rebuild(void Function(TagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagBuilder toBuilder() => new TagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag &&
        name == other.name &&
        commit == other.commit &&
        zipballUrl == other.zipballUrl &&
        tarballUrl == other.tarballUrl &&
        nodeId == other.nodeId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), commit.hashCode),
                zipballUrl.hashCode),
            tarballUrl.hashCode),
        nodeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tag')
          ..add('name', name)
          ..add('commit', commit)
          ..add('zipballUrl', zipballUrl)
          ..add('tarballUrl', tarballUrl)
          ..add('nodeId', nodeId))
        .toString();
  }
}

class TagBuilder implements Builder<Tag, TagBuilder> {
  _$Tag _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ShortBranchCommitBuilder _commit;
  ShortBranchCommitBuilder get commit =>
      _$this._commit ??= new ShortBranchCommitBuilder();
  set commit(ShortBranchCommitBuilder commit) => _$this._commit = commit;

  String _zipballUrl;
  String get zipballUrl => _$this._zipballUrl;
  set zipballUrl(String zipballUrl) => _$this._zipballUrl = zipballUrl;

  String _tarballUrl;
  String get tarballUrl => _$this._tarballUrl;
  set tarballUrl(String tarballUrl) => _$this._tarballUrl = tarballUrl;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  TagBuilder() {
    Tag._initializeBuilder(this);
  }

  TagBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _commit = _$v.commit?.toBuilder();
      _zipballUrl = _$v.zipballUrl;
      _tarballUrl = _$v.tarballUrl;
      _nodeId = _$v.nodeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tag other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Tag;
  }

  @override
  void update(void Function(TagBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Tag build() {
    _$Tag _$result;
    try {
      _$result = _$v ??
          new _$Tag._(
              name: name,
              commit: _commit?.build(),
              zipballUrl: zipballUrl,
              tarballUrl: tarballUrl,
              nodeId: nodeId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'commit';
        _commit?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Tag', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

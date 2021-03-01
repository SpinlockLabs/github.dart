// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitTag> _$gitTagSerializer = new _$GitTagSerializer();

class _$GitTagSerializer implements StructuredSerializer<GitTag> {
  @override
  final Iterable<Type> types = const [GitTag, _$GitTag];
  @override
  final String wireName = 'GitTag';

  @override
  Iterable<Object> serialize(Serializers serializers, GitTag object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.tag != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(object.tag,
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
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.tagger != null) {
      result
        ..add('tagger')
        ..add(serializers.serialize(object.tagger,
            specifiedType: const FullType(GitTagTagger)));
    }
    if (object.object != null) {
      result
        ..add('object')
        ..add(serializers.serialize(object.object,
            specifiedType: const FullType(GitTagObject)));
    }
    if (object.verification != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(object.verification,
            specifiedType: const FullType(Verification)));
    }
    return result;
  }

  @override
  GitTag deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitTagBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tagger':
          result.tagger.replace(serializers.deserialize(value,
              specifiedType: const FullType(GitTagTagger)) as GitTagTagger);
          break;
        case 'object':
          result.object.replace(serializers.deserialize(value,
              specifiedType: const FullType(GitTagObject)) as GitTagObject);
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
              specifiedType: const FullType(Verification)) as Verification);
          break;
      }
    }

    return result.build();
  }
}

class _$GitTag extends GitTag {
  @override
  final String nodeId;
  @override
  final String tag;
  @override
  final String sha;
  @override
  final String url;
  @override
  final String message;
  @override
  final GitTagTagger tagger;
  @override
  final GitTagObject object;
  @override
  final Verification verification;

  factory _$GitTag([void Function(GitTagBuilder) updates]) =>
      (new GitTagBuilder()..update(updates)).build();

  _$GitTag._(
      {this.nodeId,
      this.tag,
      this.sha,
      this.url,
      this.message,
      this.tagger,
      this.object,
      this.verification})
      : super._();

  @override
  GitTag rebuild(void Function(GitTagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitTagBuilder toBuilder() => new GitTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitTag &&
        nodeId == other.nodeId &&
        tag == other.tag &&
        sha == other.sha &&
        url == other.url &&
        message == other.message &&
        tagger == other.tagger &&
        object == other.object &&
        verification == other.verification;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, nodeId.hashCode), tag.hashCode),
                            sha.hashCode),
                        url.hashCode),
                    message.hashCode),
                tagger.hashCode),
            object.hashCode),
        verification.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitTag')
          ..add('nodeId', nodeId)
          ..add('tag', tag)
          ..add('sha', sha)
          ..add('url', url)
          ..add('message', message)
          ..add('tagger', tagger)
          ..add('object', object)
          ..add('verification', verification))
        .toString();
  }
}

class GitTagBuilder implements Builder<GitTag, GitTagBuilder> {
  _$GitTag _$v;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  GitTagTaggerBuilder _tagger;
  GitTagTaggerBuilder get tagger =>
      _$this._tagger ??= new GitTagTaggerBuilder();
  set tagger(GitTagTaggerBuilder tagger) => _$this._tagger = tagger;

  GitTagObjectBuilder _object;
  GitTagObjectBuilder get object =>
      _$this._object ??= new GitTagObjectBuilder();
  set object(GitTagObjectBuilder object) => _$this._object = object;

  VerificationBuilder _verification;
  VerificationBuilder get verification =>
      _$this._verification ??= new VerificationBuilder();
  set verification(VerificationBuilder verification) =>
      _$this._verification = verification;

  GitTagBuilder() {
    GitTag._initializeBuilder(this);
  }

  GitTagBuilder get _$this {
    if (_$v != null) {
      _nodeId = _$v.nodeId;
      _tag = _$v.tag;
      _sha = _$v.sha;
      _url = _$v.url;
      _message = _$v.message;
      _tagger = _$v.tagger?.toBuilder();
      _object = _$v.object?.toBuilder();
      _verification = _$v.verification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitTag other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitTag;
  }

  @override
  void update(void Function(GitTagBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitTag build() {
    _$GitTag _$result;
    try {
      _$result = _$v ??
          new _$GitTag._(
              nodeId: nodeId,
              tag: tag,
              sha: sha,
              url: url,
              message: message,
              tagger: _tagger?.build(),
              object: _object?.build(),
              verification: _verification?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tagger';
        _tagger?.build();
        _$failedField = 'object';
        _object?.build();
        _$failedField = 'verification';
        _verification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GitTag', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

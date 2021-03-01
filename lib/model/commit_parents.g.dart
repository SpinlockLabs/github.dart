// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_parents.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitParents> _$commitParentsSerializer =
    new _$CommitParentsSerializer();

class _$CommitParentsSerializer implements StructuredSerializer<CommitParents> {
  @override
  final Iterable<Type> types = const [CommitParents, _$CommitParents];
  @override
  final String wireName = 'CommitParents';

  @override
  Iterable<Object> serialize(Serializers serializers, CommitParents object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CommitParents deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitParentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommitParents extends CommitParents {
  @override
  final String sha;
  @override
  final String url;
  @override
  final String htmlUrl;

  factory _$CommitParents([void Function(CommitParentsBuilder) updates]) =>
      (new CommitParentsBuilder()..update(updates)).build();

  _$CommitParents._({this.sha, this.url, this.htmlUrl}) : super._();

  @override
  CommitParents rebuild(void Function(CommitParentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitParentsBuilder toBuilder() => new CommitParentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitParents &&
        sha == other.sha &&
        url == other.url &&
        htmlUrl == other.htmlUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, sha.hashCode), url.hashCode), htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitParents')
          ..add('sha', sha)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class CommitParentsBuilder
    implements Builder<CommitParents, CommitParentsBuilder> {
  _$CommitParents _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  CommitParentsBuilder() {
    CommitParents._initializeBuilder(this);
  }

  CommitParentsBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitParents other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitParents;
  }

  @override
  void update(void Function(CommitParentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitParents build() {
    final _$result =
        _$v ?? new _$CommitParents._(sha: sha, url: url, htmlUrl: htmlUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

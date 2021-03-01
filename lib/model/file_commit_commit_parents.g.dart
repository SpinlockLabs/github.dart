// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'file_commit_commit_parents.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FileCommitCommitParents> _$fileCommitCommitParentsSerializer =
    new _$FileCommitCommitParentsSerializer();

class _$FileCommitCommitParentsSerializer
    implements StructuredSerializer<FileCommitCommitParents> {
  @override
  final Iterable<Type> types = const [
    FileCommitCommitParents,
    _$FileCommitCommitParents
  ];
  @override
  final String wireName = 'FileCommitCommitParents';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FileCommitCommitParents object,
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
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FileCommitCommitParents deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileCommitCommitParentsBuilder();

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
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FileCommitCommitParents extends FileCommitCommitParents {
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String sha;

  factory _$FileCommitCommitParents(
          [void Function(FileCommitCommitParentsBuilder) updates]) =>
      (new FileCommitCommitParentsBuilder()..update(updates)).build();

  _$FileCommitCommitParents._({this.url, this.htmlUrl, this.sha}) : super._();

  @override
  FileCommitCommitParents rebuild(
          void Function(FileCommitCommitParentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileCommitCommitParentsBuilder toBuilder() =>
      new FileCommitCommitParentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileCommitCommitParents &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        sha == other.sha;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, url.hashCode), htmlUrl.hashCode), sha.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileCommitCommitParents')
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('sha', sha))
        .toString();
  }
}

class FileCommitCommitParentsBuilder
    implements
        Builder<FileCommitCommitParents, FileCommitCommitParentsBuilder> {
  _$FileCommitCommitParents _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  FileCommitCommitParentsBuilder() {
    FileCommitCommitParents._initializeBuilder(this);
  }

  FileCommitCommitParentsBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _sha = _$v.sha;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileCommitCommitParents other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FileCommitCommitParents;
  }

  @override
  void update(void Function(FileCommitCommitParentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FileCommitCommitParents build() {
    final _$result = _$v ??
        new _$FileCommitCommitParents._(url: url, htmlUrl: htmlUrl, sha: sha);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

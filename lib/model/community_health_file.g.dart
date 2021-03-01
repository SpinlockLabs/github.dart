// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'community_health_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommunityHealthFile> _$communityHealthFileSerializer =
    new _$CommunityHealthFileSerializer();

class _$CommunityHealthFileSerializer
    implements StructuredSerializer<CommunityHealthFile> {
  @override
  final Iterable<Type> types = const [
    CommunityHealthFile,
    _$CommunityHealthFile
  ];
  @override
  final String wireName = 'CommunityHealthFile';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CommunityHealthFile object,
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
    return result;
  }

  @override
  CommunityHealthFile deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityHealthFileBuilder();

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
      }
    }

    return result.build();
  }
}

class _$CommunityHealthFile extends CommunityHealthFile {
  @override
  final String url;
  @override
  final String htmlUrl;

  factory _$CommunityHealthFile(
          [void Function(CommunityHealthFileBuilder) updates]) =>
      (new CommunityHealthFileBuilder()..update(updates)).build();

  _$CommunityHealthFile._({this.url, this.htmlUrl}) : super._();

  @override
  CommunityHealthFile rebuild(
          void Function(CommunityHealthFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityHealthFileBuilder toBuilder() =>
      new CommunityHealthFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityHealthFile &&
        url == other.url &&
        htmlUrl == other.htmlUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityHealthFile')
          ..add('url', url)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class CommunityHealthFileBuilder
    implements Builder<CommunityHealthFile, CommunityHealthFileBuilder> {
  _$CommunityHealthFile _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  CommunityHealthFileBuilder() {
    CommunityHealthFile._initializeBuilder(this);
  }

  CommunityHealthFileBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityHealthFile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommunityHealthFile;
  }

  @override
  void update(void Function(CommunityHealthFileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommunityHealthFile build() {
    final _$result =
        _$v ?? new _$CommunityHealthFile._(url: url, htmlUrl: htmlUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

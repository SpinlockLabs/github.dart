// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'blob.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Blob> _$blobSerializer = new _$BlobSerializer();

class _$BlobSerializer implements StructuredSerializer<Blob> {
  @override
  final Iterable<Type> types = const [Blob, _$Blob];
  @override
  final String wireName = 'Blob';

  @override
  Iterable<Object> serialize(Serializers serializers, Blob object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.encoding != null) {
      result
        ..add('encoding')
        ..add(serializers.serialize(object.encoding,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.highlightedContent != null) {
      result
        ..add('highlighted_content')
        ..add(serializers.serialize(object.highlightedContent,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Blob deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlobBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'encoding':
          result.encoding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'highlighted_content':
          result.highlightedContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Blob extends Blob {
  @override
  final String content;
  @override
  final String encoding;
  @override
  final String url;
  @override
  final String sha;
  @override
  final int size;
  @override
  final String nodeId;
  @override
  final String highlightedContent;

  factory _$Blob([void Function(BlobBuilder) updates]) =>
      (new BlobBuilder()..update(updates)).build();

  _$Blob._(
      {this.content,
      this.encoding,
      this.url,
      this.sha,
      this.size,
      this.nodeId,
      this.highlightedContent})
      : super._();

  @override
  Blob rebuild(void Function(BlobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlobBuilder toBuilder() => new BlobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Blob &&
        content == other.content &&
        encoding == other.encoding &&
        url == other.url &&
        sha == other.sha &&
        size == other.size &&
        nodeId == other.nodeId &&
        highlightedContent == other.highlightedContent;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, content.hashCode), encoding.hashCode),
                        url.hashCode),
                    sha.hashCode),
                size.hashCode),
            nodeId.hashCode),
        highlightedContent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Blob')
          ..add('content', content)
          ..add('encoding', encoding)
          ..add('url', url)
          ..add('sha', sha)
          ..add('size', size)
          ..add('nodeId', nodeId)
          ..add('highlightedContent', highlightedContent))
        .toString();
  }
}

class BlobBuilder implements Builder<Blob, BlobBuilder> {
  _$Blob _$v;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _encoding;
  String get encoding => _$this._encoding;
  set encoding(String encoding) => _$this._encoding = encoding;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _highlightedContent;
  String get highlightedContent => _$this._highlightedContent;
  set highlightedContent(String highlightedContent) =>
      _$this._highlightedContent = highlightedContent;

  BlobBuilder() {
    Blob._initializeBuilder(this);
  }

  BlobBuilder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _encoding = _$v.encoding;
      _url = _$v.url;
      _sha = _$v.sha;
      _size = _$v.size;
      _nodeId = _$v.nodeId;
      _highlightedContent = _$v.highlightedContent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Blob other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Blob;
  }

  @override
  void update(void Function(BlobBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Blob build() {
    final _$result = _$v ??
        new _$Blob._(
            content: content,
            encoding: encoding,
            url: url,
            sha: sha,
            size: size,
            nodeId: nodeId,
            highlightedContent: highlightedContent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

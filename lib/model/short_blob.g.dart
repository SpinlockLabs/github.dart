// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'short_blob.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShortBlob> _$shortBlobSerializer = new _$ShortBlobSerializer();

class _$ShortBlobSerializer implements StructuredSerializer<ShortBlob> {
  @override
  final Iterable<Type> types = const [ShortBlob, _$ShortBlob];
  @override
  final String wireName = 'ShortBlob';

  @override
  Iterable<Object> serialize(Serializers serializers, ShortBlob object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    return result;
  }

  @override
  ShortBlob deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShortBlobBuilder();

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
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ShortBlob extends ShortBlob {
  @override
  final String url;
  @override
  final String sha;

  factory _$ShortBlob([void Function(ShortBlobBuilder) updates]) =>
      (new ShortBlobBuilder()..update(updates)).build();

  _$ShortBlob._({this.url, this.sha}) : super._();

  @override
  ShortBlob rebuild(void Function(ShortBlobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortBlobBuilder toBuilder() => new ShortBlobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortBlob && url == other.url && sha == other.sha;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), sha.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShortBlob')
          ..add('url', url)
          ..add('sha', sha))
        .toString();
  }
}

class ShortBlobBuilder implements Builder<ShortBlob, ShortBlobBuilder> {
  _$ShortBlob _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  ShortBlobBuilder() {
    ShortBlob._initializeBuilder(this);
  }

  ShortBlobBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _sha = _$v.sha;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShortBlob other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShortBlob;
  }

  @override
  void update(void Function(ShortBlobBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShortBlob build() {
    final _$result = _$v ?? new _$ShortBlob._(url: url, sha: sha);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

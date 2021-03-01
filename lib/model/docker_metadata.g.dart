// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'docker_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DockerMetadata> _$dockerMetadataSerializer =
    new _$DockerMetadataSerializer();

class _$DockerMetadataSerializer
    implements StructuredSerializer<DockerMetadata> {
  @override
  final Iterable<Type> types = const [DockerMetadata, _$DockerMetadata];
  @override
  final String wireName = 'DockerMetadata';

  @override
  Iterable<Object> serialize(Serializers serializers, DockerMetadata object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tag != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(object.tag,
            specifiedType: const FullType(BuiltList)));
    }
    return result;
  }

  @override
  DockerMetadata deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DockerMetadataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
      }
    }

    return result.build();
  }
}

class _$DockerMetadata extends DockerMetadata {
  @override
  final BuiltList tag;

  factory _$DockerMetadata([void Function(DockerMetadataBuilder) updates]) =>
      (new DockerMetadataBuilder()..update(updates)).build();

  _$DockerMetadata._({this.tag}) : super._();

  @override
  DockerMetadata rebuild(void Function(DockerMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DockerMetadataBuilder toBuilder() =>
      new DockerMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DockerMetadata && tag == other.tag;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tag.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DockerMetadata')..add('tag', tag))
        .toString();
  }
}

class DockerMetadataBuilder
    implements Builder<DockerMetadata, DockerMetadataBuilder> {
  _$DockerMetadata _$v;

  BuiltList _tag;
  BuiltList get tag => _$this._tag;
  set tag(BuiltList tag) => _$this._tag = tag;

  DockerMetadataBuilder() {
    DockerMetadata._initializeBuilder(this);
  }

  DockerMetadataBuilder get _$this {
    if (_$v != null) {
      _tag = _$v.tag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DockerMetadata other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DockerMetadata;
  }

  @override
  void update(void Function(DockerMetadataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DockerMetadata build() {
    final _$result = _$v ?? new _$DockerMetadata._(tag: tag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

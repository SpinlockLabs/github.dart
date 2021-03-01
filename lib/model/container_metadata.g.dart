// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'container_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContainerMetadata> _$containerMetadataSerializer =
    new _$ContainerMetadataSerializer();

class _$ContainerMetadataSerializer
    implements StructuredSerializer<ContainerMetadata> {
  @override
  final Iterable<Type> types = const [ContainerMetadata, _$ContainerMetadata];
  @override
  final String wireName = 'ContainerMetadata';

  @override
  Iterable<Object> serialize(Serializers serializers, ContainerMetadata object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType: const FullType(BuiltList)));
    }
    return result;
  }

  @override
  ContainerMetadata deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContainerMetadataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tags':
          result.tags = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
      }
    }

    return result.build();
  }
}

class _$ContainerMetadata extends ContainerMetadata {
  @override
  final BuiltList tags;

  factory _$ContainerMetadata(
          [void Function(ContainerMetadataBuilder) updates]) =>
      (new ContainerMetadataBuilder()..update(updates)).build();

  _$ContainerMetadata._({this.tags}) : super._();

  @override
  ContainerMetadata rebuild(void Function(ContainerMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContainerMetadataBuilder toBuilder() =>
      new ContainerMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContainerMetadata && tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContainerMetadata')..add('tags', tags))
        .toString();
  }
}

class ContainerMetadataBuilder
    implements Builder<ContainerMetadata, ContainerMetadataBuilder> {
  _$ContainerMetadata _$v;

  BuiltList _tags;
  BuiltList get tags => _$this._tags;
  set tags(BuiltList tags) => _$this._tags = tags;

  ContainerMetadataBuilder() {
    ContainerMetadata._initializeBuilder(this);
  }

  ContainerMetadataBuilder get _$this {
    if (_$v != null) {
      _tags = _$v.tags;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContainerMetadata other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContainerMetadata;
  }

  @override
  void update(void Function(ContainerMetadataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContainerMetadata build() {
    final _$result = _$v ?? new _$ContainerMetadata._(tags: tags);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

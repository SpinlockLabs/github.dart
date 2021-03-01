// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'porter_large_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PorterLargeFile> _$porterLargeFileSerializer =
    new _$PorterLargeFileSerializer();

class _$PorterLargeFileSerializer
    implements StructuredSerializer<PorterLargeFile> {
  @override
  final Iterable<Type> types = const [PorterLargeFile, _$PorterLargeFile];
  @override
  final String wireName = 'PorterLargeFile';

  @override
  Iterable<Object> serialize(Serializers serializers, PorterLargeFile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.refName != null) {
      result
        ..add('ref_name')
        ..add(serializers.serialize(object.refName,
            specifiedType: const FullType(String)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.oid != null) {
      result
        ..add('oid')
        ..add(serializers.serialize(object.oid,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PorterLargeFile deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PorterLargeFileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ref_name':
          result.refName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'oid':
          result.oid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PorterLargeFile extends PorterLargeFile {
  @override
  final String refName;
  @override
  final String path;
  @override
  final String oid;
  @override
  final int size;

  factory _$PorterLargeFile([void Function(PorterLargeFileBuilder) updates]) =>
      (new PorterLargeFileBuilder()..update(updates)).build();

  _$PorterLargeFile._({this.refName, this.path, this.oid, this.size})
      : super._();

  @override
  PorterLargeFile rebuild(void Function(PorterLargeFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PorterLargeFileBuilder toBuilder() =>
      new PorterLargeFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PorterLargeFile &&
        refName == other.refName &&
        path == other.path &&
        oid == other.oid &&
        size == other.size;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, refName.hashCode), path.hashCode), oid.hashCode),
        size.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PorterLargeFile')
          ..add('refName', refName)
          ..add('path', path)
          ..add('oid', oid)
          ..add('size', size))
        .toString();
  }
}

class PorterLargeFileBuilder
    implements Builder<PorterLargeFile, PorterLargeFileBuilder> {
  _$PorterLargeFile _$v;

  String _refName;
  String get refName => _$this._refName;
  set refName(String refName) => _$this._refName = refName;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _oid;
  String get oid => _$this._oid;
  set oid(String oid) => _$this._oid = oid;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  PorterLargeFileBuilder() {
    PorterLargeFile._initializeBuilder(this);
  }

  PorterLargeFileBuilder get _$this {
    if (_$v != null) {
      _refName = _$v.refName;
      _path = _$v.path;
      _oid = _$v.oid;
      _size = _$v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PorterLargeFile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PorterLargeFile;
  }

  @override
  void update(void Function(PorterLargeFileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PorterLargeFile build() {
    final _$result = _$v ??
        new _$PorterLargeFile._(
            refName: refName, path: path, oid: oid, size: size);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

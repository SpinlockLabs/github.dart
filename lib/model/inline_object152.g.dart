// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object152.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject152> _$inlineObject152Serializer =
    new _$InlineObject152Serializer();

class _$InlineObject152Serializer
    implements StructuredSerializer<InlineObject152> {
  @override
  final Iterable<Type> types = const [InlineObject152, _$InlineObject152];
  @override
  final String wireName = 'InlineObject152';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject152 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.includeAllBranches != null) {
      result
        ..add('include_all_branches')
        ..add(serializers.serialize(object.includeAllBranches,
            specifiedType: const FullType(bool)));
    }
    if (object.private != null) {
      result
        ..add('private')
        ..add(serializers.serialize(object.private,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject152 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject152Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'include_all_branches':
          result.includeAllBranches = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject152 extends InlineObject152 {
  @override
  final String owner;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool includeAllBranches;
  @override
  final bool private;

  factory _$InlineObject152([void Function(InlineObject152Builder) updates]) =>
      (new InlineObject152Builder()..update(updates)).build();

  _$InlineObject152._(
      {this.owner,
      this.name,
      this.description,
      this.includeAllBranches,
      this.private})
      : super._();

  @override
  InlineObject152 rebuild(void Function(InlineObject152Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject152Builder toBuilder() =>
      new InlineObject152Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject152 &&
        owner == other.owner &&
        name == other.name &&
        description == other.description &&
        includeAllBranches == other.includeAllBranches &&
        private == other.private;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, owner.hashCode), name.hashCode),
                description.hashCode),
            includeAllBranches.hashCode),
        private.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject152')
          ..add('owner', owner)
          ..add('name', name)
          ..add('description', description)
          ..add('includeAllBranches', includeAllBranches)
          ..add('private', private))
        .toString();
  }
}

class InlineObject152Builder
    implements Builder<InlineObject152, InlineObject152Builder> {
  _$InlineObject152 _$v;

  String _owner;
  String get owner => _$this._owner;
  set owner(String owner) => _$this._owner = owner;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  bool _includeAllBranches;
  bool get includeAllBranches => _$this._includeAllBranches;
  set includeAllBranches(bool includeAllBranches) =>
      _$this._includeAllBranches = includeAllBranches;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  InlineObject152Builder() {
    InlineObject152._initializeBuilder(this);
  }

  InlineObject152Builder get _$this {
    if (_$v != null) {
      _owner = _$v.owner;
      _name = _$v.name;
      _description = _$v.description;
      _includeAllBranches = _$v.includeAllBranches;
      _private = _$v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject152 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject152;
  }

  @override
  void update(void Function(InlineObject152Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject152 build() {
    final _$result = _$v ??
        new _$InlineObject152._(
            owner: owner,
            name: name,
            description: description,
            includeAllBranches: includeAllBranches,
            private: private);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

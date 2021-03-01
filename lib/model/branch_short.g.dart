// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_short.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchShort> _$branchShortSerializer = new _$BranchShortSerializer();

class _$BranchShortSerializer implements StructuredSerializer<BranchShort> {
  @override
  final Iterable<Type> types = const [BranchShort, _$BranchShort];
  @override
  final String wireName = 'BranchShort';

  @override
  Iterable<Object> serialize(Serializers serializers, BranchShort object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.commit != null) {
      result
        ..add('commit')
        ..add(serializers.serialize(object.commit,
            specifiedType: const FullType(BranchShortCommit)));
    }
    if (object.protected != null) {
      result
        ..add('protected')
        ..add(serializers.serialize(object.protected,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  BranchShort deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchShortBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit':
          result.commit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BranchShortCommit))
              as BranchShortCommit);
          break;
        case 'protected':
          result.protected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$BranchShort extends BranchShort {
  @override
  final String name;
  @override
  final BranchShortCommit commit;
  @override
  final bool protected;

  factory _$BranchShort([void Function(BranchShortBuilder) updates]) =>
      (new BranchShortBuilder()..update(updates)).build();

  _$BranchShort._({this.name, this.commit, this.protected}) : super._();

  @override
  BranchShort rebuild(void Function(BranchShortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchShortBuilder toBuilder() => new BranchShortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchShort &&
        name == other.name &&
        commit == other.commit &&
        protected == other.protected;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), commit.hashCode), protected.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchShort')
          ..add('name', name)
          ..add('commit', commit)
          ..add('protected', protected))
        .toString();
  }
}

class BranchShortBuilder implements Builder<BranchShort, BranchShortBuilder> {
  _$BranchShort _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  BranchShortCommitBuilder _commit;
  BranchShortCommitBuilder get commit =>
      _$this._commit ??= new BranchShortCommitBuilder();
  set commit(BranchShortCommitBuilder commit) => _$this._commit = commit;

  bool _protected;
  bool get protected => _$this._protected;
  set protected(bool protected) => _$this._protected = protected;

  BranchShortBuilder() {
    BranchShort._initializeBuilder(this);
  }

  BranchShortBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _commit = _$v.commit?.toBuilder();
      _protected = _$v.protected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchShort other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchShort;
  }

  @override
  void update(void Function(BranchShortBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchShort build() {
    _$BranchShort _$result;
    try {
      _$result = _$v ??
          new _$BranchShort._(
              name: name, commit: _commit?.build(), protected: protected);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'commit';
        _commit?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BranchShort', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

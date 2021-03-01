// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'short_branch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShortBranch> _$shortBranchSerializer = new _$ShortBranchSerializer();

class _$ShortBranchSerializer implements StructuredSerializer<ShortBranch> {
  @override
  final Iterable<Type> types = const [ShortBranch, _$ShortBranch];
  @override
  final String wireName = 'ShortBranch';

  @override
  Iterable<Object> serialize(Serializers serializers, ShortBranch object,
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
            specifiedType: const FullType(ShortBranchCommit)));
    }
    if (object.protected != null) {
      result
        ..add('protected')
        ..add(serializers.serialize(object.protected,
            specifiedType: const FullType(bool)));
    }
    if (object.protection != null) {
      result
        ..add('protection')
        ..add(serializers.serialize(object.protection,
            specifiedType: const FullType(BranchProtection)));
    }
    if (object.protectionUrl != null) {
      result
        ..add('protection_url')
        ..add(serializers.serialize(object.protectionUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ShortBranch deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShortBranchBuilder();

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
                  specifiedType: const FullType(ShortBranchCommit))
              as ShortBranchCommit);
          break;
        case 'protected':
          result.protected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'protection':
          result.protection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BranchProtection))
              as BranchProtection);
          break;
        case 'protection_url':
          result.protectionUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ShortBranch extends ShortBranch {
  @override
  final String name;
  @override
  final ShortBranchCommit commit;
  @override
  final bool protected;
  @override
  final BranchProtection protection;
  @override
  final String protectionUrl;

  factory _$ShortBranch([void Function(ShortBranchBuilder) updates]) =>
      (new ShortBranchBuilder()..update(updates)).build();

  _$ShortBranch._(
      {this.name,
      this.commit,
      this.protected,
      this.protection,
      this.protectionUrl})
      : super._();

  @override
  ShortBranch rebuild(void Function(ShortBranchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortBranchBuilder toBuilder() => new ShortBranchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortBranch &&
        name == other.name &&
        commit == other.commit &&
        protected == other.protected &&
        protection == other.protection &&
        protectionUrl == other.protectionUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), commit.hashCode),
                protected.hashCode),
            protection.hashCode),
        protectionUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShortBranch')
          ..add('name', name)
          ..add('commit', commit)
          ..add('protected', protected)
          ..add('protection', protection)
          ..add('protectionUrl', protectionUrl))
        .toString();
  }
}

class ShortBranchBuilder implements Builder<ShortBranch, ShortBranchBuilder> {
  _$ShortBranch _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ShortBranchCommitBuilder _commit;
  ShortBranchCommitBuilder get commit =>
      _$this._commit ??= new ShortBranchCommitBuilder();
  set commit(ShortBranchCommitBuilder commit) => _$this._commit = commit;

  bool _protected;
  bool get protected => _$this._protected;
  set protected(bool protected) => _$this._protected = protected;

  BranchProtectionBuilder _protection;
  BranchProtectionBuilder get protection =>
      _$this._protection ??= new BranchProtectionBuilder();
  set protection(BranchProtectionBuilder protection) =>
      _$this._protection = protection;

  String _protectionUrl;
  String get protectionUrl => _$this._protectionUrl;
  set protectionUrl(String protectionUrl) =>
      _$this._protectionUrl = protectionUrl;

  ShortBranchBuilder() {
    ShortBranch._initializeBuilder(this);
  }

  ShortBranchBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _commit = _$v.commit?.toBuilder();
      _protected = _$v.protected;
      _protection = _$v.protection?.toBuilder();
      _protectionUrl = _$v.protectionUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShortBranch other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShortBranch;
  }

  @override
  void update(void Function(ShortBranchBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShortBranch build() {
    _$ShortBranch _$result;
    try {
      _$result = _$v ??
          new _$ShortBranch._(
              name: name,
              commit: _commit?.build(),
              protected: protected,
              protection: _protection?.build(),
              protectionUrl: protectionUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'commit';
        _commit?.build();

        _$failedField = 'protection';
        _protection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ShortBranch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

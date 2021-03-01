// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_with_protection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchWithProtection> _$branchWithProtectionSerializer =
    new _$BranchWithProtectionSerializer();

class _$BranchWithProtectionSerializer
    implements StructuredSerializer<BranchWithProtection> {
  @override
  final Iterable<Type> types = const [
    BranchWithProtection,
    _$BranchWithProtection
  ];
  @override
  final String wireName = 'BranchWithProtection';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BranchWithProtection object,
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
            specifiedType: const FullType(Commit)));
    }
    if (object.links != null) {
      result
        ..add('_links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(BranchWithProtectionLinks)));
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
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(String)));
    }
    if (object.requiredApprovingReviewCount != null) {
      result
        ..add('required_approving_review_count')
        ..add(serializers.serialize(object.requiredApprovingReviewCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BranchWithProtection deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchWithProtectionBuilder();

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
              specifiedType: const FullType(Commit)) as Commit);
          break;
        case '_links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BranchWithProtectionLinks))
              as BranchWithProtectionLinks);
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
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required_approving_review_count':
          result.requiredApprovingReviewCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BranchWithProtection extends BranchWithProtection {
  @override
  final String name;
  @override
  final Commit commit;
  @override
  final BranchWithProtectionLinks links;
  @override
  final bool protected;
  @override
  final BranchProtection protection;
  @override
  final String protectionUrl;
  @override
  final String pattern;
  @override
  final int requiredApprovingReviewCount;

  factory _$BranchWithProtection(
          [void Function(BranchWithProtectionBuilder) updates]) =>
      (new BranchWithProtectionBuilder()..update(updates)).build();

  _$BranchWithProtection._(
      {this.name,
      this.commit,
      this.links,
      this.protected,
      this.protection,
      this.protectionUrl,
      this.pattern,
      this.requiredApprovingReviewCount})
      : super._();

  @override
  BranchWithProtection rebuild(
          void Function(BranchWithProtectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchWithProtectionBuilder toBuilder() =>
      new BranchWithProtectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchWithProtection &&
        name == other.name &&
        commit == other.commit &&
        links == other.links &&
        protected == other.protected &&
        protection == other.protection &&
        protectionUrl == other.protectionUrl &&
        pattern == other.pattern &&
        requiredApprovingReviewCount == other.requiredApprovingReviewCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), commit.hashCode),
                            links.hashCode),
                        protected.hashCode),
                    protection.hashCode),
                protectionUrl.hashCode),
            pattern.hashCode),
        requiredApprovingReviewCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchWithProtection')
          ..add('name', name)
          ..add('commit', commit)
          ..add('links', links)
          ..add('protected', protected)
          ..add('protection', protection)
          ..add('protectionUrl', protectionUrl)
          ..add('pattern', pattern)
          ..add('requiredApprovingReviewCount', requiredApprovingReviewCount))
        .toString();
  }
}

class BranchWithProtectionBuilder
    implements Builder<BranchWithProtection, BranchWithProtectionBuilder> {
  _$BranchWithProtection _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  CommitBuilder _commit;
  CommitBuilder get commit => _$this._commit ??= new CommitBuilder();
  set commit(CommitBuilder commit) => _$this._commit = commit;

  BranchWithProtectionLinksBuilder _links;
  BranchWithProtectionLinksBuilder get links =>
      _$this._links ??= new BranchWithProtectionLinksBuilder();
  set links(BranchWithProtectionLinksBuilder links) => _$this._links = links;

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

  String _pattern;
  String get pattern => _$this._pattern;
  set pattern(String pattern) => _$this._pattern = pattern;

  int _requiredApprovingReviewCount;
  int get requiredApprovingReviewCount => _$this._requiredApprovingReviewCount;
  set requiredApprovingReviewCount(int requiredApprovingReviewCount) =>
      _$this._requiredApprovingReviewCount = requiredApprovingReviewCount;

  BranchWithProtectionBuilder() {
    BranchWithProtection._initializeBuilder(this);
  }

  BranchWithProtectionBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _commit = _$v.commit?.toBuilder();
      _links = _$v.links?.toBuilder();
      _protected = _$v.protected;
      _protection = _$v.protection?.toBuilder();
      _protectionUrl = _$v.protectionUrl;
      _pattern = _$v.pattern;
      _requiredApprovingReviewCount = _$v.requiredApprovingReviewCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchWithProtection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchWithProtection;
  }

  @override
  void update(void Function(BranchWithProtectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchWithProtection build() {
    _$BranchWithProtection _$result;
    try {
      _$result = _$v ??
          new _$BranchWithProtection._(
              name: name,
              commit: _commit?.build(),
              links: _links?.build(),
              protected: protected,
              protection: _protection?.build(),
              protectionUrl: protectionUrl,
              pattern: pattern,
              requiredApprovingReviewCount: requiredApprovingReviewCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'commit';
        _commit?.build();
        _$failedField = 'links';
        _links?.build();

        _$failedField = 'protection';
        _protection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BranchWithProtection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

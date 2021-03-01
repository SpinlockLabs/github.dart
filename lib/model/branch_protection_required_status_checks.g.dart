// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_protection_required_status_checks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchProtectionRequiredStatusChecks>
    _$branchProtectionRequiredStatusChecksSerializer =
    new _$BranchProtectionRequiredStatusChecksSerializer();

class _$BranchProtectionRequiredStatusChecksSerializer
    implements StructuredSerializer<BranchProtectionRequiredStatusChecks> {
  @override
  final Iterable<Type> types = const [
    BranchProtectionRequiredStatusChecks,
    _$BranchProtectionRequiredStatusChecks
  ];
  @override
  final String wireName = 'BranchProtectionRequiredStatusChecks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BranchProtectionRequiredStatusChecks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.enforcementLevel != null) {
      result
        ..add('enforcement_level')
        ..add(serializers.serialize(object.enforcementLevel,
            specifiedType: const FullType(String)));
    }
    if (object.contexts != null) {
      result
        ..add('contexts')
        ..add(serializers.serialize(object.contexts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.contextsUrl != null) {
      result
        ..add('contexts_url')
        ..add(serializers.serialize(object.contextsUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BranchProtectionRequiredStatusChecks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchProtectionRequiredStatusChecksBuilder();

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
        case 'enforcement_level':
          result.enforcementLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contexts':
          result.contexts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'contexts_url':
          result.contextsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BranchProtectionRequiredStatusChecks
    extends BranchProtectionRequiredStatusChecks {
  @override
  final String url;
  @override
  final String enforcementLevel;
  @override
  final BuiltList<String> contexts;
  @override
  final String contextsUrl;

  factory _$BranchProtectionRequiredStatusChecks(
          [void Function(BranchProtectionRequiredStatusChecksBuilder)
              updates]) =>
      (new BranchProtectionRequiredStatusChecksBuilder()..update(updates))
          .build();

  _$BranchProtectionRequiredStatusChecks._(
      {this.url, this.enforcementLevel, this.contexts, this.contextsUrl})
      : super._();

  @override
  BranchProtectionRequiredStatusChecks rebuild(
          void Function(BranchProtectionRequiredStatusChecksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchProtectionRequiredStatusChecksBuilder toBuilder() =>
      new BranchProtectionRequiredStatusChecksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchProtectionRequiredStatusChecks &&
        url == other.url &&
        enforcementLevel == other.enforcementLevel &&
        contexts == other.contexts &&
        contextsUrl == other.contextsUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, url.hashCode), enforcementLevel.hashCode),
            contexts.hashCode),
        contextsUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchProtectionRequiredStatusChecks')
          ..add('url', url)
          ..add('enforcementLevel', enforcementLevel)
          ..add('contexts', contexts)
          ..add('contextsUrl', contextsUrl))
        .toString();
  }
}

class BranchProtectionRequiredStatusChecksBuilder
    implements
        Builder<BranchProtectionRequiredStatusChecks,
            BranchProtectionRequiredStatusChecksBuilder> {
  _$BranchProtectionRequiredStatusChecks _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _enforcementLevel;
  String get enforcementLevel => _$this._enforcementLevel;
  set enforcementLevel(String enforcementLevel) =>
      _$this._enforcementLevel = enforcementLevel;

  ListBuilder<String> _contexts;
  ListBuilder<String> get contexts =>
      _$this._contexts ??= new ListBuilder<String>();
  set contexts(ListBuilder<String> contexts) => _$this._contexts = contexts;

  String _contextsUrl;
  String get contextsUrl => _$this._contextsUrl;
  set contextsUrl(String contextsUrl) => _$this._contextsUrl = contextsUrl;

  BranchProtectionRequiredStatusChecksBuilder() {
    BranchProtectionRequiredStatusChecks._initializeBuilder(this);
  }

  BranchProtectionRequiredStatusChecksBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _enforcementLevel = _$v.enforcementLevel;
      _contexts = _$v.contexts?.toBuilder();
      _contextsUrl = _$v.contextsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchProtectionRequiredStatusChecks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchProtectionRequiredStatusChecks;
  }

  @override
  void update(
      void Function(BranchProtectionRequiredStatusChecksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchProtectionRequiredStatusChecks build() {
    _$BranchProtectionRequiredStatusChecks _$result;
    try {
      _$result = _$v ??
          new _$BranchProtectionRequiredStatusChecks._(
              url: url,
              enforcementLevel: enforcementLevel,
              contexts: _contexts?.build(),
              contextsUrl: contextsUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contexts';
        _contexts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BranchProtectionRequiredStatusChecks',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

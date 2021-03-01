// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_branches_branch_protection_required_status_checks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks>
    _$reposOwnerRepoBranchesBranchProtectionRequiredStatusChecksSerializer =
    new _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksSerializer();

class _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksSerializer
    implements
        StructuredSerializer<
            ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks,
    _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks
  ];
  @override
  final String wireName =
      'ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.strict != null) {
      result
        ..add('strict')
        ..add(serializers.serialize(object.strict,
            specifiedType: const FullType(bool)));
    }
    if (object.contexts != null) {
      result
        ..add('contexts')
        ..add(serializers.serialize(object.contexts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'strict':
          result.strict = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'contexts':
          result.contexts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks
    extends ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks {
  @override
  final bool strict;
  @override
  final BuiltList<String> contexts;

  factory _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks(
          [void Function(
                  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder)
              updates]) =>
      (new ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder()
            ..update(updates))
          .build();

  _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks._(
      {this.strict, this.contexts})
      : super._();

  @override
  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks rebuild(
          void Function(
                  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder
      toBuilder() =>
          new ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks &&
        strict == other.strict &&
        contexts == other.contexts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, strict.hashCode), contexts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks')
          ..add('strict', strict)
          ..add('contexts', contexts))
        .toString();
  }
}

class ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder
    implements
        Builder<ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks,
            ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder> {
  _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks _$v;

  bool _strict;
  bool get strict => _$this._strict;
  set strict(bool strict) => _$this._strict = strict;

  ListBuilder<String> _contexts;
  ListBuilder<String> get contexts =>
      _$this._contexts ??= new ListBuilder<String>();
  set contexts(ListBuilder<String> contexts) => _$this._contexts = contexts;

  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder() {
    ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks
        ._initializeBuilder(this);
  }

  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder get _$this {
    if (_$v != null) {
      _strict = _$v.strict;
      _contexts = _$v.contexts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks;
  }

  @override
  void update(
      void Function(
              ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecksBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks build() {
    _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks _$result;
    try {
      _$result = _$v ??
          new _$ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks._(
              strict: strict, contexts: _contexts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contexts';
        _contexts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks',
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

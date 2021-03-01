// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'selected_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SelectedActions> _$selectedActionsSerializer =
    new _$SelectedActionsSerializer();

class _$SelectedActionsSerializer
    implements StructuredSerializer<SelectedActions> {
  @override
  final Iterable<Type> types = const [SelectedActions, _$SelectedActions];
  @override
  final String wireName = 'SelectedActions';

  @override
  Iterable<Object> serialize(Serializers serializers, SelectedActions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.githubOwnedAllowed != null) {
      result
        ..add('github_owned_allowed')
        ..add(serializers.serialize(object.githubOwnedAllowed,
            specifiedType: const FullType(bool)));
    }
    if (object.verifiedAllowed != null) {
      result
        ..add('verified_allowed')
        ..add(serializers.serialize(object.verifiedAllowed,
            specifiedType: const FullType(bool)));
    }
    if (object.patternsAllowed != null) {
      result
        ..add('patterns_allowed')
        ..add(serializers.serialize(object.patternsAllowed,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  SelectedActions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelectedActionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'github_owned_allowed':
          result.githubOwnedAllowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'verified_allowed':
          result.verifiedAllowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'patterns_allowed':
          result.patternsAllowed.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SelectedActions extends SelectedActions {
  @override
  final bool githubOwnedAllowed;
  @override
  final bool verifiedAllowed;
  @override
  final BuiltList<String> patternsAllowed;

  factory _$SelectedActions([void Function(SelectedActionsBuilder) updates]) =>
      (new SelectedActionsBuilder()..update(updates)).build();

  _$SelectedActions._(
      {this.githubOwnedAllowed, this.verifiedAllowed, this.patternsAllowed})
      : super._();

  @override
  SelectedActions rebuild(void Function(SelectedActionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectedActionsBuilder toBuilder() =>
      new SelectedActionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectedActions &&
        githubOwnedAllowed == other.githubOwnedAllowed &&
        verifiedAllowed == other.verifiedAllowed &&
        patternsAllowed == other.patternsAllowed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, githubOwnedAllowed.hashCode), verifiedAllowed.hashCode),
        patternsAllowed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SelectedActions')
          ..add('githubOwnedAllowed', githubOwnedAllowed)
          ..add('verifiedAllowed', verifiedAllowed)
          ..add('patternsAllowed', patternsAllowed))
        .toString();
  }
}

class SelectedActionsBuilder
    implements Builder<SelectedActions, SelectedActionsBuilder> {
  _$SelectedActions _$v;

  bool _githubOwnedAllowed;
  bool get githubOwnedAllowed => _$this._githubOwnedAllowed;
  set githubOwnedAllowed(bool githubOwnedAllowed) =>
      _$this._githubOwnedAllowed = githubOwnedAllowed;

  bool _verifiedAllowed;
  bool get verifiedAllowed => _$this._verifiedAllowed;
  set verifiedAllowed(bool verifiedAllowed) =>
      _$this._verifiedAllowed = verifiedAllowed;

  ListBuilder<String> _patternsAllowed;
  ListBuilder<String> get patternsAllowed =>
      _$this._patternsAllowed ??= new ListBuilder<String>();
  set patternsAllowed(ListBuilder<String> patternsAllowed) =>
      _$this._patternsAllowed = patternsAllowed;

  SelectedActionsBuilder() {
    SelectedActions._initializeBuilder(this);
  }

  SelectedActionsBuilder get _$this {
    if (_$v != null) {
      _githubOwnedAllowed = _$v.githubOwnedAllowed;
      _verifiedAllowed = _$v.verifiedAllowed;
      _patternsAllowed = _$v.patternsAllowed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectedActions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SelectedActions;
  }

  @override
  void update(void Function(SelectedActionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SelectedActions build() {
    _$SelectedActions _$result;
    try {
      _$result = _$v ??
          new _$SelectedActions._(
              githubOwnedAllowed: githubOwnedAllowed,
              verifiedAllowed: verifiedAllowed,
              patternsAllowed: _patternsAllowed?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'patternsAllowed';
        _patternsAllowed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SelectedActions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object25.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject25> _$inlineObject25Serializer =
    new _$InlineObject25Serializer();

class _$InlineObject25Serializer
    implements StructuredSerializer<InlineObject25> {
  @override
  final Iterable<Type> types = const [InlineObject25, _$InlineObject25];
  @override
  final String wireName = 'InlineObject25';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject25 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.enabledRepositories != null) {
      result
        ..add('enabled_repositories')
        ..add(serializers.serialize(object.enabledRepositories,
            specifiedType: const FullType(EnabledRepositories)));
    }
    if (object.allowedActions != null) {
      result
        ..add('allowed_actions')
        ..add(serializers.serialize(object.allowedActions,
            specifiedType: const FullType(AllowedActions)));
    }
    return result;
  }

  @override
  InlineObject25 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject25Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'enabled_repositories':
          result.enabledRepositories = serializers.deserialize(value,
                  specifiedType: const FullType(EnabledRepositories))
              as EnabledRepositories;
          break;
        case 'allowed_actions':
          result.allowedActions = serializers.deserialize(value,
              specifiedType: const FullType(AllowedActions)) as AllowedActions;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject25 extends InlineObject25 {
  @override
  final EnabledRepositories enabledRepositories;
  @override
  final AllowedActions allowedActions;

  factory _$InlineObject25([void Function(InlineObject25Builder) updates]) =>
      (new InlineObject25Builder()..update(updates)).build();

  _$InlineObject25._({this.enabledRepositories, this.allowedActions})
      : super._();

  @override
  InlineObject25 rebuild(void Function(InlineObject25Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject25Builder toBuilder() =>
      new InlineObject25Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject25 &&
        enabledRepositories == other.enabledRepositories &&
        allowedActions == other.allowedActions;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, enabledRepositories.hashCode), allowedActions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject25')
          ..add('enabledRepositories', enabledRepositories)
          ..add('allowedActions', allowedActions))
        .toString();
  }
}

class InlineObject25Builder
    implements Builder<InlineObject25, InlineObject25Builder> {
  _$InlineObject25 _$v;

  EnabledRepositories _enabledRepositories;
  EnabledRepositories get enabledRepositories => _$this._enabledRepositories;
  set enabledRepositories(EnabledRepositories enabledRepositories) =>
      _$this._enabledRepositories = enabledRepositories;

  AllowedActions _allowedActions;
  AllowedActions get allowedActions => _$this._allowedActions;
  set allowedActions(AllowedActions allowedActions) =>
      _$this._allowedActions = allowedActions;

  InlineObject25Builder() {
    InlineObject25._initializeBuilder(this);
  }

  InlineObject25Builder get _$this {
    if (_$v != null) {
      _enabledRepositories = _$v.enabledRepositories;
      _allowedActions = _$v.allowedActions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject25 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject25;
  }

  @override
  void update(void Function(InlineObject25Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject25 build() {
    final _$result = _$v ??
        new _$InlineObject25._(
            enabledRepositories: enabledRepositories,
            allowedActions: allowedActions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

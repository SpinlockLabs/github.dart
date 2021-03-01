// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object12.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject12> _$inlineObject12Serializer =
    new _$InlineObject12Serializer();

class _$InlineObject12Serializer
    implements StructuredSerializer<InlineObject12> {
  @override
  final Iterable<Type> types = const [InlineObject12, _$InlineObject12];
  @override
  final String wireName = 'InlineObject12';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject12 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.enabledOrganizations != null) {
      result
        ..add('enabled_organizations')
        ..add(serializers.serialize(object.enabledOrganizations,
            specifiedType: const FullType(EnabledOrganizations)));
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
  InlineObject12 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject12Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'enabled_organizations':
          result.enabledOrganizations = serializers.deserialize(value,
                  specifiedType: const FullType(EnabledOrganizations))
              as EnabledOrganizations;
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

class _$InlineObject12 extends InlineObject12 {
  @override
  final EnabledOrganizations enabledOrganizations;
  @override
  final AllowedActions allowedActions;

  factory _$InlineObject12([void Function(InlineObject12Builder) updates]) =>
      (new InlineObject12Builder()..update(updates)).build();

  _$InlineObject12._({this.enabledOrganizations, this.allowedActions})
      : super._();

  @override
  InlineObject12 rebuild(void Function(InlineObject12Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject12Builder toBuilder() =>
      new InlineObject12Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject12 &&
        enabledOrganizations == other.enabledOrganizations &&
        allowedActions == other.allowedActions;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, enabledOrganizations.hashCode), allowedActions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject12')
          ..add('enabledOrganizations', enabledOrganizations)
          ..add('allowedActions', allowedActions))
        .toString();
  }
}

class InlineObject12Builder
    implements Builder<InlineObject12, InlineObject12Builder> {
  _$InlineObject12 _$v;

  EnabledOrganizations _enabledOrganizations;
  EnabledOrganizations get enabledOrganizations => _$this._enabledOrganizations;
  set enabledOrganizations(EnabledOrganizations enabledOrganizations) =>
      _$this._enabledOrganizations = enabledOrganizations;

  AllowedActions _allowedActions;
  AllowedActions get allowedActions => _$this._allowedActions;
  set allowedActions(AllowedActions allowedActions) =>
      _$this._allowedActions = allowedActions;

  InlineObject12Builder() {
    InlineObject12._initializeBuilder(this);
  }

  InlineObject12Builder get _$this {
    if (_$v != null) {
      _enabledOrganizations = _$v.enabledOrganizations;
      _allowedActions = _$v.allowedActions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject12 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject12;
  }

  @override
  void update(void Function(InlineObject12Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject12 build() {
    final _$result = _$v ??
        new _$InlineObject12._(
            enabledOrganizations: enabledOrganizations,
            allowedActions: allowedActions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

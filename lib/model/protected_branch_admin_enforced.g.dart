// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'protected_branch_admin_enforced.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtectedBranchAdminEnforced>
    _$protectedBranchAdminEnforcedSerializer =
    new _$ProtectedBranchAdminEnforcedSerializer();

class _$ProtectedBranchAdminEnforcedSerializer
    implements StructuredSerializer<ProtectedBranchAdminEnforced> {
  @override
  final Iterable<Type> types = const [
    ProtectedBranchAdminEnforced,
    _$ProtectedBranchAdminEnforced
  ];
  @override
  final String wireName = 'ProtectedBranchAdminEnforced';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProtectedBranchAdminEnforced object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.enabled != null) {
      result
        ..add('enabled')
        ..add(serializers.serialize(object.enabled,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ProtectedBranchAdminEnforced deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProtectedBranchAdminEnforcedBuilder();

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
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ProtectedBranchAdminEnforced extends ProtectedBranchAdminEnforced {
  @override
  final String url;
  @override
  final bool enabled;

  factory _$ProtectedBranchAdminEnforced(
          [void Function(ProtectedBranchAdminEnforcedBuilder) updates]) =>
      (new ProtectedBranchAdminEnforcedBuilder()..update(updates)).build();

  _$ProtectedBranchAdminEnforced._({this.url, this.enabled}) : super._();

  @override
  ProtectedBranchAdminEnforced rebuild(
          void Function(ProtectedBranchAdminEnforcedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtectedBranchAdminEnforcedBuilder toBuilder() =>
      new ProtectedBranchAdminEnforcedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtectedBranchAdminEnforced &&
        url == other.url &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), enabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProtectedBranchAdminEnforced')
          ..add('url', url)
          ..add('enabled', enabled))
        .toString();
  }
}

class ProtectedBranchAdminEnforcedBuilder
    implements
        Builder<ProtectedBranchAdminEnforced,
            ProtectedBranchAdminEnforcedBuilder> {
  _$ProtectedBranchAdminEnforced _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  ProtectedBranchAdminEnforcedBuilder() {
    ProtectedBranchAdminEnforced._initializeBuilder(this);
  }

  ProtectedBranchAdminEnforcedBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _enabled = _$v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtectedBranchAdminEnforced other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProtectedBranchAdminEnforced;
  }

  @override
  void update(void Function(ProtectedBranchAdminEnforcedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtectedBranchAdminEnforced build() {
    final _$result =
        _$v ?? new _$ProtectedBranchAdminEnforced._(url: url, enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

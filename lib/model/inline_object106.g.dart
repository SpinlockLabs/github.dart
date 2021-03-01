// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object106.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject106> _$inlineObject106Serializer =
    new _$InlineObject106Serializer();

class _$InlineObject106Serializer
    implements StructuredSerializer<InlineObject106> {
  @override
  final Iterable<Type> types = const [InlineObject106, _$InlineObject106];
  @override
  final String wireName = 'InlineObject106';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject106 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.vcsUsername != null) {
      result
        ..add('vcs_username')
        ..add(serializers.serialize(object.vcsUsername,
            specifiedType: const FullType(String)));
    }
    if (object.vcsPassword != null) {
      result
        ..add('vcs_password')
        ..add(serializers.serialize(object.vcsPassword,
            specifiedType: const FullType(String)));
    }
    if (object.vcs != null) {
      result
        ..add('vcs')
        ..add(serializers.serialize(object.vcs,
            specifiedType: const FullType(String)));
    }
    if (object.tfvcProject != null) {
      result
        ..add('tfvc_project')
        ..add(serializers.serialize(object.tfvcProject,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject106 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject106Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vcs_username':
          result.vcsUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vcs_password':
          result.vcsPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vcs':
          result.vcs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tfvc_project':
          result.tfvcProject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject106 extends InlineObject106 {
  @override
  final String vcsUsername;
  @override
  final String vcsPassword;
  @override
  final String vcs;
  @override
  final String tfvcProject;

  factory _$InlineObject106([void Function(InlineObject106Builder) updates]) =>
      (new InlineObject106Builder()..update(updates)).build();

  _$InlineObject106._(
      {this.vcsUsername, this.vcsPassword, this.vcs, this.tfvcProject})
      : super._();

  @override
  InlineObject106 rebuild(void Function(InlineObject106Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject106Builder toBuilder() =>
      new InlineObject106Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject106 &&
        vcsUsername == other.vcsUsername &&
        vcsPassword == other.vcsPassword &&
        vcs == other.vcs &&
        tfvcProject == other.tfvcProject;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, vcsUsername.hashCode), vcsPassword.hashCode),
            vcs.hashCode),
        tfvcProject.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject106')
          ..add('vcsUsername', vcsUsername)
          ..add('vcsPassword', vcsPassword)
          ..add('vcs', vcs)
          ..add('tfvcProject', tfvcProject))
        .toString();
  }
}

class InlineObject106Builder
    implements Builder<InlineObject106, InlineObject106Builder> {
  _$InlineObject106 _$v;

  String _vcsUsername;
  String get vcsUsername => _$this._vcsUsername;
  set vcsUsername(String vcsUsername) => _$this._vcsUsername = vcsUsername;

  String _vcsPassword;
  String get vcsPassword => _$this._vcsPassword;
  set vcsPassword(String vcsPassword) => _$this._vcsPassword = vcsPassword;

  String _vcs;
  String get vcs => _$this._vcs;
  set vcs(String vcs) => _$this._vcs = vcs;

  String _tfvcProject;
  String get tfvcProject => _$this._tfvcProject;
  set tfvcProject(String tfvcProject) => _$this._tfvcProject = tfvcProject;

  InlineObject106Builder() {
    InlineObject106._initializeBuilder(this);
  }

  InlineObject106Builder get _$this {
    if (_$v != null) {
      _vcsUsername = _$v.vcsUsername;
      _vcsPassword = _$v.vcsPassword;
      _vcs = _$v.vcs;
      _tfvcProject = _$v.tfvcProject;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject106 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject106;
  }

  @override
  void update(void Function(InlineObject106Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject106 build() {
    final _$result = _$v ??
        new _$InlineObject106._(
            vcsUsername: vcsUsername,
            vcsPassword: vcsPassword,
            vcs: vcs,
            tfvcProject: tfvcProject);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object105.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject105VcsEnum _$inlineObject105VcsEnum_subversion =
    const InlineObject105VcsEnum._('subversion');
const InlineObject105VcsEnum _$inlineObject105VcsEnum_git =
    const InlineObject105VcsEnum._('git');
const InlineObject105VcsEnum _$inlineObject105VcsEnum_mercurial =
    const InlineObject105VcsEnum._('mercurial');
const InlineObject105VcsEnum _$inlineObject105VcsEnum_tfvc =
    const InlineObject105VcsEnum._('tfvc');

InlineObject105VcsEnum _$inlineObject105VcsEnumValueOf(String name) {
  switch (name) {
    case 'subversion':
      return _$inlineObject105VcsEnum_subversion;
    case 'git':
      return _$inlineObject105VcsEnum_git;
    case 'mercurial':
      return _$inlineObject105VcsEnum_mercurial;
    case 'tfvc':
      return _$inlineObject105VcsEnum_tfvc;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject105VcsEnum> _$inlineObject105VcsEnumValues =
    new BuiltSet<InlineObject105VcsEnum>(const <InlineObject105VcsEnum>[
  _$inlineObject105VcsEnum_subversion,
  _$inlineObject105VcsEnum_git,
  _$inlineObject105VcsEnum_mercurial,
  _$inlineObject105VcsEnum_tfvc,
]);

Serializer<InlineObject105> _$inlineObject105Serializer =
    new _$InlineObject105Serializer();
Serializer<InlineObject105VcsEnum> _$inlineObject105VcsEnumSerializer =
    new _$InlineObject105VcsEnumSerializer();

class _$InlineObject105Serializer
    implements StructuredSerializer<InlineObject105> {
  @override
  final Iterable<Type> types = const [InlineObject105, _$InlineObject105];
  @override
  final String wireName = 'InlineObject105';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject105 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.vcsUrl != null) {
      result
        ..add('vcs_url')
        ..add(serializers.serialize(object.vcsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.vcs != null) {
      result
        ..add('vcs')
        ..add(serializers.serialize(object.vcs,
            specifiedType: const FullType(InlineObject105VcsEnum)));
    }
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
    if (object.tfvcProject != null) {
      result
        ..add('tfvc_project')
        ..add(serializers.serialize(object.tfvcProject,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject105 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject105Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vcs_url':
          result.vcsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vcs':
          result.vcs = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject105VcsEnum))
              as InlineObject105VcsEnum;
          break;
        case 'vcs_username':
          result.vcsUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vcs_password':
          result.vcsPassword = serializers.deserialize(value,
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

class _$InlineObject105VcsEnumSerializer
    implements PrimitiveSerializer<InlineObject105VcsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'subversion': 'subversion',
    'git': 'git',
    'mercurial': 'mercurial',
    'tfvc': 'tfvc',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'subversion': 'subversion',
    'git': 'git',
    'mercurial': 'mercurial',
    'tfvc': 'tfvc',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject105VcsEnum];
  @override
  final String wireName = 'InlineObject105VcsEnum';

  @override
  Object serialize(Serializers serializers, InlineObject105VcsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject105VcsEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject105VcsEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject105 extends InlineObject105 {
  @override
  final String vcsUrl;
  @override
  final InlineObject105VcsEnum vcs;
  @override
  final String vcsUsername;
  @override
  final String vcsPassword;
  @override
  final String tfvcProject;

  factory _$InlineObject105([void Function(InlineObject105Builder) updates]) =>
      (new InlineObject105Builder()..update(updates)).build();

  _$InlineObject105._(
      {this.vcsUrl,
      this.vcs,
      this.vcsUsername,
      this.vcsPassword,
      this.tfvcProject})
      : super._();

  @override
  InlineObject105 rebuild(void Function(InlineObject105Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject105Builder toBuilder() =>
      new InlineObject105Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject105 &&
        vcsUrl == other.vcsUrl &&
        vcs == other.vcs &&
        vcsUsername == other.vcsUsername &&
        vcsPassword == other.vcsPassword &&
        tfvcProject == other.tfvcProject;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, vcsUrl.hashCode), vcs.hashCode),
                vcsUsername.hashCode),
            vcsPassword.hashCode),
        tfvcProject.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject105')
          ..add('vcsUrl', vcsUrl)
          ..add('vcs', vcs)
          ..add('vcsUsername', vcsUsername)
          ..add('vcsPassword', vcsPassword)
          ..add('tfvcProject', tfvcProject))
        .toString();
  }
}

class InlineObject105Builder
    implements Builder<InlineObject105, InlineObject105Builder> {
  _$InlineObject105 _$v;

  String _vcsUrl;
  String get vcsUrl => _$this._vcsUrl;
  set vcsUrl(String vcsUrl) => _$this._vcsUrl = vcsUrl;

  InlineObject105VcsEnum _vcs;
  InlineObject105VcsEnum get vcs => _$this._vcs;
  set vcs(InlineObject105VcsEnum vcs) => _$this._vcs = vcs;

  String _vcsUsername;
  String get vcsUsername => _$this._vcsUsername;
  set vcsUsername(String vcsUsername) => _$this._vcsUsername = vcsUsername;

  String _vcsPassword;
  String get vcsPassword => _$this._vcsPassword;
  set vcsPassword(String vcsPassword) => _$this._vcsPassword = vcsPassword;

  String _tfvcProject;
  String get tfvcProject => _$this._tfvcProject;
  set tfvcProject(String tfvcProject) => _$this._tfvcProject = tfvcProject;

  InlineObject105Builder() {
    InlineObject105._initializeBuilder(this);
  }

  InlineObject105Builder get _$this {
    if (_$v != null) {
      _vcsUrl = _$v.vcsUrl;
      _vcs = _$v.vcs;
      _vcsUsername = _$v.vcsUsername;
      _vcsPassword = _$v.vcsPassword;
      _tfvcProject = _$v.tfvcProject;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject105 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject105;
  }

  @override
  void update(void Function(InlineObject105Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject105 build() {
    final _$result = _$v ??
        new _$InlineObject105._(
            vcsUrl: vcsUrl,
            vcs: vcs,
            vcsUsername: vcsUsername,
            vcsPassword: vcsPassword,
            tfvcProject: tfvcProject);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

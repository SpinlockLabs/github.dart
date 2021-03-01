// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'import_project_choices.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImportProjectChoices> _$importProjectChoicesSerializer =
    new _$ImportProjectChoicesSerializer();

class _$ImportProjectChoicesSerializer
    implements StructuredSerializer<ImportProjectChoices> {
  @override
  final Iterable<Type> types = const [
    ImportProjectChoices,
    _$ImportProjectChoices
  ];
  @override
  final String wireName = 'ImportProjectChoices';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ImportProjectChoices object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.humanName != null) {
      result
        ..add('human_name')
        ..add(serializers.serialize(object.humanName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImportProjectChoices deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImportProjectChoicesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vcs':
          result.vcs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tfvc_project':
          result.tfvcProject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'human_name':
          result.humanName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ImportProjectChoices extends ImportProjectChoices {
  @override
  final String vcs;
  @override
  final String tfvcProject;
  @override
  final String humanName;

  factory _$ImportProjectChoices(
          [void Function(ImportProjectChoicesBuilder) updates]) =>
      (new ImportProjectChoicesBuilder()..update(updates)).build();

  _$ImportProjectChoices._({this.vcs, this.tfvcProject, this.humanName})
      : super._();

  @override
  ImportProjectChoices rebuild(
          void Function(ImportProjectChoicesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportProjectChoicesBuilder toBuilder() =>
      new ImportProjectChoicesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportProjectChoices &&
        vcs == other.vcs &&
        tfvcProject == other.tfvcProject &&
        humanName == other.humanName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, vcs.hashCode), tfvcProject.hashCode), humanName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImportProjectChoices')
          ..add('vcs', vcs)
          ..add('tfvcProject', tfvcProject)
          ..add('humanName', humanName))
        .toString();
  }
}

class ImportProjectChoicesBuilder
    implements Builder<ImportProjectChoices, ImportProjectChoicesBuilder> {
  _$ImportProjectChoices _$v;

  String _vcs;
  String get vcs => _$this._vcs;
  set vcs(String vcs) => _$this._vcs = vcs;

  String _tfvcProject;
  String get tfvcProject => _$this._tfvcProject;
  set tfvcProject(String tfvcProject) => _$this._tfvcProject = tfvcProject;

  String _humanName;
  String get humanName => _$this._humanName;
  set humanName(String humanName) => _$this._humanName = humanName;

  ImportProjectChoicesBuilder() {
    ImportProjectChoices._initializeBuilder(this);
  }

  ImportProjectChoicesBuilder get _$this {
    if (_$v != null) {
      _vcs = _$v.vcs;
      _tfvcProject = _$v.tfvcProject;
      _humanName = _$v.humanName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportProjectChoices other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImportProjectChoices;
  }

  @override
  void update(void Function(ImportProjectChoicesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImportProjectChoices build() {
    final _$result = _$v ??
        new _$ImportProjectChoices._(
            vcs: vcs, tfvcProject: tfvcProject, humanName: humanName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_environments_environment_name_reviewers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers>
    _$reposOwnerRepoEnvironmentsEnvironmentNameReviewersSerializer =
    new _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewersSerializer();

class _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewersSerializer
    implements
        StructuredSerializer<
            ReposOwnerRepoEnvironmentsEnvironmentNameReviewers> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoEnvironmentsEnvironmentNameReviewers,
    _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewers
  ];
  @override
  final String wireName = 'ReposOwnerRepoEnvironmentsEnvironmentNameReviewers';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ReposOwnerRepoEnvironmentsEnvironmentNameReviewers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(DeploymentReviewerType)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ReposOwnerRepoEnvironmentsEnvironmentNameReviewers deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(DeploymentReviewerType))
              as DeploymentReviewerType;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewers
    extends ReposOwnerRepoEnvironmentsEnvironmentNameReviewers {
  @override
  final DeploymentReviewerType type;
  @override
  final int id;

  factory _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewers(
          [void Function(
                  ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder)
              updates]) =>
      (new ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder()
            ..update(updates))
          .build();

  _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewers._({this.type, this.id})
      : super._();

  @override
  ReposOwnerRepoEnvironmentsEnvironmentNameReviewers rebuild(
          void Function(
                  ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder toBuilder() =>
      new ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoEnvironmentsEnvironmentNameReviewers &&
        type == other.type &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ReposOwnerRepoEnvironmentsEnvironmentNameReviewers')
          ..add('type', type)
          ..add('id', id))
        .toString();
  }
}

class ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder
    implements
        Builder<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers,
            ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder> {
  _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewers _$v;

  DeploymentReviewerType _type;
  DeploymentReviewerType get type => _$this._type;
  set type(DeploymentReviewerType type) => _$this._type = type;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder() {
    ReposOwnerRepoEnvironmentsEnvironmentNameReviewers._initializeBuilder(this);
  }

  ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoEnvironmentsEnvironmentNameReviewers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewers;
  }

  @override
  void update(
      void Function(ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewers build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewers._(
            type: type, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

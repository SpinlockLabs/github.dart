// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gist_commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GistCommit> _$gistCommitSerializer = new _$GistCommitSerializer();

class _$GistCommitSerializer implements StructuredSerializer<GistCommit> {
  @override
  final Iterable<Type> types = const [GistCommit, _$GistCommit];
  @override
  final String wireName = 'GistCommit';

  @override
  Iterable<Object> serialize(Serializers serializers, GistCommit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.changeStatus != null) {
      result
        ..add('change_status')
        ..add(serializers.serialize(object.changeStatus,
            specifiedType: const FullType(GistCommitChangeStatus)));
    }
    if (object.committedAt != null) {
      result
        ..add('committed_at')
        ..add(serializers.serialize(object.committedAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  GistCommit deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GistCommitBuilder();

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
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'change_status':
          result.changeStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GistCommitChangeStatus))
              as GistCommitChangeStatus);
          break;
        case 'committed_at':
          result.committedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$GistCommit extends GistCommit {
  @override
  final String url;
  @override
  final String version;
  @override
  final SimpleUser user;
  @override
  final GistCommitChangeStatus changeStatus;
  @override
  final DateTime committedAt;

  factory _$GistCommit([void Function(GistCommitBuilder) updates]) =>
      (new GistCommitBuilder()..update(updates)).build();

  _$GistCommit._(
      {this.url, this.version, this.user, this.changeStatus, this.committedAt})
      : super._();

  @override
  GistCommit rebuild(void Function(GistCommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GistCommitBuilder toBuilder() => new GistCommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GistCommit &&
        url == other.url &&
        version == other.version &&
        user == other.user &&
        changeStatus == other.changeStatus &&
        committedAt == other.committedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, url.hashCode), version.hashCode), user.hashCode),
            changeStatus.hashCode),
        committedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GistCommit')
          ..add('url', url)
          ..add('version', version)
          ..add('user', user)
          ..add('changeStatus', changeStatus)
          ..add('committedAt', committedAt))
        .toString();
  }
}

class GistCommitBuilder implements Builder<GistCommit, GistCommitBuilder> {
  _$GistCommit _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  GistCommitChangeStatusBuilder _changeStatus;
  GistCommitChangeStatusBuilder get changeStatus =>
      _$this._changeStatus ??= new GistCommitChangeStatusBuilder();
  set changeStatus(GistCommitChangeStatusBuilder changeStatus) =>
      _$this._changeStatus = changeStatus;

  DateTime _committedAt;
  DateTime get committedAt => _$this._committedAt;
  set committedAt(DateTime committedAt) => _$this._committedAt = committedAt;

  GistCommitBuilder() {
    GistCommit._initializeBuilder(this);
  }

  GistCommitBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _version = _$v.version;
      _user = _$v.user?.toBuilder();
      _changeStatus = _$v.changeStatus?.toBuilder();
      _committedAt = _$v.committedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GistCommit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GistCommit;
  }

  @override
  void update(void Function(GistCommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GistCommit build() {
    _$GistCommit _$result;
    try {
      _$result = _$v ??
          new _$GistCommit._(
              url: url,
              version: version,
              user: _user?.build(),
              changeStatus: _changeStatus?.build(),
              committedAt: committedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'changeStatus';
        _changeStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GistCommit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

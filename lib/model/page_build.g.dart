// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'page_build.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageBuild> _$pageBuildSerializer = new _$PageBuildSerializer();

class _$PageBuildSerializer implements StructuredSerializer<PageBuild> {
  @override
  final Iterable<Type> types = const [PageBuild, _$PageBuild];
  @override
  final String wireName = 'PageBuild';

  @override
  Iterable<Object> serialize(Serializers serializers, PageBuild object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(PageBuildError)));
    }
    if (object.pusher != null) {
      result
        ..add('pusher')
        ..add(serializers.serialize(object.pusher,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.commit != null) {
      result
        ..add('commit')
        ..add(serializers.serialize(object.commit,
            specifiedType: const FullType(String)));
    }
    if (object.duration != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(object.duration,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  PageBuild deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageBuildBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(PageBuildError)) as PageBuildError);
          break;
        case 'pusher':
          result.pusher.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'commit':
          result.commit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$PageBuild extends PageBuild {
  @override
  final String url;
  @override
  final String status;
  @override
  final PageBuildError error;
  @override
  final SimpleUser pusher;
  @override
  final String commit;
  @override
  final int duration;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$PageBuild([void Function(PageBuildBuilder) updates]) =>
      (new PageBuildBuilder()..update(updates)).build();

  _$PageBuild._(
      {this.url,
      this.status,
      this.error,
      this.pusher,
      this.commit,
      this.duration,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  PageBuild rebuild(void Function(PageBuildBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageBuildBuilder toBuilder() => new PageBuildBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageBuild &&
        url == other.url &&
        status == other.status &&
        error == other.error &&
        pusher == other.pusher &&
        commit == other.commit &&
        duration == other.duration &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, url.hashCode), status.hashCode),
                            error.hashCode),
                        pusher.hashCode),
                    commit.hashCode),
                duration.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageBuild')
          ..add('url', url)
          ..add('status', status)
          ..add('error', error)
          ..add('pusher', pusher)
          ..add('commit', commit)
          ..add('duration', duration)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PageBuildBuilder implements Builder<PageBuild, PageBuildBuilder> {
  _$PageBuild _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  PageBuildErrorBuilder _error;
  PageBuildErrorBuilder get error =>
      _$this._error ??= new PageBuildErrorBuilder();
  set error(PageBuildErrorBuilder error) => _$this._error = error;

  SimpleUserBuilder _pusher;
  SimpleUserBuilder get pusher => _$this._pusher ??= new SimpleUserBuilder();
  set pusher(SimpleUserBuilder pusher) => _$this._pusher = pusher;

  String _commit;
  String get commit => _$this._commit;
  set commit(String commit) => _$this._commit = commit;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  PageBuildBuilder() {
    PageBuild._initializeBuilder(this);
  }

  PageBuildBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _status = _$v.status;
      _error = _$v.error?.toBuilder();
      _pusher = _$v.pusher?.toBuilder();
      _commit = _$v.commit;
      _duration = _$v.duration;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageBuild other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PageBuild;
  }

  @override
  void update(void Function(PageBuildBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageBuild build() {
    _$PageBuild _$result;
    try {
      _$result = _$v ??
          new _$PageBuild._(
              url: url,
              status: status,
              error: _error?.build(),
              pusher: _pusher?.build(),
              commit: commit,
              duration: duration,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
        _$failedField = 'pusher';
        _pusher?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PageBuild', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

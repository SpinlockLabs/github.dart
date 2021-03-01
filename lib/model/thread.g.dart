// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'thread.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Thread> _$threadSerializer = new _$ThreadSerializer();

class _$ThreadSerializer implements StructuredSerializer<Thread> {
  @override
  final Iterable<Type> types = const [Thread, _$Thread];
  @override
  final String wireName = 'Thread';

  @override
  Iterable<Object> serialize(Serializers serializers, Thread object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(MinimalRepository)));
    }
    if (object.subject != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(object.subject,
            specifiedType: const FullType(ThreadSubject)));
    }
    if (object.reason != null) {
      result
        ..add('reason')
        ..add(serializers.serialize(object.reason,
            specifiedType: const FullType(String)));
    }
    if (object.unread != null) {
      result
        ..add('unread')
        ..add(serializers.serialize(object.unread,
            specifiedType: const FullType(bool)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.lastReadAt != null) {
      result
        ..add('last_read_at')
        ..add(serializers.serialize(object.lastReadAt,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.subscriptionUrl != null) {
      result
        ..add('subscription_url')
        ..add(serializers.serialize(object.subscriptionUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Thread deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThreadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MinimalRepository))
              as MinimalRepository);
          break;
        case 'subject':
          result.subject.replace(serializers.deserialize(value,
              specifiedType: const FullType(ThreadSubject)) as ThreadSubject);
          break;
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unread':
          result.unread = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_read_at':
          result.lastReadAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscription_url':
          result.subscriptionUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Thread extends Thread {
  @override
  final String id;
  @override
  final MinimalRepository repository;
  @override
  final ThreadSubject subject;
  @override
  final String reason;
  @override
  final bool unread;
  @override
  final String updatedAt;
  @override
  final String lastReadAt;
  @override
  final String url;
  @override
  final String subscriptionUrl;

  factory _$Thread([void Function(ThreadBuilder) updates]) =>
      (new ThreadBuilder()..update(updates)).build();

  _$Thread._(
      {this.id,
      this.repository,
      this.subject,
      this.reason,
      this.unread,
      this.updatedAt,
      this.lastReadAt,
      this.url,
      this.subscriptionUrl})
      : super._();

  @override
  Thread rebuild(void Function(ThreadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThreadBuilder toBuilder() => new ThreadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Thread &&
        id == other.id &&
        repository == other.repository &&
        subject == other.subject &&
        reason == other.reason &&
        unread == other.unread &&
        updatedAt == other.updatedAt &&
        lastReadAt == other.lastReadAt &&
        url == other.url &&
        subscriptionUrl == other.subscriptionUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), repository.hashCode),
                                subject.hashCode),
                            reason.hashCode),
                        unread.hashCode),
                    updatedAt.hashCode),
                lastReadAt.hashCode),
            url.hashCode),
        subscriptionUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Thread')
          ..add('id', id)
          ..add('repository', repository)
          ..add('subject', subject)
          ..add('reason', reason)
          ..add('unread', unread)
          ..add('updatedAt', updatedAt)
          ..add('lastReadAt', lastReadAt)
          ..add('url', url)
          ..add('subscriptionUrl', subscriptionUrl))
        .toString();
  }
}

class ThreadBuilder implements Builder<Thread, ThreadBuilder> {
  _$Thread _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  MinimalRepositoryBuilder _repository;
  MinimalRepositoryBuilder get repository =>
      _$this._repository ??= new MinimalRepositoryBuilder();
  set repository(MinimalRepositoryBuilder repository) =>
      _$this._repository = repository;

  ThreadSubjectBuilder _subject;
  ThreadSubjectBuilder get subject =>
      _$this._subject ??= new ThreadSubjectBuilder();
  set subject(ThreadSubjectBuilder subject) => _$this._subject = subject;

  String _reason;
  String get reason => _$this._reason;
  set reason(String reason) => _$this._reason = reason;

  bool _unread;
  bool get unread => _$this._unread;
  set unread(bool unread) => _$this._unread = unread;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _lastReadAt;
  String get lastReadAt => _$this._lastReadAt;
  set lastReadAt(String lastReadAt) => _$this._lastReadAt = lastReadAt;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _subscriptionUrl;
  String get subscriptionUrl => _$this._subscriptionUrl;
  set subscriptionUrl(String subscriptionUrl) =>
      _$this._subscriptionUrl = subscriptionUrl;

  ThreadBuilder() {
    Thread._initializeBuilder(this);
  }

  ThreadBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _repository = _$v.repository?.toBuilder();
      _subject = _$v.subject?.toBuilder();
      _reason = _$v.reason;
      _unread = _$v.unread;
      _updatedAt = _$v.updatedAt;
      _lastReadAt = _$v.lastReadAt;
      _url = _$v.url;
      _subscriptionUrl = _$v.subscriptionUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Thread other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Thread;
  }

  @override
  void update(void Function(ThreadBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Thread build() {
    _$Thread _$result;
    try {
      _$result = _$v ??
          new _$Thread._(
              id: id,
              repository: _repository?.build(),
              subject: _subject?.build(),
              reason: reason,
              unread: unread,
              updatedAt: updatedAt,
              lastReadAt: lastReadAt,
              url: url,
              subscriptionUrl: subscriptionUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repository';
        _repository?.build();
        _$failedField = 'subject';
        _subject?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Thread', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

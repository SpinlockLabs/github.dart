// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'thread_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThreadSubscription> _$threadSubscriptionSerializer =
    new _$ThreadSubscriptionSerializer();

class _$ThreadSubscriptionSerializer
    implements StructuredSerializer<ThreadSubscription> {
  @override
  final Iterable<Type> types = const [ThreadSubscription, _$ThreadSubscription];
  @override
  final String wireName = 'ThreadSubscription';

  @override
  Iterable<Object> serialize(Serializers serializers, ThreadSubscription object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.subscribed != null) {
      result
        ..add('subscribed')
        ..add(serializers.serialize(object.subscribed,
            specifiedType: const FullType(bool)));
    }
    if (object.ignored != null) {
      result
        ..add('ignored')
        ..add(serializers.serialize(object.ignored,
            specifiedType: const FullType(bool)));
    }
    if (object.reason != null) {
      result
        ..add('reason')
        ..add(serializers.serialize(object.reason,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.threadUrl != null) {
      result
        ..add('thread_url')
        ..add(serializers.serialize(object.threadUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryUrl != null) {
      result
        ..add('repository_url')
        ..add(serializers.serialize(object.repositoryUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ThreadSubscription deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThreadSubscriptionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'subscribed':
          result.subscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ignored':
          result.ignored = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thread_url':
          result.threadUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository_url':
          result.repositoryUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ThreadSubscription extends ThreadSubscription {
  @override
  final bool subscribed;
  @override
  final bool ignored;
  @override
  final String reason;
  @override
  final DateTime createdAt;
  @override
  final String url;
  @override
  final String threadUrl;
  @override
  final String repositoryUrl;

  factory _$ThreadSubscription(
          [void Function(ThreadSubscriptionBuilder) updates]) =>
      (new ThreadSubscriptionBuilder()..update(updates)).build();

  _$ThreadSubscription._(
      {this.subscribed,
      this.ignored,
      this.reason,
      this.createdAt,
      this.url,
      this.threadUrl,
      this.repositoryUrl})
      : super._();

  @override
  ThreadSubscription rebuild(
          void Function(ThreadSubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThreadSubscriptionBuilder toBuilder() =>
      new ThreadSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThreadSubscription &&
        subscribed == other.subscribed &&
        ignored == other.ignored &&
        reason == other.reason &&
        createdAt == other.createdAt &&
        url == other.url &&
        threadUrl == other.threadUrl &&
        repositoryUrl == other.repositoryUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, subscribed.hashCode), ignored.hashCode),
                        reason.hashCode),
                    createdAt.hashCode),
                url.hashCode),
            threadUrl.hashCode),
        repositoryUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ThreadSubscription')
          ..add('subscribed', subscribed)
          ..add('ignored', ignored)
          ..add('reason', reason)
          ..add('createdAt', createdAt)
          ..add('url', url)
          ..add('threadUrl', threadUrl)
          ..add('repositoryUrl', repositoryUrl))
        .toString();
  }
}

class ThreadSubscriptionBuilder
    implements Builder<ThreadSubscription, ThreadSubscriptionBuilder> {
  _$ThreadSubscription _$v;

  bool _subscribed;
  bool get subscribed => _$this._subscribed;
  set subscribed(bool subscribed) => _$this._subscribed = subscribed;

  bool _ignored;
  bool get ignored => _$this._ignored;
  set ignored(bool ignored) => _$this._ignored = ignored;

  String _reason;
  String get reason => _$this._reason;
  set reason(String reason) => _$this._reason = reason;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _threadUrl;
  String get threadUrl => _$this._threadUrl;
  set threadUrl(String threadUrl) => _$this._threadUrl = threadUrl;

  String _repositoryUrl;
  String get repositoryUrl => _$this._repositoryUrl;
  set repositoryUrl(String repositoryUrl) =>
      _$this._repositoryUrl = repositoryUrl;

  ThreadSubscriptionBuilder() {
    ThreadSubscription._initializeBuilder(this);
  }

  ThreadSubscriptionBuilder get _$this {
    if (_$v != null) {
      _subscribed = _$v.subscribed;
      _ignored = _$v.ignored;
      _reason = _$v.reason;
      _createdAt = _$v.createdAt;
      _url = _$v.url;
      _threadUrl = _$v.threadUrl;
      _repositoryUrl = _$v.repositoryUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThreadSubscription other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ThreadSubscription;
  }

  @override
  void update(void Function(ThreadSubscriptionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ThreadSubscription build() {
    final _$result = _$v ??
        new _$ThreadSubscription._(
            subscribed: subscribed,
            ignored: ignored,
            reason: reason,
            createdAt: createdAt,
            url: url,
            threadUrl: threadUrl,
            repositoryUrl: repositoryUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repository_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositorySubscription> _$repositorySubscriptionSerializer =
    new _$RepositorySubscriptionSerializer();

class _$RepositorySubscriptionSerializer
    implements StructuredSerializer<RepositorySubscription> {
  @override
  final Iterable<Type> types = const [
    RepositorySubscription,
    _$RepositorySubscription
  ];
  @override
  final String wireName = 'RepositorySubscription';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RepositorySubscription object,
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
    if (object.repositoryUrl != null) {
      result
        ..add('repository_url')
        ..add(serializers.serialize(object.repositoryUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RepositorySubscription deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositorySubscriptionBuilder();

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
        case 'repository_url':
          result.repositoryUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RepositorySubscription extends RepositorySubscription {
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
  final String repositoryUrl;

  factory _$RepositorySubscription(
          [void Function(RepositorySubscriptionBuilder) updates]) =>
      (new RepositorySubscriptionBuilder()..update(updates)).build();

  _$RepositorySubscription._(
      {this.subscribed,
      this.ignored,
      this.reason,
      this.createdAt,
      this.url,
      this.repositoryUrl})
      : super._();

  @override
  RepositorySubscription rebuild(
          void Function(RepositorySubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositorySubscriptionBuilder toBuilder() =>
      new RepositorySubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositorySubscription &&
        subscribed == other.subscribed &&
        ignored == other.ignored &&
        reason == other.reason &&
        createdAt == other.createdAt &&
        url == other.url &&
        repositoryUrl == other.repositoryUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, subscribed.hashCode), ignored.hashCode),
                    reason.hashCode),
                createdAt.hashCode),
            url.hashCode),
        repositoryUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositorySubscription')
          ..add('subscribed', subscribed)
          ..add('ignored', ignored)
          ..add('reason', reason)
          ..add('createdAt', createdAt)
          ..add('url', url)
          ..add('repositoryUrl', repositoryUrl))
        .toString();
  }
}

class RepositorySubscriptionBuilder
    implements Builder<RepositorySubscription, RepositorySubscriptionBuilder> {
  _$RepositorySubscription _$v;

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

  String _repositoryUrl;
  String get repositoryUrl => _$this._repositoryUrl;
  set repositoryUrl(String repositoryUrl) =>
      _$this._repositoryUrl = repositoryUrl;

  RepositorySubscriptionBuilder() {
    RepositorySubscription._initializeBuilder(this);
  }

  RepositorySubscriptionBuilder get _$this {
    if (_$v != null) {
      _subscribed = _$v.subscribed;
      _ignored = _$v.ignored;
      _reason = _$v.reason;
      _createdAt = _$v.createdAt;
      _url = _$v.url;
      _repositoryUrl = _$v.repositoryUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositorySubscription other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositorySubscription;
  }

  @override
  void update(void Function(RepositorySubscriptionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositorySubscription build() {
    final _$result = _$v ??
        new _$RepositorySubscription._(
            subscribed: subscribed,
            ignored: ignored,
            reason: reason,
            createdAt: createdAt,
            url: url,
            repositoryUrl: repositoryUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

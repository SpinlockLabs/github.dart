// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_simple_pull_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueSimplePullRequest> _$issueSimplePullRequestSerializer =
    new _$IssueSimplePullRequestSerializer();

class _$IssueSimplePullRequestSerializer
    implements StructuredSerializer<IssueSimplePullRequest> {
  @override
  final Iterable<Type> types = const [
    IssueSimplePullRequest,
    _$IssueSimplePullRequest
  ];
  @override
  final String wireName = 'IssueSimplePullRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, IssueSimplePullRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.mergedAt != null) {
      result
        ..add('merged_at')
        ..add(serializers.serialize(object.mergedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.diffUrl != null) {
      result
        ..add('diff_url')
        ..add(serializers.serialize(object.diffUrl,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.patchUrl != null) {
      result
        ..add('patch_url')
        ..add(serializers.serialize(object.patchUrl,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IssueSimplePullRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueSimplePullRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'merged_at':
          result.mergedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'diff_url':
          result.diffUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'patch_url':
          result.patchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IssueSimplePullRequest extends IssueSimplePullRequest {
  @override
  final DateTime mergedAt;
  @override
  final String diffUrl;
  @override
  final String htmlUrl;
  @override
  final String patchUrl;
  @override
  final String url;

  factory _$IssueSimplePullRequest(
          [void Function(IssueSimplePullRequestBuilder) updates]) =>
      (new IssueSimplePullRequestBuilder()..update(updates)).build();

  _$IssueSimplePullRequest._(
      {this.mergedAt, this.diffUrl, this.htmlUrl, this.patchUrl, this.url})
      : super._();

  @override
  IssueSimplePullRequest rebuild(
          void Function(IssueSimplePullRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueSimplePullRequestBuilder toBuilder() =>
      new IssueSimplePullRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueSimplePullRequest &&
        mergedAt == other.mergedAt &&
        diffUrl == other.diffUrl &&
        htmlUrl == other.htmlUrl &&
        patchUrl == other.patchUrl &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, mergedAt.hashCode), diffUrl.hashCode),
                htmlUrl.hashCode),
            patchUrl.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueSimplePullRequest')
          ..add('mergedAt', mergedAt)
          ..add('diffUrl', diffUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('patchUrl', patchUrl)
          ..add('url', url))
        .toString();
  }
}

class IssueSimplePullRequestBuilder
    implements Builder<IssueSimplePullRequest, IssueSimplePullRequestBuilder> {
  _$IssueSimplePullRequest _$v;

  DateTime _mergedAt;
  DateTime get mergedAt => _$this._mergedAt;
  set mergedAt(DateTime mergedAt) => _$this._mergedAt = mergedAt;

  String _diffUrl;
  String get diffUrl => _$this._diffUrl;
  set diffUrl(String diffUrl) => _$this._diffUrl = diffUrl;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _patchUrl;
  String get patchUrl => _$this._patchUrl;
  set patchUrl(String patchUrl) => _$this._patchUrl = patchUrl;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  IssueSimplePullRequestBuilder() {
    IssueSimplePullRequest._initializeBuilder(this);
  }

  IssueSimplePullRequestBuilder get _$this {
    if (_$v != null) {
      _mergedAt = _$v.mergedAt;
      _diffUrl = _$v.diffUrl;
      _htmlUrl = _$v.htmlUrl;
      _patchUrl = _$v.patchUrl;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueSimplePullRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueSimplePullRequest;
  }

  @override
  void update(void Function(IssueSimplePullRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueSimplePullRequest build() {
    final _$result = _$v ??
        new _$IssueSimplePullRequest._(
            mergedAt: mergedAt,
            diffUrl: diffUrl,
            htmlUrl: htmlUrl,
            patchUrl: patchUrl,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

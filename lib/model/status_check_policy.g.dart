// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'status_check_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatusCheckPolicy> _$statusCheckPolicySerializer =
    new _$StatusCheckPolicySerializer();

class _$StatusCheckPolicySerializer
    implements StructuredSerializer<StatusCheckPolicy> {
  @override
  final Iterable<Type> types = const [StatusCheckPolicy, _$StatusCheckPolicy];
  @override
  final String wireName = 'StatusCheckPolicy';

  @override
  Iterable<Object> serialize(Serializers serializers, StatusCheckPolicy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.strict != null) {
      result
        ..add('strict')
        ..add(serializers.serialize(object.strict,
            specifiedType: const FullType(bool)));
    }
    if (object.contexts != null) {
      result
        ..add('contexts')
        ..add(serializers.serialize(object.contexts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.contextsUrl != null) {
      result
        ..add('contexts_url')
        ..add(serializers.serialize(object.contextsUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StatusCheckPolicy deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatusCheckPolicyBuilder();

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
        case 'strict':
          result.strict = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'contexts':
          result.contexts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'contexts_url':
          result.contextsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StatusCheckPolicy extends StatusCheckPolicy {
  @override
  final String url;
  @override
  final bool strict;
  @override
  final BuiltList<String> contexts;
  @override
  final String contextsUrl;

  factory _$StatusCheckPolicy(
          [void Function(StatusCheckPolicyBuilder) updates]) =>
      (new StatusCheckPolicyBuilder()..update(updates)).build();

  _$StatusCheckPolicy._(
      {this.url, this.strict, this.contexts, this.contextsUrl})
      : super._();

  @override
  StatusCheckPolicy rebuild(void Function(StatusCheckPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusCheckPolicyBuilder toBuilder() =>
      new StatusCheckPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusCheckPolicy &&
        url == other.url &&
        strict == other.strict &&
        contexts == other.contexts &&
        contextsUrl == other.contextsUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, url.hashCode), strict.hashCode), contexts.hashCode),
        contextsUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatusCheckPolicy')
          ..add('url', url)
          ..add('strict', strict)
          ..add('contexts', contexts)
          ..add('contextsUrl', contextsUrl))
        .toString();
  }
}

class StatusCheckPolicyBuilder
    implements Builder<StatusCheckPolicy, StatusCheckPolicyBuilder> {
  _$StatusCheckPolicy _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  bool _strict;
  bool get strict => _$this._strict;
  set strict(bool strict) => _$this._strict = strict;

  ListBuilder<String> _contexts;
  ListBuilder<String> get contexts =>
      _$this._contexts ??= new ListBuilder<String>();
  set contexts(ListBuilder<String> contexts) => _$this._contexts = contexts;

  String _contextsUrl;
  String get contextsUrl => _$this._contextsUrl;
  set contextsUrl(String contextsUrl) => _$this._contextsUrl = contextsUrl;

  StatusCheckPolicyBuilder() {
    StatusCheckPolicy._initializeBuilder(this);
  }

  StatusCheckPolicyBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _strict = _$v.strict;
      _contexts = _$v.contexts?.toBuilder();
      _contextsUrl = _$v.contextsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusCheckPolicy other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StatusCheckPolicy;
  }

  @override
  void update(void Function(StatusCheckPolicyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatusCheckPolicy build() {
    _$StatusCheckPolicy _$result;
    try {
      _$result = _$v ??
          new _$StatusCheckPolicy._(
              url: url,
              strict: strict,
              contexts: _contexts?.build(),
              contextsUrl: contextsUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contexts';
        _contexts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StatusCheckPolicy', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

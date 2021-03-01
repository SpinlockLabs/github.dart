// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_minimal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestMinimal> _$pullRequestMinimalSerializer =
    new _$PullRequestMinimalSerializer();

class _$PullRequestMinimalSerializer
    implements StructuredSerializer<PullRequestMinimal> {
  @override
  final Iterable<Type> types = const [PullRequestMinimal, _$PullRequestMinimal];
  @override
  final String wireName = 'PullRequestMinimal';

  @override
  Iterable<Object> serialize(Serializers serializers, PullRequestMinimal object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.head != null) {
      result
        ..add('head')
        ..add(serializers.serialize(object.head,
            specifiedType: const FullType(PullRequestMinimalHead)));
    }
    if (object.base != null) {
      result
        ..add('base')
        ..add(serializers.serialize(object.base,
            specifiedType: const FullType(PullRequestMinimalHead)));
    }
    return result;
  }

  @override
  PullRequestMinimal deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestMinimalBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'head':
          result.head.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestMinimalHead))
              as PullRequestMinimalHead);
          break;
        case 'base':
          result.base.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestMinimalHead))
              as PullRequestMinimalHead);
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestMinimal extends PullRequestMinimal {
  @override
  final int id;
  @override
  final int number;
  @override
  final String url;
  @override
  final PullRequestMinimalHead head;
  @override
  final PullRequestMinimalHead base;

  factory _$PullRequestMinimal(
          [void Function(PullRequestMinimalBuilder) updates]) =>
      (new PullRequestMinimalBuilder()..update(updates)).build();

  _$PullRequestMinimal._({this.id, this.number, this.url, this.head, this.base})
      : super._();

  @override
  PullRequestMinimal rebuild(
          void Function(PullRequestMinimalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestMinimalBuilder toBuilder() =>
      new PullRequestMinimalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestMinimal &&
        id == other.id &&
        number == other.number &&
        url == other.url &&
        head == other.head &&
        base == other.base;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), number.hashCode), url.hashCode),
            head.hashCode),
        base.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestMinimal')
          ..add('id', id)
          ..add('number', number)
          ..add('url', url)
          ..add('head', head)
          ..add('base', base))
        .toString();
  }
}

class PullRequestMinimalBuilder
    implements Builder<PullRequestMinimal, PullRequestMinimalBuilder> {
  _$PullRequestMinimal _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  PullRequestMinimalHeadBuilder _head;
  PullRequestMinimalHeadBuilder get head =>
      _$this._head ??= new PullRequestMinimalHeadBuilder();
  set head(PullRequestMinimalHeadBuilder head) => _$this._head = head;

  PullRequestMinimalHeadBuilder _base;
  PullRequestMinimalHeadBuilder get base =>
      _$this._base ??= new PullRequestMinimalHeadBuilder();
  set base(PullRequestMinimalHeadBuilder base) => _$this._base = base;

  PullRequestMinimalBuilder() {
    PullRequestMinimal._initializeBuilder(this);
  }

  PullRequestMinimalBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _number = _$v.number;
      _url = _$v.url;
      _head = _$v.head?.toBuilder();
      _base = _$v.base?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestMinimal other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestMinimal;
  }

  @override
  void update(void Function(PullRequestMinimalBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestMinimal build() {
    _$PullRequestMinimal _$result;
    try {
      _$result = _$v ??
          new _$PullRequestMinimal._(
              id: id,
              number: number,
              url: url,
              head: _head?.build(),
              base: _base?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'head';
        _head?.build();
        _$failedField = 'base';
        _base?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestMinimal', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

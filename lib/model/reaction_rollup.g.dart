// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'reaction_rollup.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReactionRollup> _$reactionRollupSerializer =
    new _$ReactionRollupSerializer();

class _$ReactionRollupSerializer
    implements StructuredSerializer<ReactionRollup> {
  @override
  final Iterable<Type> types = const [ReactionRollup, _$ReactionRollup];
  @override
  final String wireName = 'ReactionRollup';

  @override
  Iterable<Object> serialize(Serializers serializers, ReactionRollup object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.plus1 != null) {
      result
        ..add('+1')
        ..add(serializers.serialize(object.plus1,
            specifiedType: const FullType(int)));
    }
    if (object.n1 != null) {
      result
        ..add('-1')
        ..add(serializers.serialize(object.n1,
            specifiedType: const FullType(int)));
    }
    if (object.laugh != null) {
      result
        ..add('laugh')
        ..add(serializers.serialize(object.laugh,
            specifiedType: const FullType(int)));
    }
    if (object.confused != null) {
      result
        ..add('confused')
        ..add(serializers.serialize(object.confused,
            specifiedType: const FullType(int)));
    }
    if (object.heart != null) {
      result
        ..add('heart')
        ..add(serializers.serialize(object.heart,
            specifiedType: const FullType(int)));
    }
    if (object.hooray != null) {
      result
        ..add('hooray')
        ..add(serializers.serialize(object.hooray,
            specifiedType: const FullType(int)));
    }
    if (object.eyes != null) {
      result
        ..add('eyes')
        ..add(serializers.serialize(object.eyes,
            specifiedType: const FullType(int)));
    }
    if (object.rocket != null) {
      result
        ..add('rocket')
        ..add(serializers.serialize(object.rocket,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ReactionRollup deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReactionRollupBuilder();

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
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case '+1':
          result.plus1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case '-1':
          result.n1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'laugh':
          result.laugh = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'confused':
          result.confused = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'heart':
          result.heart = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'hooray':
          result.hooray = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'eyes':
          result.eyes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rocket':
          result.rocket = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReactionRollup extends ReactionRollup {
  @override
  final String url;
  @override
  final int totalCount;
  @override
  final int plus1;
  @override
  final int n1;
  @override
  final int laugh;
  @override
  final int confused;
  @override
  final int heart;
  @override
  final int hooray;
  @override
  final int eyes;
  @override
  final int rocket;

  factory _$ReactionRollup([void Function(ReactionRollupBuilder) updates]) =>
      (new ReactionRollupBuilder()..update(updates)).build();

  _$ReactionRollup._(
      {this.url,
      this.totalCount,
      this.plus1,
      this.n1,
      this.laugh,
      this.confused,
      this.heart,
      this.hooray,
      this.eyes,
      this.rocket})
      : super._();

  @override
  ReactionRollup rebuild(void Function(ReactionRollupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReactionRollupBuilder toBuilder() =>
      new ReactionRollupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReactionRollup &&
        url == other.url &&
        totalCount == other.totalCount &&
        plus1 == other.plus1 &&
        n1 == other.n1 &&
        laugh == other.laugh &&
        confused == other.confused &&
        heart == other.heart &&
        hooray == other.hooray &&
        eyes == other.eyes &&
        rocket == other.rocket;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, url.hashCode),
                                        totalCount.hashCode),
                                    plus1.hashCode),
                                n1.hashCode),
                            laugh.hashCode),
                        confused.hashCode),
                    heart.hashCode),
                hooray.hashCode),
            eyes.hashCode),
        rocket.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReactionRollup')
          ..add('url', url)
          ..add('totalCount', totalCount)
          ..add('plus1', plus1)
          ..add('n1', n1)
          ..add('laugh', laugh)
          ..add('confused', confused)
          ..add('heart', heart)
          ..add('hooray', hooray)
          ..add('eyes', eyes)
          ..add('rocket', rocket))
        .toString();
  }
}

class ReactionRollupBuilder
    implements Builder<ReactionRollup, ReactionRollupBuilder> {
  _$ReactionRollup _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  int _plus1;
  int get plus1 => _$this._plus1;
  set plus1(int plus1) => _$this._plus1 = plus1;

  int _n1;
  int get n1 => _$this._n1;
  set n1(int n1) => _$this._n1 = n1;

  int _laugh;
  int get laugh => _$this._laugh;
  set laugh(int laugh) => _$this._laugh = laugh;

  int _confused;
  int get confused => _$this._confused;
  set confused(int confused) => _$this._confused = confused;

  int _heart;
  int get heart => _$this._heart;
  set heart(int heart) => _$this._heart = heart;

  int _hooray;
  int get hooray => _$this._hooray;
  set hooray(int hooray) => _$this._hooray = hooray;

  int _eyes;
  int get eyes => _$this._eyes;
  set eyes(int eyes) => _$this._eyes = eyes;

  int _rocket;
  int get rocket => _$this._rocket;
  set rocket(int rocket) => _$this._rocket = rocket;

  ReactionRollupBuilder() {
    ReactionRollup._initializeBuilder(this);
  }

  ReactionRollupBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _totalCount = _$v.totalCount;
      _plus1 = _$v.plus1;
      _n1 = _$v.n1;
      _laugh = _$v.laugh;
      _confused = _$v.confused;
      _heart = _$v.heart;
      _hooray = _$v.hooray;
      _eyes = _$v.eyes;
      _rocket = _$v.rocket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReactionRollup other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReactionRollup;
  }

  @override
  void update(void Function(ReactionRollupBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReactionRollup build() {
    final _$result = _$v ??
        new _$ReactionRollup._(
            url: url,
            totalCount: totalCount,
            plus1: plus1,
            n1: n1,
            laugh: laugh,
            confused: confused,
            heart: heart,
            hooray: hooray,
            eyes: eyes,
            rocket: rocket);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

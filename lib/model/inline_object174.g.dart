// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object174.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject174> _$inlineObject174Serializer =
    new _$InlineObject174Serializer();

class _$InlineObject174Serializer
    implements StructuredSerializer<InlineObject174> {
  @override
  final Iterable<Type> types = const [InlineObject174, _$InlineObject174];
  @override
  final String wireName = 'InlineObject174';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject174 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.blog != null) {
      result
        ..add('blog')
        ..add(serializers.serialize(object.blog,
            specifiedType: const FullType(String)));
    }
    if (object.twitterUsername != null) {
      result
        ..add('twitter_username')
        ..add(serializers.serialize(object.twitterUsername,
            specifiedType: const FullType(String)));
    }
    if (object.company != null) {
      result
        ..add('company')
        ..add(serializers.serialize(object.company,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.hireable != null) {
      result
        ..add('hireable')
        ..add(serializers.serialize(object.hireable,
            specifiedType: const FullType(bool)));
    }
    if (object.bio != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(object.bio,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject174 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject174Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'blog':
          result.blog = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'twitter_username':
          result.twitterUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hireable':
          result.hireable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject174 extends InlineObject174 {
  @override
  final String name;
  @override
  final String email;
  @override
  final String blog;
  @override
  final String twitterUsername;
  @override
  final String company;
  @override
  final String location;
  @override
  final bool hireable;
  @override
  final String bio;

  factory _$InlineObject174([void Function(InlineObject174Builder) updates]) =>
      (new InlineObject174Builder()..update(updates)).build();

  _$InlineObject174._(
      {this.name,
      this.email,
      this.blog,
      this.twitterUsername,
      this.company,
      this.location,
      this.hireable,
      this.bio})
      : super._();

  @override
  InlineObject174 rebuild(void Function(InlineObject174Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject174Builder toBuilder() =>
      new InlineObject174Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject174 &&
        name == other.name &&
        email == other.email &&
        blog == other.blog &&
        twitterUsername == other.twitterUsername &&
        company == other.company &&
        location == other.location &&
        hireable == other.hireable &&
        bio == other.bio;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), email.hashCode),
                            blog.hashCode),
                        twitterUsername.hashCode),
                    company.hashCode),
                location.hashCode),
            hireable.hashCode),
        bio.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject174')
          ..add('name', name)
          ..add('email', email)
          ..add('blog', blog)
          ..add('twitterUsername', twitterUsername)
          ..add('company', company)
          ..add('location', location)
          ..add('hireable', hireable)
          ..add('bio', bio))
        .toString();
  }
}

class InlineObject174Builder
    implements Builder<InlineObject174, InlineObject174Builder> {
  _$InlineObject174 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _blog;
  String get blog => _$this._blog;
  set blog(String blog) => _$this._blog = blog;

  String _twitterUsername;
  String get twitterUsername => _$this._twitterUsername;
  set twitterUsername(String twitterUsername) =>
      _$this._twitterUsername = twitterUsername;

  String _company;
  String get company => _$this._company;
  set company(String company) => _$this._company = company;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  bool _hireable;
  bool get hireable => _$this._hireable;
  set hireable(bool hireable) => _$this._hireable = hireable;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  InlineObject174Builder() {
    InlineObject174._initializeBuilder(this);
  }

  InlineObject174Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _blog = _$v.blog;
      _twitterUsername = _$v.twitterUsername;
      _company = _$v.company;
      _location = _$v.location;
      _hireable = _$v.hireable;
      _bio = _$v.bio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject174 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject174;
  }

  @override
  void update(void Function(InlineObject174Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject174 build() {
    final _$result = _$v ??
        new _$InlineObject174._(
            name: name,
            email: email,
            blog: blog,
            twitterUsername: twitterUsername,
            company: company,
            location: location,
            hireable: hireable,
            bio: bio);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

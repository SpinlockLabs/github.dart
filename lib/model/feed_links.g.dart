// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'feed_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedLinks> _$feedLinksSerializer = new _$FeedLinksSerializer();

class _$FeedLinksSerializer implements StructuredSerializer<FeedLinks> {
  @override
  final Iterable<Type> types = const [FeedLinks, _$FeedLinks];
  @override
  final String wireName = 'FeedLinks';

  @override
  Iterable<Object> serialize(Serializers serializers, FeedLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.timeline != null) {
      result
        ..add('timeline')
        ..add(serializers.serialize(object.timeline,
            specifiedType: const FullType(LinkWithType)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(LinkWithType)));
    }
    if (object.securityAdvisories != null) {
      result
        ..add('security_advisories')
        ..add(serializers.serialize(object.securityAdvisories,
            specifiedType: const FullType(LinkWithType)));
    }
    if (object.currentUser != null) {
      result
        ..add('current_user')
        ..add(serializers.serialize(object.currentUser,
            specifiedType: const FullType(LinkWithType)));
    }
    if (object.currentUserPublic != null) {
      result
        ..add('current_user_public')
        ..add(serializers.serialize(object.currentUserPublic,
            specifiedType: const FullType(LinkWithType)));
    }
    if (object.currentUserActor != null) {
      result
        ..add('current_user_actor')
        ..add(serializers.serialize(object.currentUserActor,
            specifiedType: const FullType(LinkWithType)));
    }
    if (object.currentUserOrganization != null) {
      result
        ..add('current_user_organization')
        ..add(serializers.serialize(object.currentUserOrganization,
            specifiedType: const FullType(LinkWithType)));
    }
    if (object.currentUserOrganizations != null) {
      result
        ..add('current_user_organizations')
        ..add(serializers.serialize(object.currentUserOrganizations,
            specifiedType: const FullType(
                BuiltList, const [const FullType(LinkWithType)])));
    }
    return result;
  }

  @override
  FeedLinks deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'timeline':
          result.timeline.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkWithType)) as LinkWithType);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkWithType)) as LinkWithType);
          break;
        case 'security_advisories':
          result.securityAdvisories.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkWithType)) as LinkWithType);
          break;
        case 'current_user':
          result.currentUser.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkWithType)) as LinkWithType);
          break;
        case 'current_user_public':
          result.currentUserPublic.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkWithType)) as LinkWithType);
          break;
        case 'current_user_actor':
          result.currentUserActor.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkWithType)) as LinkWithType);
          break;
        case 'current_user_organization':
          result.currentUserOrganization.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkWithType)) as LinkWithType);
          break;
        case 'current_user_organizations':
          result.currentUserOrganizations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LinkWithType)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$FeedLinks extends FeedLinks {
  @override
  final LinkWithType timeline;
  @override
  final LinkWithType user;
  @override
  final LinkWithType securityAdvisories;
  @override
  final LinkWithType currentUser;
  @override
  final LinkWithType currentUserPublic;
  @override
  final LinkWithType currentUserActor;
  @override
  final LinkWithType currentUserOrganization;
  @override
  final BuiltList<LinkWithType> currentUserOrganizations;

  factory _$FeedLinks([void Function(FeedLinksBuilder) updates]) =>
      (new FeedLinksBuilder()..update(updates)).build();

  _$FeedLinks._(
      {this.timeline,
      this.user,
      this.securityAdvisories,
      this.currentUser,
      this.currentUserPublic,
      this.currentUserActor,
      this.currentUserOrganization,
      this.currentUserOrganizations})
      : super._();

  @override
  FeedLinks rebuild(void Function(FeedLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedLinksBuilder toBuilder() => new FeedLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedLinks &&
        timeline == other.timeline &&
        user == other.user &&
        securityAdvisories == other.securityAdvisories &&
        currentUser == other.currentUser &&
        currentUserPublic == other.currentUserPublic &&
        currentUserActor == other.currentUserActor &&
        currentUserOrganization == other.currentUserOrganization &&
        currentUserOrganizations == other.currentUserOrganizations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, timeline.hashCode), user.hashCode),
                            securityAdvisories.hashCode),
                        currentUser.hashCode),
                    currentUserPublic.hashCode),
                currentUserActor.hashCode),
            currentUserOrganization.hashCode),
        currentUserOrganizations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedLinks')
          ..add('timeline', timeline)
          ..add('user', user)
          ..add('securityAdvisories', securityAdvisories)
          ..add('currentUser', currentUser)
          ..add('currentUserPublic', currentUserPublic)
          ..add('currentUserActor', currentUserActor)
          ..add('currentUserOrganization', currentUserOrganization)
          ..add('currentUserOrganizations', currentUserOrganizations))
        .toString();
  }
}

class FeedLinksBuilder implements Builder<FeedLinks, FeedLinksBuilder> {
  _$FeedLinks _$v;

  LinkWithTypeBuilder _timeline;
  LinkWithTypeBuilder get timeline =>
      _$this._timeline ??= new LinkWithTypeBuilder();
  set timeline(LinkWithTypeBuilder timeline) => _$this._timeline = timeline;

  LinkWithTypeBuilder _user;
  LinkWithTypeBuilder get user => _$this._user ??= new LinkWithTypeBuilder();
  set user(LinkWithTypeBuilder user) => _$this._user = user;

  LinkWithTypeBuilder _securityAdvisories;
  LinkWithTypeBuilder get securityAdvisories =>
      _$this._securityAdvisories ??= new LinkWithTypeBuilder();
  set securityAdvisories(LinkWithTypeBuilder securityAdvisories) =>
      _$this._securityAdvisories = securityAdvisories;

  LinkWithTypeBuilder _currentUser;
  LinkWithTypeBuilder get currentUser =>
      _$this._currentUser ??= new LinkWithTypeBuilder();
  set currentUser(LinkWithTypeBuilder currentUser) =>
      _$this._currentUser = currentUser;

  LinkWithTypeBuilder _currentUserPublic;
  LinkWithTypeBuilder get currentUserPublic =>
      _$this._currentUserPublic ??= new LinkWithTypeBuilder();
  set currentUserPublic(LinkWithTypeBuilder currentUserPublic) =>
      _$this._currentUserPublic = currentUserPublic;

  LinkWithTypeBuilder _currentUserActor;
  LinkWithTypeBuilder get currentUserActor =>
      _$this._currentUserActor ??= new LinkWithTypeBuilder();
  set currentUserActor(LinkWithTypeBuilder currentUserActor) =>
      _$this._currentUserActor = currentUserActor;

  LinkWithTypeBuilder _currentUserOrganization;
  LinkWithTypeBuilder get currentUserOrganization =>
      _$this._currentUserOrganization ??= new LinkWithTypeBuilder();
  set currentUserOrganization(LinkWithTypeBuilder currentUserOrganization) =>
      _$this._currentUserOrganization = currentUserOrganization;

  ListBuilder<LinkWithType> _currentUserOrganizations;
  ListBuilder<LinkWithType> get currentUserOrganizations =>
      _$this._currentUserOrganizations ??= new ListBuilder<LinkWithType>();
  set currentUserOrganizations(
          ListBuilder<LinkWithType> currentUserOrganizations) =>
      _$this._currentUserOrganizations = currentUserOrganizations;

  FeedLinksBuilder() {
    FeedLinks._initializeBuilder(this);
  }

  FeedLinksBuilder get _$this {
    if (_$v != null) {
      _timeline = _$v.timeline?.toBuilder();
      _user = _$v.user?.toBuilder();
      _securityAdvisories = _$v.securityAdvisories?.toBuilder();
      _currentUser = _$v.currentUser?.toBuilder();
      _currentUserPublic = _$v.currentUserPublic?.toBuilder();
      _currentUserActor = _$v.currentUserActor?.toBuilder();
      _currentUserOrganization = _$v.currentUserOrganization?.toBuilder();
      _currentUserOrganizations = _$v.currentUserOrganizations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedLinks;
  }

  @override
  void update(void Function(FeedLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedLinks build() {
    _$FeedLinks _$result;
    try {
      _$result = _$v ??
          new _$FeedLinks._(
              timeline: _timeline?.build(),
              user: _user?.build(),
              securityAdvisories: _securityAdvisories?.build(),
              currentUser: _currentUser?.build(),
              currentUserPublic: _currentUserPublic?.build(),
              currentUserActor: _currentUserActor?.build(),
              currentUserOrganization: _currentUserOrganization?.build(),
              currentUserOrganizations: _currentUserOrganizations?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'timeline';
        _timeline?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'securityAdvisories';
        _securityAdvisories?.build();
        _$failedField = 'currentUser';
        _currentUser?.build();
        _$failedField = 'currentUserPublic';
        _currentUserPublic?.build();
        _$failedField = 'currentUserActor';
        _currentUserActor?.build();
        _$failedField = 'currentUserOrganization';
        _currentUserOrganization?.build();
        _$failedField = 'currentUserOrganizations';
        _currentUserOrganizations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedLinks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object24.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject24DefaultRepositoryPermissionEnum
    _$inlineObject24DefaultRepositoryPermissionEnum_read =
    const InlineObject24DefaultRepositoryPermissionEnum._('read');
const InlineObject24DefaultRepositoryPermissionEnum
    _$inlineObject24DefaultRepositoryPermissionEnum_write =
    const InlineObject24DefaultRepositoryPermissionEnum._('write');
const InlineObject24DefaultRepositoryPermissionEnum
    _$inlineObject24DefaultRepositoryPermissionEnum_admin =
    const InlineObject24DefaultRepositoryPermissionEnum._('admin');
const InlineObject24DefaultRepositoryPermissionEnum
    _$inlineObject24DefaultRepositoryPermissionEnum_none =
    const InlineObject24DefaultRepositoryPermissionEnum._('none');

InlineObject24DefaultRepositoryPermissionEnum
    _$inlineObject24DefaultRepositoryPermissionEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$inlineObject24DefaultRepositoryPermissionEnum_read;
    case 'write':
      return _$inlineObject24DefaultRepositoryPermissionEnum_write;
    case 'admin':
      return _$inlineObject24DefaultRepositoryPermissionEnum_admin;
    case 'none':
      return _$inlineObject24DefaultRepositoryPermissionEnum_none;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject24DefaultRepositoryPermissionEnum>
    _$inlineObject24DefaultRepositoryPermissionEnumValues =
    new BuiltSet<InlineObject24DefaultRepositoryPermissionEnum>(const <
        InlineObject24DefaultRepositoryPermissionEnum>[
  _$inlineObject24DefaultRepositoryPermissionEnum_read,
  _$inlineObject24DefaultRepositoryPermissionEnum_write,
  _$inlineObject24DefaultRepositoryPermissionEnum_admin,
  _$inlineObject24DefaultRepositoryPermissionEnum_none,
]);

const InlineObject24MembersAllowedRepositoryCreationTypeEnum
    _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_all =
    const InlineObject24MembersAllowedRepositoryCreationTypeEnum._('all');
const InlineObject24MembersAllowedRepositoryCreationTypeEnum
    _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_private =
    const InlineObject24MembersAllowedRepositoryCreationTypeEnum._('private');
const InlineObject24MembersAllowedRepositoryCreationTypeEnum
    _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_none =
    const InlineObject24MembersAllowedRepositoryCreationTypeEnum._('none');

InlineObject24MembersAllowedRepositoryCreationTypeEnum
    _$inlineObject24MembersAllowedRepositoryCreationTypeEnumValueOf(
        String name) {
  switch (name) {
    case 'all':
      return _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_all;
    case 'private':
      return _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_private;
    case 'none':
      return _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_none;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject24MembersAllowedRepositoryCreationTypeEnum>
    _$inlineObject24MembersAllowedRepositoryCreationTypeEnumValues =
    new BuiltSet<InlineObject24MembersAllowedRepositoryCreationTypeEnum>(const <
        InlineObject24MembersAllowedRepositoryCreationTypeEnum>[
  _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_all,
  _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_private,
  _$inlineObject24MembersAllowedRepositoryCreationTypeEnum_none,
]);

Serializer<InlineObject24> _$inlineObject24Serializer =
    new _$InlineObject24Serializer();
Serializer<InlineObject24DefaultRepositoryPermissionEnum>
    _$inlineObject24DefaultRepositoryPermissionEnumSerializer =
    new _$InlineObject24DefaultRepositoryPermissionEnumSerializer();
Serializer<InlineObject24MembersAllowedRepositoryCreationTypeEnum>
    _$inlineObject24MembersAllowedRepositoryCreationTypeEnumSerializer =
    new _$InlineObject24MembersAllowedRepositoryCreationTypeEnumSerializer();

class _$InlineObject24Serializer
    implements StructuredSerializer<InlineObject24> {
  @override
  final Iterable<Type> types = const [InlineObject24, _$InlineObject24];
  @override
  final String wireName = 'InlineObject24';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject24 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.billingEmail != null) {
      result
        ..add('billing_email')
        ..add(serializers.serialize(object.billingEmail,
            specifiedType: const FullType(String)));
    }
    if (object.company != null) {
      result
        ..add('company')
        ..add(serializers.serialize(object.company,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.twitterUsername != null) {
      result
        ..add('twitter_username')
        ..add(serializers.serialize(object.twitterUsername,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.hasOrganizationProjects != null) {
      result
        ..add('has_organization_projects')
        ..add(serializers.serialize(object.hasOrganizationProjects,
            specifiedType: const FullType(bool)));
    }
    if (object.hasRepositoryProjects != null) {
      result
        ..add('has_repository_projects')
        ..add(serializers.serialize(object.hasRepositoryProjects,
            specifiedType: const FullType(bool)));
    }
    if (object.defaultRepositoryPermission != null) {
      result
        ..add('default_repository_permission')
        ..add(serializers.serialize(object.defaultRepositoryPermission,
            specifiedType:
                const FullType(InlineObject24DefaultRepositoryPermissionEnum)));
    }
    if (object.membersCanCreateRepositories != null) {
      result
        ..add('members_can_create_repositories')
        ..add(serializers.serialize(object.membersCanCreateRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.membersCanCreateInternalRepositories != null) {
      result
        ..add('members_can_create_internal_repositories')
        ..add(serializers.serialize(object.membersCanCreateInternalRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.membersCanCreatePrivateRepositories != null) {
      result
        ..add('members_can_create_private_repositories')
        ..add(serializers.serialize(object.membersCanCreatePrivateRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.membersCanCreatePublicRepositories != null) {
      result
        ..add('members_can_create_public_repositories')
        ..add(serializers.serialize(object.membersCanCreatePublicRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.membersAllowedRepositoryCreationType != null) {
      result
        ..add('members_allowed_repository_creation_type')
        ..add(serializers.serialize(object.membersAllowedRepositoryCreationType,
            specifiedType: const FullType(
                InlineObject24MembersAllowedRepositoryCreationTypeEnum)));
    }
    if (object.membersCanCreatePages != null) {
      result
        ..add('members_can_create_pages')
        ..add(serializers.serialize(object.membersCanCreatePages,
            specifiedType: const FullType(bool)));
    }
    if (object.membersCanCreatePublicPages != null) {
      result
        ..add('members_can_create_public_pages')
        ..add(serializers.serialize(object.membersCanCreatePublicPages,
            specifiedType: const FullType(bool)));
    }
    if (object.membersCanCreatePrivatePages != null) {
      result
        ..add('members_can_create_private_pages')
        ..add(serializers.serialize(object.membersCanCreatePrivatePages,
            specifiedType: const FullType(bool)));
    }
    if (object.blog != null) {
      result
        ..add('blog')
        ..add(serializers.serialize(object.blog,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject24 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject24Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'billing_email':
          result.billingEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'twitter_username':
          result.twitterUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_organization_projects':
          result.hasOrganizationProjects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_repository_projects':
          result.hasRepositoryProjects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'default_repository_permission':
          result.defaultRepositoryPermission = serializers.deserialize(value,
                  specifiedType: const FullType(
                      InlineObject24DefaultRepositoryPermissionEnum))
              as InlineObject24DefaultRepositoryPermissionEnum;
          break;
        case 'members_can_create_repositories':
          result.membersCanCreateRepositories = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_can_create_internal_repositories':
          result.membersCanCreateInternalRepositories = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_can_create_private_repositories':
          result.membersCanCreatePrivateRepositories = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_can_create_public_repositories':
          result.membersCanCreatePublicRepositories = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_allowed_repository_creation_type':
          result.membersAllowedRepositoryCreationType = serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      InlineObject24MembersAllowedRepositoryCreationTypeEnum))
              as InlineObject24MembersAllowedRepositoryCreationTypeEnum;
          break;
        case 'members_can_create_pages':
          result.membersCanCreatePages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_can_create_public_pages':
          result.membersCanCreatePublicPages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'members_can_create_private_pages':
          result.membersCanCreatePrivatePages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'blog':
          result.blog = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject24DefaultRepositoryPermissionEnumSerializer
    implements
        PrimitiveSerializer<InlineObject24DefaultRepositoryPermissionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InlineObject24DefaultRepositoryPermissionEnum
  ];
  @override
  final String wireName = 'InlineObject24DefaultRepositoryPermissionEnum';

  @override
  Object serialize(Serializers serializers,
          InlineObject24DefaultRepositoryPermissionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject24DefaultRepositoryPermissionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject24DefaultRepositoryPermissionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject24MembersAllowedRepositoryCreationTypeEnumSerializer
    implements
        PrimitiveSerializer<
            InlineObject24MembersAllowedRepositoryCreationTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'private': 'private',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'private': 'private',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InlineObject24MembersAllowedRepositoryCreationTypeEnum
  ];
  @override
  final String wireName =
      'InlineObject24MembersAllowedRepositoryCreationTypeEnum';

  @override
  Object serialize(Serializers serializers,
          InlineObject24MembersAllowedRepositoryCreationTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject24MembersAllowedRepositoryCreationTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject24MembersAllowedRepositoryCreationTypeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject24 extends InlineObject24 {
  @override
  final String billingEmail;
  @override
  final String company;
  @override
  final String email;
  @override
  final String twitterUsername;
  @override
  final String location;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool hasOrganizationProjects;
  @override
  final bool hasRepositoryProjects;
  @override
  final InlineObject24DefaultRepositoryPermissionEnum
      defaultRepositoryPermission;
  @override
  final bool membersCanCreateRepositories;
  @override
  final bool membersCanCreateInternalRepositories;
  @override
  final bool membersCanCreatePrivateRepositories;
  @override
  final bool membersCanCreatePublicRepositories;
  @override
  final InlineObject24MembersAllowedRepositoryCreationTypeEnum
      membersAllowedRepositoryCreationType;
  @override
  final bool membersCanCreatePages;
  @override
  final bool membersCanCreatePublicPages;
  @override
  final bool membersCanCreatePrivatePages;
  @override
  final String blog;

  factory _$InlineObject24([void Function(InlineObject24Builder) updates]) =>
      (new InlineObject24Builder()..update(updates)).build();

  _$InlineObject24._(
      {this.billingEmail,
      this.company,
      this.email,
      this.twitterUsername,
      this.location,
      this.name,
      this.description,
      this.hasOrganizationProjects,
      this.hasRepositoryProjects,
      this.defaultRepositoryPermission,
      this.membersCanCreateRepositories,
      this.membersCanCreateInternalRepositories,
      this.membersCanCreatePrivateRepositories,
      this.membersCanCreatePublicRepositories,
      this.membersAllowedRepositoryCreationType,
      this.membersCanCreatePages,
      this.membersCanCreatePublicPages,
      this.membersCanCreatePrivatePages,
      this.blog})
      : super._();

  @override
  InlineObject24 rebuild(void Function(InlineObject24Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject24Builder toBuilder() =>
      new InlineObject24Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject24 &&
        billingEmail == other.billingEmail &&
        company == other.company &&
        email == other.email &&
        twitterUsername == other.twitterUsername &&
        location == other.location &&
        name == other.name &&
        description == other.description &&
        hasOrganizationProjects == other.hasOrganizationProjects &&
        hasRepositoryProjects == other.hasRepositoryProjects &&
        defaultRepositoryPermission == other.defaultRepositoryPermission &&
        membersCanCreateRepositories == other.membersCanCreateRepositories &&
        membersCanCreateInternalRepositories ==
            other.membersCanCreateInternalRepositories &&
        membersCanCreatePrivateRepositories ==
            other.membersCanCreatePrivateRepositories &&
        membersCanCreatePublicRepositories ==
            other.membersCanCreatePublicRepositories &&
        membersAllowedRepositoryCreationType ==
            other.membersAllowedRepositoryCreationType &&
        membersCanCreatePages == other.membersCanCreatePages &&
        membersCanCreatePublicPages == other.membersCanCreatePublicPages &&
        membersCanCreatePrivatePages == other.membersCanCreatePrivatePages &&
        blog == other.blog;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                billingEmail
                                                                                    .hashCode),
                                                                            company
                                                                                .hashCode),
                                                                        email
                                                                            .hashCode),
                                                                    twitterUsername
                                                                        .hashCode),
                                                                location
                                                                    .hashCode),
                                                            name.hashCode),
                                                        description.hashCode),
                                                    hasOrganizationProjects
                                                        .hashCode),
                                                hasRepositoryProjects.hashCode),
                                            defaultRepositoryPermission
                                                .hashCode),
                                        membersCanCreateRepositories.hashCode),
                                    membersCanCreateInternalRepositories
                                        .hashCode),
                                membersCanCreatePrivateRepositories.hashCode),
                            membersCanCreatePublicRepositories.hashCode),
                        membersAllowedRepositoryCreationType.hashCode),
                    membersCanCreatePages.hashCode),
                membersCanCreatePublicPages.hashCode),
            membersCanCreatePrivatePages.hashCode),
        blog.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject24')
          ..add('billingEmail', billingEmail)
          ..add('company', company)
          ..add('email', email)
          ..add('twitterUsername', twitterUsername)
          ..add('location', location)
          ..add('name', name)
          ..add('description', description)
          ..add('hasOrganizationProjects', hasOrganizationProjects)
          ..add('hasRepositoryProjects', hasRepositoryProjects)
          ..add('defaultRepositoryPermission', defaultRepositoryPermission)
          ..add('membersCanCreateRepositories', membersCanCreateRepositories)
          ..add('membersCanCreateInternalRepositories',
              membersCanCreateInternalRepositories)
          ..add('membersCanCreatePrivateRepositories',
              membersCanCreatePrivateRepositories)
          ..add('membersCanCreatePublicRepositories',
              membersCanCreatePublicRepositories)
          ..add('membersAllowedRepositoryCreationType',
              membersAllowedRepositoryCreationType)
          ..add('membersCanCreatePages', membersCanCreatePages)
          ..add('membersCanCreatePublicPages', membersCanCreatePublicPages)
          ..add('membersCanCreatePrivatePages', membersCanCreatePrivatePages)
          ..add('blog', blog))
        .toString();
  }
}

class InlineObject24Builder
    implements Builder<InlineObject24, InlineObject24Builder> {
  _$InlineObject24 _$v;

  String _billingEmail;
  String get billingEmail => _$this._billingEmail;
  set billingEmail(String billingEmail) => _$this._billingEmail = billingEmail;

  String _company;
  String get company => _$this._company;
  set company(String company) => _$this._company = company;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _twitterUsername;
  String get twitterUsername => _$this._twitterUsername;
  set twitterUsername(String twitterUsername) =>
      _$this._twitterUsername = twitterUsername;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  bool _hasOrganizationProjects;
  bool get hasOrganizationProjects => _$this._hasOrganizationProjects;
  set hasOrganizationProjects(bool hasOrganizationProjects) =>
      _$this._hasOrganizationProjects = hasOrganizationProjects;

  bool _hasRepositoryProjects;
  bool get hasRepositoryProjects => _$this._hasRepositoryProjects;
  set hasRepositoryProjects(bool hasRepositoryProjects) =>
      _$this._hasRepositoryProjects = hasRepositoryProjects;

  InlineObject24DefaultRepositoryPermissionEnum _defaultRepositoryPermission;
  InlineObject24DefaultRepositoryPermissionEnum
      get defaultRepositoryPermission => _$this._defaultRepositoryPermission;
  set defaultRepositoryPermission(
          InlineObject24DefaultRepositoryPermissionEnum
              defaultRepositoryPermission) =>
      _$this._defaultRepositoryPermission = defaultRepositoryPermission;

  bool _membersCanCreateRepositories;
  bool get membersCanCreateRepositories => _$this._membersCanCreateRepositories;
  set membersCanCreateRepositories(bool membersCanCreateRepositories) =>
      _$this._membersCanCreateRepositories = membersCanCreateRepositories;

  bool _membersCanCreateInternalRepositories;
  bool get membersCanCreateInternalRepositories =>
      _$this._membersCanCreateInternalRepositories;
  set membersCanCreateInternalRepositories(
          bool membersCanCreateInternalRepositories) =>
      _$this._membersCanCreateInternalRepositories =
          membersCanCreateInternalRepositories;

  bool _membersCanCreatePrivateRepositories;
  bool get membersCanCreatePrivateRepositories =>
      _$this._membersCanCreatePrivateRepositories;
  set membersCanCreatePrivateRepositories(
          bool membersCanCreatePrivateRepositories) =>
      _$this._membersCanCreatePrivateRepositories =
          membersCanCreatePrivateRepositories;

  bool _membersCanCreatePublicRepositories;
  bool get membersCanCreatePublicRepositories =>
      _$this._membersCanCreatePublicRepositories;
  set membersCanCreatePublicRepositories(
          bool membersCanCreatePublicRepositories) =>
      _$this._membersCanCreatePublicRepositories =
          membersCanCreatePublicRepositories;

  InlineObject24MembersAllowedRepositoryCreationTypeEnum
      _membersAllowedRepositoryCreationType;
  InlineObject24MembersAllowedRepositoryCreationTypeEnum
      get membersAllowedRepositoryCreationType =>
          _$this._membersAllowedRepositoryCreationType;
  set membersAllowedRepositoryCreationType(
          InlineObject24MembersAllowedRepositoryCreationTypeEnum
              membersAllowedRepositoryCreationType) =>
      _$this._membersAllowedRepositoryCreationType =
          membersAllowedRepositoryCreationType;

  bool _membersCanCreatePages;
  bool get membersCanCreatePages => _$this._membersCanCreatePages;
  set membersCanCreatePages(bool membersCanCreatePages) =>
      _$this._membersCanCreatePages = membersCanCreatePages;

  bool _membersCanCreatePublicPages;
  bool get membersCanCreatePublicPages => _$this._membersCanCreatePublicPages;
  set membersCanCreatePublicPages(bool membersCanCreatePublicPages) =>
      _$this._membersCanCreatePublicPages = membersCanCreatePublicPages;

  bool _membersCanCreatePrivatePages;
  bool get membersCanCreatePrivatePages => _$this._membersCanCreatePrivatePages;
  set membersCanCreatePrivatePages(bool membersCanCreatePrivatePages) =>
      _$this._membersCanCreatePrivatePages = membersCanCreatePrivatePages;

  String _blog;
  String get blog => _$this._blog;
  set blog(String blog) => _$this._blog = blog;

  InlineObject24Builder() {
    InlineObject24._initializeBuilder(this);
  }

  InlineObject24Builder get _$this {
    if (_$v != null) {
      _billingEmail = _$v.billingEmail;
      _company = _$v.company;
      _email = _$v.email;
      _twitterUsername = _$v.twitterUsername;
      _location = _$v.location;
      _name = _$v.name;
      _description = _$v.description;
      _hasOrganizationProjects = _$v.hasOrganizationProjects;
      _hasRepositoryProjects = _$v.hasRepositoryProjects;
      _defaultRepositoryPermission = _$v.defaultRepositoryPermission;
      _membersCanCreateRepositories = _$v.membersCanCreateRepositories;
      _membersCanCreateInternalRepositories =
          _$v.membersCanCreateInternalRepositories;
      _membersCanCreatePrivateRepositories =
          _$v.membersCanCreatePrivateRepositories;
      _membersCanCreatePublicRepositories =
          _$v.membersCanCreatePublicRepositories;
      _membersAllowedRepositoryCreationType =
          _$v.membersAllowedRepositoryCreationType;
      _membersCanCreatePages = _$v.membersCanCreatePages;
      _membersCanCreatePublicPages = _$v.membersCanCreatePublicPages;
      _membersCanCreatePrivatePages = _$v.membersCanCreatePrivatePages;
      _blog = _$v.blog;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject24 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject24;
  }

  @override
  void update(void Function(InlineObject24Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject24 build() {
    final _$result = _$v ??
        new _$InlineObject24._(
            billingEmail: billingEmail,
            company: company,
            email: email,
            twitterUsername: twitterUsername,
            location: location,
            name: name,
            description: description,
            hasOrganizationProjects: hasOrganizationProjects,
            hasRepositoryProjects: hasRepositoryProjects,
            defaultRepositoryPermission: defaultRepositoryPermission,
            membersCanCreateRepositories: membersCanCreateRepositories,
            membersCanCreateInternalRepositories:
                membersCanCreateInternalRepositories,
            membersCanCreatePrivateRepositories:
                membersCanCreatePrivateRepositories,
            membersCanCreatePublicRepositories:
                membersCanCreatePublicRepositories,
            membersAllowedRepositoryCreationType:
                membersAllowedRepositoryCreationType,
            membersCanCreatePages: membersCanCreatePages,
            membersCanCreatePublicPages: membersCanCreatePublicPages,
            membersCanCreatePrivatePages: membersCanCreatePrivatePages,
            blog: blog);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: json['id'] as String?,
      type: json['type'] as String?,
      repo: json['repo'] == null
          ? null
          : Repository.fromJson(json['repo'] as Map<String, dynamic>),
      actor: json['actor'] == null
          ? null
          : User.fromJson(json['actor'] as Map<String, dynamic>),
      org: json['org'] == null
          ? null
          : Organization.fromJson(json['org'] as Map<String, dynamic>),
      payload: json['payload'] as Map<String, dynamic>?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'repo': instance.repo,
      'actor': instance.actor,
      'org': instance.org,
      'payload': instance.payload,
      'created_at': instance.createdAt?.toIso8601String(),
    };

RepositorySubscription _$RepositorySubscriptionFromJson(
        Map<String, dynamic> json) =>
    RepositorySubscription(
      subscribed: json['subscribed'] as bool?,
      ignored: json['ignored'] as bool?,
      reason: json['reason'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$RepositorySubscriptionToJson(
        RepositorySubscription instance) =>
    <String, dynamic>{
      'subscribed': instance.subscribed,
      'ignored': instance.ignored,
      'reason': instance.reason,
      'created_at': instance.createdAt?.toIso8601String(),
    };

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      timelineUrl: json['timeline_url'] as String?,
      userUrl: json['user_url'] as String?,
      currentUserPublicUrl: json['current_user_public_url'] as String?,
      currentUserUrl: json['current_user_url'] as String?,
      currentUserActorUrl: json['current_user_actor_url'] as String?,
      currentUserOrganizationUrl:
          json['current_user_organization_url'] as String?,
      currentUserOrganizationUrls:
          (json['current_user_organization_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      securityAdvisoriesUrl: json['security_advisories_url'] as String?,
      links: json['_links'] == null
          ? null
          : FeedLinks.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'timeline_url': instance.timelineUrl,
      'user_url': instance.userUrl,
      'current_user_public_url': instance.currentUserPublicUrl,
      'current_user_url': instance.currentUserUrl,
      'current_user_actor_url': instance.currentUserActorUrl,
      'current_user_organization_url': instance.currentUserOrganizationUrl,
      'current_user_organization_urls': instance.currentUserOrganizationUrls,
      'security_advisories_url': instance.securityAdvisoriesUrl,
      '_links': instance.links,
    };

FeedLinks _$FeedLinksFromJson(Map<String, dynamic> json) => FeedLinks(
      timeline: json['timeline'] == null
          ? null
          : FeedLink.fromJson(json['timeline'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : FeedLink.fromJson(json['user'] as Map<String, dynamic>),
      currentUserPublic: json['current_user_public'] == null
          ? null
          : FeedLink.fromJson(
              json['current_user_public'] as Map<String, dynamic>),
      currentUser: json['current_user'] == null
          ? null
          : FeedLink.fromJson(json['current_user'] as Map<String, dynamic>),
      currentUserActor: json['current_user_actor'] == null
          ? null
          : FeedLink.fromJson(
              json['current_user_actor'] as Map<String, dynamic>),
      currentUserOrganization: json['current_user_organization'] == null
          ? null
          : FeedLink.fromJson(
              json['current_user_organization'] as Map<String, dynamic>),
      currentUserOrganizations:
          (json['current_user_organizations'] as List<dynamic>?)
              ?.map((e) => FeedLink.fromJson(e as Map<String, dynamic>))
              .toList(),
      securityAdvisories: json['security_advisories'] == null
          ? null
          : FeedLink.fromJson(
              json['security_advisories'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedLinksToJson(FeedLinks instance) => <String, dynamic>{
      'timeline': instance.timeline,
      'user': instance.user,
      'current_user_public': instance.currentUserPublic,
      'current_user': instance.currentUser,
      'current_user_actor': instance.currentUserActor,
      'current_user_organization': instance.currentUserOrganization,
      'current_user_organizations': instance.currentUserOrganizations,
      'security_advisories': instance.securityAdvisories,
    };

FeedLink _$FeedLinkFromJson(Map<String, dynamic> json) => FeedLink(
      json['href'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$FeedLinkToJson(FeedLink instance) => <String, dynamic>{
      'href': instance.href,
      'type': instance.type,
    };

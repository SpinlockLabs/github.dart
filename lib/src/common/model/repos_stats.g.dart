// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContributorStatistics _$ContributorStatisticsFromJson(
        Map<String, dynamic> json) =>
    ContributorStatistics(
      json['author'] == null
          ? null
          : User.fromJson(json['author'] as Map<String, dynamic>),
      (json['total'] as num?)?.toInt(),
      (json['weeks'] as List<dynamic>?)
          ?.map((e) =>
              ContributorWeekStatistics.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContributorStatisticsToJson(
        ContributorStatistics instance) =>
    <String, dynamic>{
      'author': instance.author,
      'total': instance.total,
      'weeks': instance.weeks,
    };

ContributorWeekStatistics _$ContributorWeekStatisticsFromJson(
        Map<String, dynamic> json) =>
    ContributorWeekStatistics(
      (json['w'] as num?)?.toInt(),
      (json['a'] as num?)?.toInt(),
      (json['d'] as num?)?.toInt(),
      (json['c'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ContributorWeekStatisticsToJson(
        ContributorWeekStatistics instance) =>
    <String, dynamic>{
      'w': instance.start,
      'a': instance.additions,
      'd': instance.deletions,
      'c': instance.commits,
    };

ContributorParticipation _$ContributorParticipationFromJson(
        Map<String, dynamic> json) =>
    ContributorParticipation(
      all: (json['all'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      owner: (json['owner'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$ContributorParticipationToJson(
        ContributorParticipation instance) =>
    <String, dynamic>{
      'all': instance.all,
      'owner': instance.owner,
    };

YearCommitCountWeek _$YearCommitCountWeekFromJson(Map<String, dynamic> json) =>
    YearCommitCountWeek(
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$YearCommitCountWeekToJson(
        YearCommitCountWeek instance) =>
    <String, dynamic>{
      'days': instance.days,
      'total': instance.total,
      'timestamp': instance.timestamp,
    };

WeeklyChangesCount _$WeeklyChangesCountFromJson(Map<String, dynamic> json) =>
    WeeklyChangesCount(
      timestamp: (json['timestamp'] as num?)?.toInt(),
      additions: (json['additions'] as num?)?.toInt(),
      deletions: (json['deletions'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WeeklyChangesCountToJson(WeeklyChangesCount instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'additions': instance.additions,
      'deletions': instance.deletions,
    };

PunchcardEntry _$PunchcardEntryFromJson(Map<String, dynamic> json) =>
    PunchcardEntry(
      weekday: (json['weekday'] as num?)?.toInt(),
      hour: (json['hour'] as num?)?.toInt(),
      commits: (json['commits'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PunchcardEntryToJson(PunchcardEntry instance) =>
    <String, dynamic>{
      'weekday': instance.weekday,
      'hour': instance.hour,
      'commits': instance.commits,
    };

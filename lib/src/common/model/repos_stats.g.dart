// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContributorStatistics _$ContributorStatisticsFromJson(
    Map<String, dynamic> json) {
  return ContributorStatistics(
    json['author'] == null
        ? null
        : User.fromJson(json['author'] as Map<String, dynamic>),
    json['total'] as int,
    (json['weeks'] as List)
        ?.map((e) => e == null
            ? null
            : ContributorWeekStatistics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ContributorStatisticsToJson(
        ContributorStatistics instance) =>
    <String, dynamic>{
      'author': instance.author,
      'total': instance.total,
      'weeks': instance.weeks,
    };

ContributorWeekStatistics _$ContributorWeekStatisticsFromJson(
    Map<String, dynamic> json) {
  return ContributorWeekStatistics(
    json['w'] as int,
    json['a'] as int,
    json['d'] as int,
    json['c'] as int,
  );
}

Map<String, dynamic> _$ContributorWeekStatisticsToJson(
        ContributorWeekStatistics instance) =>
    <String, dynamic>{
      'w': instance.start,
      'a': instance.additions,
      'd': instance.deletions,
      'c': instance.commits,
    };

ContributorParticipation _$ContributorParticipationFromJson(
    Map<String, dynamic> json) {
  return ContributorParticipation(
    all: (json['all'] as List)?.map((e) => e as int)?.toList(),
    owner: (json['owner'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$ContributorParticipationToJson(
        ContributorParticipation instance) =>
    <String, dynamic>{
      'all': instance.all,
      'owner': instance.owner,
    };

YearCommitCountWeek _$YearCommitCountWeekFromJson(Map<String, dynamic> json) {
  return YearCommitCountWeek(
    days: (json['days'] as List)?.map((e) => e as int)?.toList(),
    total: json['total'] as int,
    timestamp: json['timestamp'] as int,
  );
}

Map<String, dynamic> _$YearCommitCountWeekToJson(
        YearCommitCountWeek instance) =>
    <String, dynamic>{
      'days': instance.days,
      'total': instance.total,
      'timestamp': instance.timestamp,
    };

WeeklyChangesCount _$WeeklyChangesCountFromJson(Map<String, dynamic> json) {
  return WeeklyChangesCount(
    timestamp: json['timestamp'] as int,
    additions: json['additions'] as int,
    deletions: json['deletions'] as int,
  );
}

Map<String, dynamic> _$WeeklyChangesCountToJson(WeeklyChangesCount instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'additions': instance.additions,
      'deletions': instance.deletions,
    };

PunchcardEntry _$PunchcardEntryFromJson(Map<String, dynamic> json) {
  return PunchcardEntry(
    weekday: json['weekday'] as int,
    hour: json['hour'] as int,
    commits: json['commits'] as int,
  );
}

Map<String, dynamic> _$PunchcardEntryToJson(PunchcardEntry instance) =>
    <String, dynamic>{
      'weekday': instance.weekday,
      'hour': instance.hour,
      'commits': instance.commits,
    };

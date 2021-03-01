//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'milestone.g.dart';

abstract class Milestone implements Built<Milestone, MilestoneBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'labels_url')
    String get labelsUrl;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The number of the milestone.
    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    /// The state of the milestone.
    @nullable
    @BuiltValueField(wireName: r'state')
    MilestoneStateEnum get state;
    // enum stateEnum {  open,  closed,  };

    /// The title of the milestone.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'creator')
    SimpleUser get creator;

    @nullable
    @BuiltValueField(wireName: r'open_issues')
    int get openIssues;

    @nullable
    @BuiltValueField(wireName: r'closed_issues')
    int get closedIssues;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'closed_at')
    DateTime get closedAt;

    @nullable
    @BuiltValueField(wireName: r'due_on')
    DateTime get dueOn;

    // Boilerplate code needed to wire-up generated code
    Milestone._();

    static void _initializeBuilder(MilestoneBuilder b) => b
        ..state = const MilestoneStateEnum._('open');

    factory Milestone([void updates(MilestoneBuilder b)]) = _$Milestone;
    static Serializer<Milestone> get serializer => _$milestoneSerializer;
}

class MilestoneStateEnum extends EnumClass {

  /// The state of the milestone.
  @BuiltValueEnumConst(wireName: r'open')
  static const MilestoneStateEnum open = _$milestoneStateEnum_open;
  /// The state of the milestone.
  @BuiltValueEnumConst(wireName: r'closed')
  static const MilestoneStateEnum closed = _$milestoneStateEnum_closed;

  static Serializer<MilestoneStateEnum> get serializer => _$milestoneStateEnumSerializer;

  const MilestoneStateEnum._(String name): super(name);

  static BuiltSet<MilestoneStateEnum> get values => _$milestoneStateEnumValues;
  static MilestoneStateEnum valueOf(String name) => _$milestoneStateEnumValueOf(name);
}


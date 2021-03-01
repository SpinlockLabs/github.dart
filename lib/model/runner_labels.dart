//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runner_labels.g.dart';

abstract class RunnerLabels implements Built<RunnerLabels, RunnerLabelsBuilder> {

    /// Unique identifier of the label.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// Name of the label.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The type of label. Read-only labels are applied automatically when the runner is configured.
    @nullable
    @BuiltValueField(wireName: r'type')
    RunnerLabelsTypeEnum get type;
    // enum typeEnum {  read-only,  custom,  };

    // Boilerplate code needed to wire-up generated code
    RunnerLabels._();

    static void _initializeBuilder(RunnerLabelsBuilder b) => b;

    factory RunnerLabels([void updates(RunnerLabelsBuilder b)]) = _$RunnerLabels;
    static Serializer<RunnerLabels> get serializer => _$runnerLabelsSerializer;
}

class RunnerLabelsTypeEnum extends EnumClass {

  /// The type of label. Read-only labels are applied automatically when the runner is configured.
  @BuiltValueEnumConst(wireName: r'read-only')
  static const RunnerLabelsTypeEnum readOnly = _$runnerLabelsTypeEnum_readOnly;
  /// The type of label. Read-only labels are applied automatically when the runner is configured.
  @BuiltValueEnumConst(wireName: r'custom')
  static const RunnerLabelsTypeEnum custom = _$runnerLabelsTypeEnum_custom;

  static Serializer<RunnerLabelsTypeEnum> get serializer => _$runnerLabelsTypeEnumSerializer;

  const RunnerLabelsTypeEnum._(String name): super(name);

  static BuiltSet<RunnerLabelsTypeEnum> get values => _$runnerLabelsTypeEnumValues;
  static RunnerLabelsTypeEnum valueOf(String name) => _$runnerLabelsTypeEnumValueOf(name);
}


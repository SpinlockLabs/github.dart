//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/import_project_choices.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_import.g.dart';

abstract class ModelImport implements Built<ModelImport, ModelImportBuilder> {

    @nullable
    @BuiltValueField(wireName: r'vcs')
    String get vcs;

    @nullable
    @BuiltValueField(wireName: r'use_lfs')
    String get useLfs;

    /// The URL of the originating repository.
    @nullable
    @BuiltValueField(wireName: r'vcs_url')
    String get vcsUrl;

    @nullable
    @BuiltValueField(wireName: r'svc_root')
    String get svcRoot;

    @nullable
    @BuiltValueField(wireName: r'tfvc_project')
    String get tfvcProject;

    @nullable
    @BuiltValueField(wireName: r'status')
    ModelImportStatusEnum get status;
    // enum statusEnum {  auth,  error,  none,  detecting,  choose,  auth_failed,  importing,  mapping,  waiting_to_push,  pushing,  complete,  setup,  unknown,  detection_found_multiple,  detection_found_nothing,  detection_needs_auth,  };

    @nullable
    @BuiltValueField(wireName: r'status_text')
    String get statusText;

    @nullable
    @BuiltValueField(wireName: r'failed_step')
    String get failedStep;

    @nullable
    @BuiltValueField(wireName: r'error_message')
    String get errorMessage;

    @nullable
    @BuiltValueField(wireName: r'import_percent')
    int get importPercent;

    @nullable
    @BuiltValueField(wireName: r'commit_count')
    int get commitCount;

    @nullable
    @BuiltValueField(wireName: r'push_percent')
    int get pushPercent;

    @nullable
    @BuiltValueField(wireName: r'has_large_files')
    bool get hasLargeFiles;

    @nullable
    @BuiltValueField(wireName: r'large_files_size')
    int get largeFilesSize;

    @nullable
    @BuiltValueField(wireName: r'large_files_count')
    int get largeFilesCount;

    @nullable
    @BuiltValueField(wireName: r'project_choices')
    BuiltList<ImportProjectChoices> get projectChoices;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'authors_count')
    int get authorsCount;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'authors_url')
    String get authorsUrl;

    @nullable
    @BuiltValueField(wireName: r'repository_url')
    String get repositoryUrl;

    @nullable
    @BuiltValueField(wireName: r'svn_root')
    String get svnRoot;

    // Boilerplate code needed to wire-up generated code
    ModelImport._();

    static void _initializeBuilder(ModelImportBuilder b) => b;

    factory ModelImport([void updates(ModelImportBuilder b)]) = _$ModelImport;
    static Serializer<ModelImport> get serializer => _$modelImportSerializer;
}

class ModelImportStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'auth')
  static const ModelImportStatusEnum auth = _$modelImportStatusEnum_auth;
  @BuiltValueEnumConst(wireName: r'error')
  static const ModelImportStatusEnum error = _$modelImportStatusEnum_error;
  @BuiltValueEnumConst(wireName: r'none')
  static const ModelImportStatusEnum none = _$modelImportStatusEnum_none;
  @BuiltValueEnumConst(wireName: r'detecting')
  static const ModelImportStatusEnum detecting = _$modelImportStatusEnum_detecting;
  @BuiltValueEnumConst(wireName: r'choose')
  static const ModelImportStatusEnum choose = _$modelImportStatusEnum_choose;
  @BuiltValueEnumConst(wireName: r'auth_failed')
  static const ModelImportStatusEnum authFailed = _$modelImportStatusEnum_authFailed;
  @BuiltValueEnumConst(wireName: r'importing')
  static const ModelImportStatusEnum importing = _$modelImportStatusEnum_importing;
  @BuiltValueEnumConst(wireName: r'mapping')
  static const ModelImportStatusEnum mapping = _$modelImportStatusEnum_mapping;
  @BuiltValueEnumConst(wireName: r'waiting_to_push')
  static const ModelImportStatusEnum waitingToPush = _$modelImportStatusEnum_waitingToPush;
  @BuiltValueEnumConst(wireName: r'pushing')
  static const ModelImportStatusEnum pushing = _$modelImportStatusEnum_pushing;
  @BuiltValueEnumConst(wireName: r'complete')
  static const ModelImportStatusEnum complete = _$modelImportStatusEnum_complete;
  @BuiltValueEnumConst(wireName: r'setup')
  static const ModelImportStatusEnum setup = _$modelImportStatusEnum_setup;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const ModelImportStatusEnum unknown = _$modelImportStatusEnum_unknown;
  @BuiltValueEnumConst(wireName: r'detection_found_multiple')
  static const ModelImportStatusEnum detectionFoundMultiple = _$modelImportStatusEnum_detectionFoundMultiple;
  @BuiltValueEnumConst(wireName: r'detection_found_nothing')
  static const ModelImportStatusEnum detectionFoundNothing = _$modelImportStatusEnum_detectionFoundNothing;
  @BuiltValueEnumConst(wireName: r'detection_needs_auth')
  static const ModelImportStatusEnum detectionNeedsAuth = _$modelImportStatusEnum_detectionNeedsAuth;

  static Serializer<ModelImportStatusEnum> get serializer => _$modelImportStatusEnumSerializer;

  const ModelImportStatusEnum._(String name): super(name);

  static BuiltSet<ModelImportStatusEnum> get values => _$modelImportStatusEnumValues;
  static ModelImportStatusEnum valueOf(String name) => _$modelImportStatusEnumValueOf(name);
}


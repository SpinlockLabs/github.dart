//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_sarifs_status.g.dart';

abstract class CodeScanningSarifsStatus implements Built<CodeScanningSarifsStatus, CodeScanningSarifsStatusBuilder> {

    /// `pending` files have not yet been processed, while `complete` means all results in the SARIF have been stored.
    @nullable
    @BuiltValueField(wireName: r'processing_status')
    CodeScanningSarifsStatusProcessingStatusEnum get processingStatus;
    // enum processingStatusEnum {  pending,  complete,  };

    /// The REST API URL for getting the analyses associated with the upload.
    @nullable
    @BuiltValueField(wireName: r'analyses_url')
    String get analysesUrl;

    // Boilerplate code needed to wire-up generated code
    CodeScanningSarifsStatus._();

    static void _initializeBuilder(CodeScanningSarifsStatusBuilder b) => b;

    factory CodeScanningSarifsStatus([void updates(CodeScanningSarifsStatusBuilder b)]) = _$CodeScanningSarifsStatus;
    static Serializer<CodeScanningSarifsStatus> get serializer => _$codeScanningSarifsStatusSerializer;
}

class CodeScanningSarifsStatusProcessingStatusEnum extends EnumClass {

  /// `pending` files have not yet been processed, while `complete` means all results in the SARIF have been stored.
  @BuiltValueEnumConst(wireName: r'pending')
  static const CodeScanningSarifsStatusProcessingStatusEnum pending = _$codeScanningSarifsStatusProcessingStatusEnum_pending;
  /// `pending` files have not yet been processed, while `complete` means all results in the SARIF have been stored.
  @BuiltValueEnumConst(wireName: r'complete')
  static const CodeScanningSarifsStatusProcessingStatusEnum complete = _$codeScanningSarifsStatusProcessingStatusEnum_complete;

  static Serializer<CodeScanningSarifsStatusProcessingStatusEnum> get serializer => _$codeScanningSarifsStatusProcessingStatusEnumSerializer;

  const CodeScanningSarifsStatusProcessingStatusEnum._(String name): super(name);

  static BuiltSet<CodeScanningSarifsStatusProcessingStatusEnum> get values => _$codeScanningSarifsStatusProcessingStatusEnumValues;
  static CodeScanningSarifsStatusProcessingStatusEnum valueOf(String name) => _$codeScanningSarifsStatusProcessingStatusEnumValueOf(name);
}


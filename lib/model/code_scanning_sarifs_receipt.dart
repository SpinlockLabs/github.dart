//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_sarifs_receipt.g.dart';

abstract class CodeScanningSarifsReceipt implements Built<CodeScanningSarifsReceipt, CodeScanningSarifsReceiptBuilder> {

    /// An identifier for the upload.
    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    /// The REST API URL for checking the status of the upload.
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    CodeScanningSarifsReceipt._();

    static void _initializeBuilder(CodeScanningSarifsReceiptBuilder b) => b;

    factory CodeScanningSarifsReceipt([void updates(CodeScanningSarifsReceiptBuilder b)]) = _$CodeScanningSarifsReceipt;
    static Serializer<CodeScanningSarifsReceipt> get serializer => _$codeScanningSarifsReceiptSerializer;
}


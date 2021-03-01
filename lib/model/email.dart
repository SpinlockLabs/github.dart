//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email.g.dart';

abstract class Email implements Built<Email, EmailBuilder> {

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'primary')
    bool get primary;

    @nullable
    @BuiltValueField(wireName: r'verified')
    bool get verified;

    @nullable
    @BuiltValueField(wireName: r'visibility')
    String get visibility;

    // Boilerplate code needed to wire-up generated code
    Email._();

    static void _initializeBuilder(EmailBuilder b) => b;

    factory Email([void updates(EmailBuilder b)]) = _$Email;
    static Serializer<Email> get serializer => _$emailSerializer;
}


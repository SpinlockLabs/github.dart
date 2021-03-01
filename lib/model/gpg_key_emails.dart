//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gpg_key_emails.g.dart';

abstract class GpgKeyEmails implements Built<GpgKeyEmails, GpgKeyEmailsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'verified')
    bool get verified;

    // Boilerplate code needed to wire-up generated code
    GpgKeyEmails._();

    static void _initializeBuilder(GpgKeyEmailsBuilder b) => b;

    factory GpgKeyEmails([void updates(GpgKeyEmailsBuilder b)]) = _$GpgKeyEmails;
    static Serializer<GpgKeyEmails> get serializer => _$gpgKeyEmailsSerializer;
}


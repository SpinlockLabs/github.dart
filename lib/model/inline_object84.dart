//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object84.g.dart';

abstract class InlineObject84 implements Built<InlineObject84, InlineObject84Builder> {

    /// The SHA of the commit to which the analysis you are uploading relates.
    @nullable
    @BuiltValueField(wireName: r'commit_sha')
    String get commitSha;

    /// The full Git reference, formatted as `refs/heads/<branch name>`.
    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    /// A Base64 string representing the SARIF file to upload. You must first compress your SARIF file using [`gzip`](http://www.gnu.org/software/gzip/manual/gzip.html) and then translate the contents of the file into a Base64 encoding string. For more information, see \"[SARIF support for code scanning](https://docs.github.com/github/finding-security-vulnerabilities-and-errors-in-your-code/sarif-support-for-code-scanning).\"
    @nullable
    @BuiltValueField(wireName: r'sarif')
    String get sarif;

    /// The base directory used in the analysis, as it appears in the SARIF file. This property is used to convert file paths from absolute to relative, so that alerts can be mapped to their correct location in the repository.
    @nullable
    @BuiltValueField(wireName: r'checkout_uri')
    String get checkoutUri;

    /// The time that the analysis run began. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
    @nullable
    @BuiltValueField(wireName: r'started_at')
    DateTime get startedAt;

    /// The name of the tool used to generate the code scanning analysis. If this parameter is not used, the tool name defaults to \"API\". If the uploaded SARIF contains a tool GUID, this will be available for filtering using the `tool_guid` parameter of operations such as `GET /repos/{owner}/{repo}/code-scanning/alerts`.
    @nullable
    @BuiltValueField(wireName: r'tool_name')
    String get toolName;

    // Boilerplate code needed to wire-up generated code
    InlineObject84._();

    static void _initializeBuilder(InlineObject84Builder b) => b;

    factory InlineObject84([void updates(InlineObject84Builder b)]) = _$InlineObject84;
    static Serializer<InlineObject84> get serializer => _$inlineObject84Serializer;
}


import 'package:github/src/common/model/repos_releases.dart';
import 'package:test/test.dart';

import '../../../assets/responses/create_release.dart';
import '../../../assets/responses/release.dart';
import '../../../assets/responses/release_asset.dart';

void main() {
  group('Release', () {
    test('fromJson', () {
      expect(() => Release.fromJson(releasePayload), returnsNormally);
    });

    test('toJson', () {
      final release = Release.fromJson(releasePayload);
      expect(() => release.toJson(), returnsNormally);
    });
  });

  group('ReleaseAsset', () {
    test('fromJson', () {
      expect(() => ReleaseAsset.fromJson(releaseAssetPayload), returnsNormally);
    });

    test('toJson', () {
      final releaseAsset = ReleaseAsset.fromJson(releaseAssetPayload);
      expect(() => releaseAsset.toJson(), returnsNormally);
    });
  });

  group('CreateRelease', () {
    test('fromJson', () {
      expect(
          () => CreateRelease.fromJson(createReleasePayload), returnsNormally);
    });

    test('toJson', () {
      final createRelease = CreateRelease.fromJson(createReleasePayload);
      expect(() => createRelease.toJson(), returnsNormally);
    });
  });
}

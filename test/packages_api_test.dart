//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for PackagesApi
void main() {
  final instance = PackagesApi();

  group('tests for PackagesApi', () {
    // Delete a package for the authenticated user
    //
    // Deletes a package owned by the authenticated user. You cannot delete a public package if any version of the package has more than 25 downloads. In this scenario, contact GitHub support for further assistance.  To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:delete` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future packagesDeletePackageForAuthenticatedUser(String packageType, String packageName) async
    test('test packagesDeletePackageForAuthenticatedUser', () async {
      // TODO
    });

    // Delete a package for an organization
    //
    // Deletes an entire package in an organization. You cannot delete a public package if any version of the package has more than 25 downloads. In this scenario, contact GitHub support for further assistance.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` scope. In addition: - If `package_type` is not `container`, your token must also include the `repo` scope. - If `package_type` is `container`, you must also have admin permissions to the container you want to delete.
    //
    //Future packagesDeletePackageForOrg(String packageType, String packageName, String org) async
    test('test packagesDeletePackageForOrg', () async {
      // TODO
    });

    // Delete a package version for the authenticated user
    //
    // Deletes a specific package version for a package owned by the authenticated user.  If the package is public and the package version has more than 25 downloads, you cannot delete the package version. In this scenario, contact GitHub support for further assistance.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future packagesDeletePackageVersionForAuthenticatedUser(String packageType, String packageName, int packageVersionId) async
    test('test packagesDeletePackageVersionForAuthenticatedUser', () async {
      // TODO
    });

    // Delete package version for an organization
    //
    // Deletes a specific package version in an organization. If the package is public and the package version has more than 25 downloads, you cannot delete the package version. In this scenario, contact GitHub support for further assistance.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` scope. In addition: - If `package_type` is not `container`, your token must also include the `repo` scope. - If `package_type` is `container`, you must also have admin permissions to the container you want to delete.
    //
    //Future packagesDeletePackageVersionForOrg(String packageType, String packageName, String org, int packageVersionId) async
    test('test packagesDeletePackageVersionForOrg', () async {
      // TODO
    });

    // Get all package versions for a package owned by an organization
    //
    // Returns all package versions for a package owned by an organization.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future<List<PackageVersion>> packagesGetAllPackageVersionsForAPackageOwnedByAnOrg(String packageType, String packageName, String org) async
    test('test packagesGetAllPackageVersionsForAPackageOwnedByAnOrg', () async {
      // TODO
    });

    // Get all package versions for a package owned by the authenticated user
    //
    // Returns all package versions for a package owned by the authenticated user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future<List<PackageVersion>> packagesGetAllPackageVersionsForAPackageOwnedByTheAuthenticatedUser(String packageType, String packageName) async
    test('test packagesGetAllPackageVersionsForAPackageOwnedByTheAuthenticatedUser', () async {
      // TODO
    });

    // Get all package versions for a package owned by a user
    //
    // Returns all package versions for a public package owned by a specified user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future<List<PackageVersion>> packagesGetAllPackageVersionsForPackageOwnedByUser(String packageType, String packageName, String username) async
    test('test packagesGetAllPackageVersionsForPackageOwnedByUser', () async {
      // TODO
    });

    // Get a package for the authenticated user
    //
    // Gets a specific package for a package owned by the authenticated user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future<Package> packagesGetPackageForAuthenticatedUser(String packageType, String packageName) async
    test('test packagesGetPackageForAuthenticatedUser', () async {
      // TODO
    });

    // Get a package for an organization
    //
    // Gets a specific package in an organization.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future<Package> packagesGetPackageForOrganization(String packageType, String packageName, String org) async
    test('test packagesGetPackageForOrganization', () async {
      // TODO
    });

    // Get a package for a user
    //
    // Gets a specific package metadata for a public package owned by a user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future<Package> packagesGetPackageForUser(String packageType, String packageName, String username) async
    test('test packagesGetPackageForUser', () async {
      // TODO
    });

    // Get a package version for the authenticated user
    //
    // Gets a specific package version for a package owned by the authenticated user.  To use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future<PackageVersion> packagesGetPackageVersionForAuthenticatedUser(String packageType, String packageName, int packageVersionId) async
    test('test packagesGetPackageVersionForAuthenticatedUser', () async {
      // TODO
    });

    // Get a package version for an organization
    //
    // Gets a specific package version in an organization.  You must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future<PackageVersion> packagesGetPackageVersionForOrganization(String packageType, String packageName, String org, int packageVersionId) async
    test('test packagesGetPackageVersionForOrganization', () async {
      // TODO
    });

    // Get a package version for a user
    //
    // Gets a specific package version for a public package owned by a specified user.  At this time, to use this endpoint, you must authenticate using an access token with the `packages:read` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future<PackageVersion> packagesGetPackageVersionForUser(String packageType, String packageName, int packageVersionId, String username) async
    test('test packagesGetPackageVersionForUser', () async {
      // TODO
    });

    // Restore a package for the authenticated user
    //
    // Restores a package owned by the authenticated user.  You can restore a deleted package under the following conditions:   - The package was deleted within the last 30 days.   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.  To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:write` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future packagesRestorePackageForAuthenticatedUser(String packageType, String packageName) async
    test('test packagesRestorePackageForAuthenticatedUser', () async {
      // TODO
    });

    // Restore a package for an organization
    //
    // Restores an entire package in an organization.  You can restore a deleted package under the following conditions:   - The package was deleted within the last 30 days.   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` and `packages:write` scope. In addition: - If `package_type` is not `container`, your token must also include the `repo` scope. - If `package_type` is `container`, you must also have admin permissions to the container that you want to restore.
    //
    //Future packagesRestorePackageForOrg(String packageType, String packageName, String org) async
    test('test packagesRestorePackageForOrg', () async {
      // TODO
    });

    // Restore a package version for the authenticated user
    //
    // Restores a package version owned by the authenticated user.  You can restore a deleted package version under the following conditions:   - The package was deleted within the last 30 days.   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.  To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:write` scope. If `package_type` is not `container`, your token must also include the `repo` scope.
    //
    //Future packagesRestorePackageVersionForAuthenticatedUser(String packageType, String packageName, int packageVersionId) async
    test('test packagesRestorePackageVersionForAuthenticatedUser', () async {
      // TODO
    });

    // Restore package version for an organization
    //
    // Restores a specific package version in an organization.  You can restore a deleted package under the following conditions:   - The package was deleted within the last 30 days.   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.  To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` and `packages:write` scope. In addition: - If `package_type` is not `container`, your token must also include the `repo` scope. - If `package_type` is `container`, you must also have admin permissions to the container that you want to restore.
    //
    //Future packagesRestorePackageVersionForOrg(String packageType, String packageName, String org, int packageVersionId) async
    test('test packagesRestorePackageVersionForOrg', () async {
      // TODO
    });

  });
}

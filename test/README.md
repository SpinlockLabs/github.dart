# Integration Tests

The integration tests will run against the live GitHub API. These tests will
verify that the library is properly coded against the actual behavior of the
GitHub API.

To run these tests a GitHub repository and OAuth token will need to be defined
in the `config/config.dart` file.

**Warning:** The test will delete and recreate the specified repository to
start with a clean repo. It is highly recommended that a dedicated test account
is used!

# Integration Tests

The integration tests will run against the live GitHub API. These tests will 
verify that the library is properly coded against the actual behavior of the
GitHub API.

To run these tests a GitHub repository and OAuth token will need to be defined
in the `config/config.dart` file. 

As these tests make modifications it is highly recommended that a dedicated 
test account is used.
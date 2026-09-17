# Integration and Live Tests

## Unit and Contract Tests

All unit tests, contract tests, security tests, and model tests run offline without external dependencies:

```bash
dart test
```

## Safe Live Smoke Tests

Safe read-only smoke tests are located in `test/live/smoke_test.dart`.
These tests only perform safe, non-destructive read operations against public GitHub endpoints:

```bash
GITHUB_LIVE_SMOKE=1 dart test test/live/smoke_test.dart
```

## Destructive Integration Tests

The legacy integration tests run against the live GitHub API with write operations.
To run these tests a GitHub repository and OAuth token will need to be defined
in the `config/config.dart` file.

**Warning:** The test will delete and recreate the specified repository to
start with a clean repo. It is highly recommended that a dedicated test account
is used!

# GitHub for Dart

[![Dart Checks](https://github.com/SpinlockLabs/github.dart/actions/workflows/dart.yml/badge.svg)](https://github.com/SpinlockLabs/github.dart/actions/workflows/dart.yml)
[![Pub](https://img.shields.io/pub/v/github.svg)](https://pub.dev/packages/github)

This is a library for interacting with GitHub in Dart. It works on all platforms including web, server, and Flutter.
Please submit issues and pull requests, help out, or just give encouragement.

**Notice**: This is not an official GitHub project. It is maintained by volunteers.
We are looking for contributors. If you're interested or have questions, head over to discussions https://github.com/SpinlockLabs/github.dart/discussions

## Features

- Works on the Server, Browser, and Flutter
- Really Fast
- Pluggable API
- Supports Authentication
- Builtin OAuth2 Flow
- Hook Server Helper

## Links

- [Library Demos](https://spinlocklabs.github.io/github.dart/) (based on the [sample code](https://github.com/SpinlockLabs/github.dart/tree/master/example))
- [Pub Package](https://pub.dev/packages/github)
- [API Coverage Report](docs/api-coverage.md)
- [Wiki](https://github.com/SpinlockLabs/github.dart/wiki)
- [Latest API reference](https://pub.dev/documentation/github/latest/)

## OpenAPI Conformance and Spec Synchronization

This library tracks the official [GitHub REST API v3 description](https://github.com/github/rest-api-description).
- The OpenAPI specification baseline is pinned in `tool/spec/github-openapi.lock.json`.
- Operation bindings and conformance are tracked in `tool/spec/bindings.yaml`.
- Immutable REST contract metadata is generated into `lib/src/common/generated/rest_contracts.g.dart`.
- Conformance and coverage metrics are documented in `docs/api-coverage.md`.

To check or update the OpenAPI contracts locally:
```bash
# Verify no drift between specification and codebase
dart run tool/spec_sync.dart --check --offline

# Regenerate contracts and documentation
dart run tool/spec_sync.dart --update
```

A weekly GitHub Actions workflow runs the spec sync check and opens review-only PRs when upstream API descriptions evolve.

## Security and Best Practices

- **Credential Boundaries**: Authenticated requests are constrained to the configured API origin (`api.github.com` or custom enterprise endpoint). Cross-origin redirects and pagination links automatically strip credentials. Insecure HTTP authentication is disallowed by default.
- **Webhooks**: Always configure a webhook secret. Webhooks are validated using constant-time HMAC-SHA256 signature verification, enforce configurable payload limits, and support replay attack detection.
- **Browser Authentication**: Token extraction from URL query parameters is disabled by default for security. Tokens should be passed via `Authentication.withToken()` or session storage.

## Examples

See the examples in the example directory to learn how to use some of the features!

## Contacting Us

Post a question or idea: https://github.com/SpinlockLabs/github.dart/discussions

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=SpinlockLabs/github.dart&type=Date)](https://star-history.com/#SpinlockLabs/github.dart&Date)

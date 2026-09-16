---
name: github-api-conformance
overview: Harden github.dart’s transport and webhook surfaces, correct verified REST contract defects, and add a reproducible OpenAPI-based conformance system that continuously raises tested coverage without breaking the current public API. A scheduled workflow will detect upstream specification changes, regenerate deterministic artifacts, run all gates, and open review-only update PRs.
todos:
  - id: secure-boundaries
    content: Add regression tests and fix cross-origin credential leakage, URL shortener behavior, webhook verification/limits, and browser query-token loading.
    status: completed
  - id: spec-baseline
    content: Implement the pinned OpenAPI lock, deterministic normalized operation catalog, bindings manifest, semantic diff, and coverage report.
    status: completed
  - id: typed-transport
    content: Refactor requests into an injectable URI/body/status/error/retry transport while retaining compatibility wrappers.
    status: completed
  - id: repair-services
    content: Generate contract tests for every bound operation and fix all method, path, parameter, body, status, header, pagination, and decoder mismatches.
    status: completed
  - id: schema-models
    content: Correct wire-model defects and incrementally add schema-aware DTOs, required/nullability semantics, forward-compatible enums, and strict analyzer settings.
    status: completed
  - id: test-pyramid
    content: Add transport, service-contract, model, webhook, browser, scenario, and safe live-smoke tests with a coverage ratchet.
    status: completed
  - id: spec-sync-prs
    content: Create the weekly idempotent spec-sync workflow that verifies upstream provenance, regenerates artifacts, classifies changes, validates, and opens review-only PRs.
    status: completed
  - id: ci-release-docs
    content: Pin and minimize Actions permissions, add drift/security/browser gates, harden release credentials, and document compatibility and maintenance workflows.
    status: completed
isProject: false
---

# GitHub REST API Conformance and Quality Plan

> **For agentic workers:** Implement each workstream test-first and review each independently; preserve the current public API unless a security fix requires deprecation.

**Goal:** Make existing github.dart operations demonstrably conform to GitHub REST API v3, harden security and error behavior, improve cross-platform testability, and continuously track the stable GitHub OpenAPI description.

**Architecture:** Use the stable bundled OpenAPI 3.0 artifact for API version `2022-11-28` as a versioned oracle, not as a big-bang replacement for the handwritten API. Generate a compact operation catalog and conformance tests; keep current services as compatibility adapters over a typed, injectable transport. At audit time the upstream artifact was 12,886,008 bytes, described 1,229 operations, and came from `github/rest-api-description` main SHA `022b4dc2d10306c8c583368af92e3296598c6ce3`; the checked-in lock must pin whatever revision is intentionally adopted.

**Source of truth:** [GitHub REST API description](https://github.com/github/rest-api-description), specifically `descriptions/api.github.com/api.github.com.2022-11-28.json`. Do not consume `descriptions-next` because GitHub documents it as the breaking-change OpenAPI 3.1 stream.

## Audit findings to address

### Critical/high security
- [`lib/src/common/github.dart`](lib/src/common/github.dart) accepts any absolute HTTP(S) URL and adds the configured `Authorization` header before sending it. [`lib/src/common/url_shortener_service.dart`](lib/src/common/url_shortener_service.dart) exercises this path against plain-text `http://git.io/`, allowing credential disclosure to another host and over an unencrypted connection. Git.io is outside the REST contract and should be removed/deprecated; authentication must be scoped to trusted origins.
- [`lib/src/server/hooks.dart`](lib/src/server/hooks.dart) binds to `0.0.0.0`, accepts webhook bodies without `X-Hub-Signature-256` verification, has no body-size limit, and does not reliably close the response on malformed JSON/stream errors. This enables spoofed events and resource exhaustion when exposed.
- [`lib/src/browser/xplat_browser.dart`](lib/src/browser/xplat_browser.dart) imports credentials directly from `window.location.href` query parameters. Tokens can persist in history, logs, screenshots, and referrer data; query-string discovery should be disabled by default and deprecated.
- GitHub Actions in [`.github/workflows`](.github/workflows) use mutable major/version tags rather than immutable commit SHAs. [`create_release.yml`](.github/workflows/create_release.yml) also uses a long-lived `RELEASE_TOKEN`; workflows lack a consistent explicit least-privilege permission policy.

### Verified REST-contract defects
- Updates use `POST` where the OpenAPI contract requires `PATCH`: [`UsersService.editCurrentUser`](lib/src/common/users_service.dart), [`PullRequestsService.edit`](lib/src/common/pulls_service.dart), repository update/release update/release-asset update in [`repos_service.dart`](lib/src/common/repos_service.dart), gist update in [`gists_service.dart`](lib/src/common/gists_service.dart), and organization/team update in [`orgs_service.dart`](lib/src/common/orgs_service.dart). The recent issue-comment POST-to-PATCH fix shows this is a systemic class of defect.
- [`GistsService.starGist`](lib/src/common/gists_service.dart) sends `POST`; the contract requires `PUT`.
- [`RepositoriesService.getReleaseAsset`](lib/src/common/repos_service.dart) sends `POST`; the contract requires `GET`.
- [`CheckSuitesService.createCheckSuite`](lib/src/common/checks_service.dart) sends required `head_sha` as a query parameter instead of a JSON request body. `updatePreferencesForCheckSuites` supplies a Dart `Map` body, but [`GitHub.request`](lib/src/common/github.dart) serializes non-byte bodies with `.toString()`, producing invalid JSON.
- [`UsersService.createPublicKey`](lib/src/common/users_service.dart) omits `convert: PublicKey.fromJson` and casts the resulting future, causing a runtime type failure.
- Numerous methods still depend on obsolete `developer.github.com/v3` documentation and preview media types even though the operations are generally available.

### Transport and correctness defects
- [`GitHub.request`](lib/src/common/github.dart) treats every response as successful when callers omit `statusCode`; many service methods therefore attempt to deserialize error payloads as success models. Exact single-status matching also cannot express valid response sets.
- Error handling dereferences a missing `content-type`, maps only a small subset of REST statuses, treats 401 as `AccessForbidden`, omits 403/409/429/503 and secondary-rate-limit semantics, and can replace the original error with parsing/cast failures.
- [`requestJson`](lib/src/common/github.dart) always decodes a JSON body, so empty/204 responses and non-JSON media require inconsistent bypasses.
- [`buildQueryString`](lib/src/common/util/utils.dart) can leave trailing separators, does not encode keys, stringifies lists/enums ad hoc, and appends a second `?` to URLs that already contain a query. Paths and continuation links are string-concatenated rather than built as `Uri` values.
- Pagination in [`pagination.dart`](lib/src/common/util/pagination.dart) retries server errors ten times with a fixed delay, drops the final error by ending the stream, is not cancellation-aware, uses a fragile Link parser, and follows absolute links through the credential-leaking transport.
- Rate-limit waiting uses wall-clock time and uninjectable `Future.delayed`, can receive a negative duration, and does not model primary versus secondary limits or `Retry-After`.
- Assertions enforce request validity in [`checks_service.dart`](lib/src/common/checks_service.dart); production builds can disable them, so invalid payloads can be sent.

### Models and generation
- [`lib/src/common/model/users.dart`](lib/src/common/model/users.dart) models GitHub’s `hireable` field as `hirable` without a `JsonKey`, so it neither reads nor writes the specified field.
- Most generated models make required OpenAPI properties nullable and mutable. Strict casts are disabled in [`analysis_options.yaml`](analysis_options.yaml), increasing runtime failures and hiding type drift.
- [`tool/process_github_schema.dart`](tool/process_github_schema.dart) is not a complete OpenAPI generator: it ignores `$ref`, required properties, enums, formats, additional properties, discriminators, constraints, operation definitions, and general unions; it maps unions to `Object` and cannot safely establish conformance.
- Checked-in `*.g.dart` output has no CI regeneration/diff gate. Only a small fraction of the 26 model files has focused serialization tests, and strict generated casts are brittle when GitHub adds enum values or varies integer representations.

### Tests and maintainability
- The repository has only 16 conventional `*_test.dart` files across transport, services, hooks, and models. Users, pulls, gists, activity, search, OAuth, pagination, and URL-shortener behavior lack adequate focused coverage.
- [`test/scenarios_test.dart`](test/scenarios_test.dart) has 22 scenarios, 21 skipped placeholders, and only one substantive scenario. Default CI does not run the scenario preset.
- [`test/helper/http.dart`](test/helper/http.dart) contains invalid decoded-map casts and calls `jsonDecode` on an already decoded Map/List, making fixture behavior unreliable.
- CI tests VM behavior but not the browser support claimed by [`README.md`](README.md); it has no coverage ratchet, OpenAPI contract gate, generated-code drift check, or dependency vulnerability scan.
- Public models/utilities expose legacy helpers and stale TODOs, while docs and examples do not state supported-operation coverage or compatibility guarantees.

## Implementation workstreams

### 1. Establish a reproducible specification baseline
- Create [`tool/spec/github-openapi.lock.json`](tool/spec/github-openapi.lock.json) containing repository, API calendar version, upstream commit SHA, artifact path, SHA-256, OpenAPI version, and generator schema version. Do not commit the 12.9 MB upstream artifact.
- Add focused code under [`tool/src/openapi`](tool/src/openapi) for download/cache loading, `$ref` resolution, deterministic normalization, semantic diffing, and report rendering; expose it through [`tool/spec_sync.dart`](tool/spec_sync.dart) with `--check`, `--update`, `--offline`, and `--report-json` modes.
- Commit a compact generated catalog at [`lib/src/common/generated/rest_contracts.g.dart`](lib/src/common/generated/rest_contracts.g.dart) containing operation ID, method, URI template, parameter locations, request media types, and successful/error response codes.
- Add [`tool/spec/bindings.yaml`](tool/spec/bindings.yaml), mapping every currently supported public method to an OpenAPI `operationId`; explicit states are `supported`, `partial`, `deprecated`, and `unsupported`. Generate [`docs/api-coverage.md`](docs/api-coverage.md) with per-tag totals, mapped operations, known partials, and drift. Coverage is measured, not inferred from the roughly 150 current request call sites.
- Reject duplicate operation bindings, unknown operation IDs, unpinned downloads, digest mismatches, unresolved references needed by bound operations, and nondeterministic output.

### 2. Fix credential and webhook security first
- Refactor [`GitHub.request`](lib/src/common/github.dart) to send credentials only to the configured API origin and explicitly configured upload origins. Reject insecure HTTP for authenticated requests unless an opt-in enterprise-development policy is supplied; strip auth on cross-origin redirects and pagination links.
- Deprecate/remove [`UrlShortenerService`](lib/src/common/url_shortener_service.dart) and ensure no compatibility shim sends GitHub credentials or uses HTTP.
- Add a webhook configuration/verifier under [`lib/src/server`](lib/src/server) requiring a secret, constant-time HMAC-SHA256 validation, configurable maximum body size, content-type/event/delivery validation, structured 400/401/405/413 responses, and awaitable start/close lifecycle. Add replay-detection hooks without forcing storage policy on consumers.
- Deprecate query-string credential loading in [`xplat_browser.dart`](lib/src/browser/xplat_browser.dart); retain explicit token construction and, if needed, session storage only behind opt-in APIs with warnings.
- Add threat-model regression tests proving tokens are absent on arbitrary URLs, redirects, untrusted Link headers, URL-shortener requests, exception strings, and logs.

### 3. Introduce a typed, injectable transport behind compatibility APIs
- Split request concerns from [`github.dart`](lib/src/common/github.dart) into focused internal units such as [`request.dart`](lib/src/common/transport/request.dart), [`transport.dart`](lib/src/common/transport/transport.dart), [`error_decoder.dart`](lib/src/common/transport/error_decoder.dart), and [`retry_policy.dart`](lib/src/common/transport/retry_policy.dart).
- Define request descriptors with method, URI template/parameters, encoded JSON or bytes body, accepted success statuses, media type, authentication policy, and response decoder. Build URLs with `Uri`, preserving GitHub’s `x-multi-segment` path behavior where the spec marks it.
- Inject `http.Client`, clock, delay/sleeper, retry policy, and randomness. Keep existing `getJSON`/`postJSON`/`request` wrappers, but route them through the new implementation and deprecate unsafe dynamic-body/full-URL forms.
- Replace assertions with runtime `ArgumentError`/domain validation. Add typed errors preserving status, method, URI, request ID, rate-limit metadata, parsed GitHub message/errors, and a safely truncated response body with credentials redacted.
- Retry only idempotent operations by default; honor `Retry-After` and rate-limit headers, use bounded exponential backoff with jitter, propagate the final error, and support cancellation/timeouts.

### 4. Repair all bound service operations against generated contracts
- First land table-driven failing tests for every currently bound service method, then correct HTTP method, path, parameter location/name, required body, content type, success set, pagination shape, and decoder.
- Include all verified defects listed above and run a generated audit over every service in [`lib/src/common`](lib/src/common), not only the known examples. Every service call must reference its generated operation descriptor or be explicitly marked as non-REST/deprecated.
- Replace stale documentation links with URLs derived from operation IDs. Remove obsolete preview headers only when the pinned contract confirms general availability.
- Preserve method signatures where possible. Add deprecations and compatibility adapters where corrected types or behavior would otherwise break callers; collect unavoidable breaking changes for a separately reviewed next-major proposal.

### 5. Make models schema-aware and forward-compatible
- Fix verified wire-name/type defects, beginning with `hireable`, and add golden round-trip tests from official schema examples/fixtures.
- Generate schema metadata and serializers only for bound operations initially. Represent required versus optional versus explicitly nullable distinctly; retain unknown enum values and, where valuable, unknown response fields for forward compatibility.
- Keep hand-authored ergonomic domain classes where they add value, with explicit adapters to generated wire DTOs. Do not replace the complete public model layer in one release.
- Enable `strict-casts`, then `strict-inference`/`strict-raw-types` in staged PRs. Add per-model fixes rather than broad ignores.
- Add a build-runner drift gate and retire or sharply narrow [`process_github_schema.dart`](tool/process_github_schema.dart) after the new parser covers its legitimate use cases.

### 6. Build a contract-driven test pyramid
- Add transport unit tests under [`test/unit/transport`](test/unit/transport) for URI encoding, body formats, headers, status sets, redaction, retries, rate limits, redirects, cancellation, empty bodies, malformed/non-JSON errors, and cross-origin auth.
- Add generated operation contract tests under [`test/contract`](test/contract) that capture each service request and compare it with the pinned descriptor. Generate valid/minimal and edge-case schema fixtures for bound operations; keep deterministic snapshots reviewable.
- Add serialization tests under [`test/unit/common/model`](test/unit/common/model), webhook security tests under [`test/server`](test/server), and browser authentication tests compiled/run on Chrome.
- Repair [`test/helper/http.dart`](test/helper/http.dart). Replace skipped scenario placeholders with executable fixtures in prioritized service batches; keep a small opt-in live smoke suite that never deletes user resources and uses a dedicated repository.
- Measure line/branch coverage, establish the current baseline, require no decrease globally, and set higher floors for new transport/spec-sync code. Avoid arbitrary sleep-based tests by using injected clocks/schedulers.

### 7. Add continuous spec-sync PR automation
- Add [`.github/workflows/spec_sync.yml`](.github/workflows/spec_sync.yml), scheduled weekly and manually dispatchable. It resolves upstream `main`, downloads only the stable bundled artifact, verifies its digest/shape/size limits, and treats all upstream descriptions as untrusted data—never executable templates or commands.
- On no semantic or source-revision change, exit successfully without commits. On change, update the lock, catalog, coverage report, generated tests/models, and a machine-readable semantic diff classifying additions, removals, method/path changes, parameter/body changes, response changes, and schema compatibility risk.
- Run `dart format --output=none --set-exit-if-changed .`, `dart analyze --fatal-infos`, VM and browser tests, contract checks, build-runner drift checks, vulnerability scanning, and `dart pub publish --dry-run` before pushing.
- Maintain one idempotent `automation/github-openapi-2022-11-28` branch/PR. The PR body must include old/new upstream SHAs and digests, categorized API changes, generated-file summary, coverage delta, failing/manual bindings, and reproduction commands. Label breaking/removal/ambiguous changes for mandatory maintainer review; never auto-merge or auto-publish.
- Prefer the repository `GITHUB_TOKEN` with explicit `contents: write` and `pull-requests: write` only if pre-PR validation is sufficient. If required checks must run on the PR head, use a dedicated least-privilege GitHub App; do not introduce a broad PAT or `pull_request_target` execution.

### 8. Harden CI, releases, and documentation
- Update [`dart.yml`](.github/workflows/dart.yml) to include minimum/stable Dart, VM/browser checks, generated/spec drift, coverage ratchet, and dependency/OSV scanning. Give every workflow explicit minimal permissions, pin third-party actions by full commit SHA, and add Dependabot coverage for workflow and Dart dependencies.
- Replace the long-lived release token in [`create_release.yml`](.github/workflows/create_release.yml) with least-privilege `GITHUB_TOKEN`/OIDC-supported flows and gate tags/releases on the same full validation suite.
- Update [`README.md`](README.md), [`CONTRIBUTING.md`](CONTRIBUTING.md), and [`test/README.md`](test/README.md) with the compatibility policy, measured support matrix, local spec-sync commands, fixture/live-test safety, generated-file ownership, security reporting, and automated-PR review procedure.

## Verification and acceptance gates
- A test proves authenticated requests cannot leak credentials to `git.io`, arbitrary absolute URLs, redirects, or untrusted pagination links.
- Signed webhooks succeed; unsigned, invalid, oversized, malformed, and replay-flagged deliveries fail deterministically and close responses.
- Every supported public service method has a unique valid OpenAPI operation binding and a passing request/response contract test; partial operations are visible in the coverage report.
- All known HTTP-method/body-location/decoder defects are reproduced by failing tests before fixes and pass afterward.
- `dart run tool/spec_sync.dart --check --offline` is deterministic and leaves no diff; changing the pinned artifact produces a categorized semantic report.
- Scheduled sync is idempotent, opens or updates one review-only PR, no-ops when unchanged, and cannot publish a package.
- VM, Chrome, analyzer strictness, formatting, generated drift, coverage ratchet, vulnerability scan, and publish dry-run all pass on the minimum supported Dart and stable Dart.

## Delivery sequence
Land separate reviewable PRs in this order: (1) security regressions and fixes, (2) OpenAPI lock/catalog/report tooling, (3) typed transport, (4) service contract repairs by service group, (5) model/serializer migration by bound operation, (6) browser/scenario coverage, (7) spec-sync automation, and (8) release/docs hardening. Each PR must preserve a green compatibility suite and may raise—but never silently lower—the conformance baseline.
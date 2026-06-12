# Contributing

## Setup

Clone the repository. No dependencies to install: the CI job only needs `bash` and `python3`, both standard on the runners.

## Tests

CI runs `bash ci.sh` on every pull request and on pushes to non-main branches. The job is steered per-branch by `ci-plan.json` (`{"sleep": N, "exit": M}`): it sleeps `N` seconds, then exits with code `M`. Reproduce locally with `bash ci.sh`.

## Releases

There are no releases. This repository is a disposable sandbox forge for the delivery-harness E2E lane: branches and pull requests are ephemeral and garbage-collected by the lane; only `main` persists.

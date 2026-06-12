# harness-e2e

Disposable sandbox forge for the delivery-harness E2E lane (`username-workspace/skills` → `tests/e2e/`).
CI behaviour is steered per-branch by `ci-plan.json` ({"sleep": N, "exit": M}). Branches/PRs here are ephemeral and garbage-collected by the lane.

## Troubleshooting

- **The `tests` job fails or hangs unexpectedly** — that is usually the plan, not a bug: `ci.sh` sleeps `sleep` seconds then exits with code `exit`, both read from the `ci-plan.json` committed on the branch under test. Check that file on the branch before debugging anything else.
- **No CI run appears after a push** — the workflow only triggers on pull requests and on pushes to non-`main` branches (`branches-ignore: [main]` in `.github/workflows/ci.yml`). Push a branch or open a PR to get a run.

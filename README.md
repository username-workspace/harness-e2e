# harness-e2e

Disposable sandbox forge for the delivery-harness E2E lane (`username-workspace/skills` → `tests/e2e/`).
CI behaviour is steered per-branch by `ci-plan.json` ({"sleep": N, "exit": M}). Branches/PRs here are ephemeral and garbage-collected by the lane.

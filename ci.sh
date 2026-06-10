#!/usr/bin/env bash
# The scenario under test commits ci-plan.json to steer this job: {"sleep": N, "exit": M}
set -u
sleep "$(python3 -c "import json; print(json.load(open('ci-plan.json')).get('sleep', 0))")"
exit "$(python3 -c "import json; print(json.load(open('ci-plan.json')).get('exit', 0))")"

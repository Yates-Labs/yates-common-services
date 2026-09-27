#!/usr/bin/env bash
set -euo pipefail

# Discover each top-level module folder and convert the list into JSON for a matrix.
MODULE_JSON=$(find . -mindepth 3 -maxdepth 3 -name "go.mod" -printf '%h\n' | sed 's|^\./||' | sort | jq -R . | jq -s -c .)

echo "Found Go Modules: $MODULE_JSON"
echo "modules=$MODULE_JSON" >> "$GITHUB_OUTPUT"
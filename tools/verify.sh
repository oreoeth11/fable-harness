#!/usr/bin/env bash
# Tiered verification entry point — the interface every workflow calls.
# T0: build + lint (fast)   T1: unit tests   T2: integration / on-target
# Stubs MUST fail loud. Never fake a pass: a silent-pass stub makes the
# whole harness pretend verification exists when it doesn't.
set -e
TIER="${1:-T0}"
EVIDENCE_DIR="docs/journal/evidence"
mkdir -p "$EVIDENCE_DIR"

case "$TIER" in
  T0)
    echo "NOT IMPLEMENTED: replace with real build+lint commands" >&2; exit 1
    # Example: make build && make lint
    ;;
  T1)
    echo "NOT IMPLEMENTED: replace with real test command" >&2; exit 1
    # Example: make test 2>&1 | tee "$EVIDENCE_DIR/T1-$(date +%m%d-%H%M).log"
    ;;
  T2)
    echo "NOT IMPLEMENTED: replace with integration/on-target test" >&2; exit 1
    # Firmware example: flock /tmp/board.lock python3 tools/target_smoke.py ...
    ;;
  *)
    echo "usage: tools/verify.sh [T0|T1|T2]" >&2; exit 2
    ;;
esac

#!/bin/bash
set -euo pipefail

PROC_NAME="${1:-}"

if [[ -z "$PROC_NAME" ]]; then
  echo "Usage: $0 <process_name>"
  exit 1
fi

pgrep -f "$PROC_NAME" | while read -r pid; do
  kill "$pid"
done

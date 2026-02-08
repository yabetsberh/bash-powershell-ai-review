#!/bin/bash
set -euo pipefail

LOG_DIR="${1:-}"

if [[ -z "$LOG_DIR" ]]; then
  echo "Usage: $0 <log_directory>"
  exit 1
fi

if [[ ! -d "$LOG_DIR" ]]; then
  echo "Error: Directory does not exist: $LOG_DIR"
  exit 1
fi

find "$LOG_DIR" -type f -name "*.log" -print -delete
echo "Log files deleted safely from $LOG_DIR"

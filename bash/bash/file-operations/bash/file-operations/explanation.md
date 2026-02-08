### What the script does
Deletes `.log` files from a specified directory.

### Issues in the AI-generated script
- Unquoted variables cause word splitting and glob expansion.
- No validation of user input.
- Risk of deleting unintended files.

### Improvements made
- Enabled strict mode (`set -euo pipefail`)
- Validated user input and directory existence
- Used `find` for safe file targeting

### Why this matters for AI training
Demonstrates how unsafe AI assumptions can lead to critical failures.

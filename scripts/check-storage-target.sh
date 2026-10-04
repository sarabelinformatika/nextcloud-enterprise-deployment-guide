#!/usr/bin/env bash
set -u

target="${1:-}"
if [[ -z "$target" || ! -d "$target" ]]; then
  echo "Usage: $0 /mounted/storage/path" >&2
  exit 2
fi

echo "Storage target assessment (read-only): $target"
findmnt -T "$target" 2>/dev/null || true
df -hT "$target"
df -hi "$target"
echo
echo "Newest entries:"
find "$target" -mindepth 1 -maxdepth 2 -printf '%T@ %TY-%Tm-%TdT%TH:%TM:%TS %y %p\n' 2>/dev/null |
  sort -nr | head -n 20
echo
echo "No files were created, modified, or deleted."

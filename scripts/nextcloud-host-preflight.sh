#!/usr/bin/env bash
set -u

echo "Nextcloud host preflight (read-only)"
echo "Timestamp: $(date -Is 2>/dev/null || date)"
echo
echo "== Operating system =="
uname -a
test -r /etc/os-release && sed -n '1,12p' /etc/os-release
echo
echo "== Capacity =="
df -hT
df -hi
echo
echo "== Memory and load =="
free -h 2>/dev/null || true
uptime
echo
echo "== Relevant runtimes =="
for cmd in php nginx apache2 psql mariadb mysql redis-cli; do
  if command -v "$cmd" >/dev/null 2>&1; then
    printf '%-12s ' "$cmd"
    "$cmd" --version 2>&1 | head -n 1
  fi
done
echo
echo "== Listening sockets =="
ss -lntup 2>/dev/null || true
echo
echo "No configuration was changed."
